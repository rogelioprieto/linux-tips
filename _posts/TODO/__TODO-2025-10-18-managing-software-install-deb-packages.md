
About `sudo`

We’ve seen the `sudo` prefix in a couple of commands already, and you may be wondering what that’s about. In Linux, system tasks (like installing software) need elevated administrator permissions. These permissions are often called “root access”, and a user with root access is called a “root user”.

However, it can be dangerous to operate your machine as a root user – since root access gives you full system control the whole time, it allows you to change or delete important system files. It’s very easy to accidentally break your system in root mode!

Instead, we use `sudo` (which is short for `superuser do`). This command is a safety feature that grants regular users _temporary_ (per command) admin privileges to make system changes. It’s still important for us to always understand what a command does before we run it, but using `sudo` means we purposefully limit any potential mistakes to a single command.

<https://documentation.ubuntu.com/server/tutorial/managing-software/#installing-deb-packages>


