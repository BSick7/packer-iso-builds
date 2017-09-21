CoreOS does not currently support ignition on HyperV.
The default credentials do not contain a password or ssh key.

In order to gain access, open the console and escape the boot sequence.
Press `e` on the first entry to edit the grub config.
On the line `linux$`, add ` coreos.autologin` at the very end.
Press `<f10>` to boot.

Resources: 
- https://groups.google.com/forum/#!topic/coreos-user/jhohoUVuelQ
- https://www.vultr.com/docs/boot-into-single-user-mode-reset-root-password