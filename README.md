# asus-x55vd-hackintosh
Everything needed to install El Capitan on ASUS X55VD


## Steps
### Pre-install
1. Follow [this](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/) guide:
  - use [this](https://github.com/krszwsk/asus-x55vd-hackintosh/tree/master/kexts/RehabMan-Voodoo-2016-1208) VoodooPS2Controller
  - and [this](https://github.com/krszwsk/asus-x55vd-hackintosh/tree/master/kexts/RehabMan-FakeSMC-2016-1205) FakeSMC
  - add [this](https://github.com/krszwsk/asus-x55vd-hackintosh/tree/master/kexts/AtherosE2200Ethernet-V2.2.0) Ethernet kext to Clover EFI
  - use [this](https://github.com/krszwsk/asus-x55vd-hackintosh/blob/master/config-basic.plist) config.plist
  - I used the createinstallmedia method for bootable USB

### Post-install
2. After installing Clover on HDD, if laptop does not boot without USB, boot Clover from USB and under `Clover boot options` press `Add boot entries to all partitions`. After that you should be able to boot straight from HDD.
