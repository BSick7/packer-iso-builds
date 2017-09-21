CoreOS does not report IP Addresses to its host hypervisor.
This results in vagrant timing out waiting for an IP Address to target for SSH access.

I worked with Alex Crawford @ https://groups.google.com/forum/#!topic/coreos-user/jhohoUVuelQ

He reported 2 issues for coreos to solve for HyperV support:
- https://github.com/coreos/bugs/issues/2161
- https://github.com/coreos/bugs/issues/2162

I am attempting to manually install Linux Guest Services for HyperV.
- https://www.microsoft.com/en-us/download/details.aspx?id=51612

This download contains `.iso`. In packer, this would be mounted in the hyperv builder as follows:
```
"guest_additions_mode": "attach"
"guest_additions_path": "/path/to/guest.iso"
```

Ideally, `sources` (proposed packer feature) could be used to download the file in preparation.

## Supported Linux

The above Linux Guest Services does not support CoreOS.
The packages appear to target specific Linux distributions and versions.
