# Virtual Machine Converter

* https://www.microsoft.com/en-us/download/details.aspx?id=42497
* Install MSI to location (default: `C:\Program Files\Microsoft Virtual Machine Converter\`)

```
PS> Import-Module "C:\Program Files\Microsoft Virtual Machine Converter\MvmcCmdlet.psd1"
PS> ConvertTo-MvmcVirtualHardDisk -SourceLiteralPath C:\Users\Brad\.vagrant.d\boxes\suse-VAGRANTSLASH-sles12sp1\0.0.1\virtualbox\box-disk1.vmdk -VhdType DynamicHardDisk -VhdFormat vhdx -destination D:\source\BSick7\packer-iso-builds\sles.vhd
```


```
vboxmanage clonehd <source path to vdi file> <destination path of vhd file> -format VHD
```