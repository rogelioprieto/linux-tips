---
title: Guide. Cloning a VM in Virt-Manager to a New Computer
---


This guide explains how to move a KVM/QEMU virtual machine from a source host to a destination host while preserving all hardware configurations.

## Step by step:

To clone and move a complete Virtual Machine (VM) from one computer to another using

**Virtual Machine Manager (virt-manager)**, you must manually transfer both the **disk image** and the **configuration XML file**. 

### 1. Preparation on Source Computer 

Ensure the VM is completely shut down before proceeding. 

-   **Locate the Disk Image:** In `virt-manager`, double-click your VM, go to the **Details** tab, and select **Storage**. Note the "Source path" (typically a `.qcow2` file located in `/var/lib/libvirt/images/`).
-   **Export the Configuration:** Use the `virsh` command-line tool to save the hardware settings into an XML file:
    
    bash
    
    ```
    virsh dumpxml <VM_NAME> > my_vm_config.xml
    ```

### 2. Transfer Files 

Copy the `.qcow2` disk image and the `my_vm_config.xml` file to the new computer via a USB drive, `cp`, `scp`, or `rsync`.You can use `cp` command with --sparse parameter. `qcow2` files are "sparse," meaning they only take up as much space as the data inside them. Using the `--sparse=always` flag ensures the copy doesn't accidentally expand to its full virtual size.
```bash
cp --sparse=always source_image.qcow2 destination_image.qcow2
```
or using rsync showing a progress info
```bash
  rsync -ah --sparse --progress source.qcow2 path-to-destination`
```
  - **UEFI Note:** If your VM uses **UEFI**, you should also copy the NVRAM file (usually found in `/var/lib/libvirt/qemu/nvram/`) to ensure it boots correctly on the new host. 

### 3. Setup on Destination Computer 

1.  **Place the Disk Image:** Move the copied `.qcow2` file to the images directory (e.g., `/var/lib/libvirt/images/`) on the new machine.
2.  **Edit the XML (If Necessary):** If the storage path or network bridge names differ on the new computer, open `my_vm_config.xml` in a text editor and update the `<source file='...'/>` or `<interface type='bridge'>` tags accordingly.  Follow these steps, to **fix network issues** after moving your VM, you usually need to address the fact that the host's network bridge or interface names might differ from the original computer.
  a. Identify the Host Network.  On the **new computer**, check the name of the active network bridge (usually `virbr0` for NAT) or your physical interface:
   
    ```bash
    ip link show
    ```

  b. Edit the VM XML for Network Compatibility. Before running `virsh define`, open your `vm_config.xml` file: 
    ```bash
    nano vm_config.xml
    ```
  Look for the `<interface>` section and apply one of these fixes: 

  **Scenario A:** Using the Default NAT (Most Common) 

  If you want to use the standard "Default" network in `virt-manager`, ensure the XML looks like this: 

  ```xml
  <interface type='network'>
    <source network='default'/>
    <model type='virtio'/>
  </interface>
  ```

  **Scenario B:** Using a Specific Bridge 

  If you use a custom bridge, update the bridge name to match the new host: 

  ```xml
  <interface type='bridge'>
    <source bridge='nm-bridge'/> <!-- Change this to your actual bridge name -->
    <model type='virtio'/>
  </interface>
  ```

  

  c. Prevent MAC Address Conflicts. If both the old and new computers will be on the same network, **delete** the following line inside the `<interface>` section:
   
    ```xml
    <mac address='52:54:00:xx:xx:xx'/>
    ```
 
  _When you run `virsh define`, libvirt will automatically generate a unique MAC address for the new host._ 

  d. Fix "Network 'default' is not active". If you get an error saying the network is not active on the new machine, run: 

  ```bash
  sudo virsh net-start default
  sudo virsh net-autostart default
  ```
  

  e. Clear ARP Cache (If VM starts but has no internet).  Sometimes the guest OS remembers the old gateway. Inside the **Guest VM**, restart the networking service or simply run: 

  ```bash
  # Inside Linux Guest
  sudo systemctl restart networking
  # Inside Windows Guest
  ipconfig /release && ipconfig /renew
  ```








3.  **Define the VM:** Import the configuration into the local `libvirt` system:
    
  ```bash
  virsh define my_vm_config.xml
  ```
4.  **Start the VM:** The VM will now appear in your `virt-manager` list. You can start it from the GUI or by running `virsh start <VM_NAME>`.

### _(optional)_ Local Cloning (Same Computer) 

If you only need a copy on the **same machine**, right-click the VM in `virt-manager` and select **Clone**. This automatically handles disk duplication and generates new MAC addresses. 

Do you need help **editing the XML file** to match your new computer's network interface names?


## Source:  
- Google search & AI
