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
3. Paste [this](https://github.com/krszwsk/asus-x55vd-hackintosh/blob/master/working%20dsdt%20ssdt/DSDT.aml) DSDT to `EFI/Clover/ACPI/patched` in your `EFI` partition
4. Using [Kext Wizard](https://github.com/krszwsk/asus-x55vd-hackintosh/tree/master/apps/Kext%20Wizard.app/) install [this](https://github.com/krszwsk/asus-x55vd-hackintosh/tree/master/kexts/ACPIBacklight.kext/) and [this](https://github.com/krszwsk/asus-x55vd-hackintosh/tree/master/kexts/ApplePS2ElanTouchpad.kext/) kext
5. Execute [this](https://github.com/krszwsk/asus-x55vd-hackintosh/blob/master/other/graphics_intel_hd3k-snb-a-90_patch.command)
6. Reboot (use verbose option to have a look at a boot process)
7. I personally used VoodooHDA, I know it limits audio capabilities and proper AppleHDA patch should be used for optimal performance, but VoodooHDA is sufficient for me. Audio works from speakers and headphones, although I need to manually switch between them in sys prefs. So you can either install [this](https://github.com/krszwsk/asus-x55vd-hackintosh/blob/master/kexts/VoodooHDA-2.8.8.pkg) or do it the hard (but better) way

At this point you should have
- Intel graphics
- brightness control (no function keys though)
- HDMI out (probably without audio if VoodooHDA was used)
- touchpad with basic gestures
- keyboard
- USB
- audio
working. I found a cheap AR5B95 wifi card and installed [this](https://github.com/krszwsk/asus-x55vd-hackintosh/tree/master/kexts/toledaARPT.kext/) kext. I wasn't able to find anyone who got the stock one to work, every source indicates that it's not going to. There is a possibility to USB tether from an android or iPhone. You need to install [this](https://github.com/krszwsk/asus-x55vd-hackintosh/blob/master/kexts/HoRNDIS-rel8.pkg), execute [this](https://github.com/krszwsk/asus-x55vd-hackintosh/blob/master/other/enable_tethering.sh) and reboot.
