# packer-iso-builds

## Hyper-V Issues

If you attempt to launch a hyperv-iso packer build using an `Internal` HyperV Virtual Switch,
connectivity to the internet or `http` directory will not work.

To make it work, share external connection with other network interfaces.
Additionally, create an `External` HyperV Virtual Switch named `packer-hyperv-iso`.

