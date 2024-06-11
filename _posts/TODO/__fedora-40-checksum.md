Verify with CHECKSUM files
If your download comes with a CHECKSUM file, follow these easy steps to verify your image for both security and integrity.

1. Download the [checksum file](https://download.fedoraproject.org/pub/fedora/linux/releases/40/Workstation/x86_64/iso/Fedora-Workstation-40-1.14-x86_64-CHECKSUM)  into the same directory as the image you downloaded.

<https://download.fedoraproject.org/pub/fedora/linux/releases/40/Workstation/x86_64/iso/Fedora-Workstation-40-1.14-x86_64-CHECKSUM>

2. Import Fedora's GPG key(s)

```bash
curl -O https://fedoraproject.org/fedora.gpg
```

3. List Fedora's GPG key(s)

```bash
gpg --with-fingerprint --show-keys --keyid-format long fedora.gpg
```

4. You can verify the details of the GPG key(s) below.

Verify the CHECKSUM file is valid

```bash
for checksum in *-CHECKSUM; do gpgv --keyring ./fedora.gpg "$checksum"; done
```

5. Verify the checksum matches

```bash
sha256sum -c *-CHECKSUM
```

If the output states that the file is valid, then it's ready to use!
