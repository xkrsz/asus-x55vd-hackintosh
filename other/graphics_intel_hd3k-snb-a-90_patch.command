#!/bin/sh
# Maintained by: toleda for: github.com/toleda/graphics_Intel_framebuffers
# File: graphics_intel_hd3k_snb-a-90_patch.command_v1.0
#
# Desktop HD3000 HDMI audio AppleIntelSNBGraphicsFB.kext edit
# Edits smb framebuffer 00 02 03 00 for HDMI audio, additional dsdt edits/ssdt required
# The patch enables HDMI audio, the maximum number of HDMI audio devices supported is 1.
#
# NOTES: 
# 1. Run this patch file only once on a native AppleIntelSNBGraphicsFB.kext.
#
# Requirements
# 1. 10.9 or newer
# 2. HD3000 Graphics
# 3. AppleIntelSNBGraphicsFB.kext_v8.18.26 or newer
#
# Installation
# 1. Downloads/graphics_intel_hd3k_snb-a-90_patch.command
# 2. Double click graphics_intel_hd3k_snb-a-90_patch.command
# 3. Enter password at prompt
#
echo " "
echo "Agreement"
echo "The graphics_intel_hd3k_snb-a-90_patch is for personal use only.  Do not"
echo "distribute the patch or the resulting patched AppleIntelSNBGraphicsFB.kext" 
echo "for any reason without permission. The graphics_intel_hd3k_snb-a-90_patch"
echo "is provided as is and without any kind of warranty."
echo " "
echo "graphics_intel_hd3k_snb-a-90_patch.command_v1.0"
echo "Copy S/L/E/AppleIntelSNBGraphicsFB.kext to Desktop."
cp -R /System/Library/Extensions/AppleIntelSNBGraphicsFB.kext Desktop/AppleIntelSNBGraphicsFB-orig.kext

echo "Patch binary ..."
sudo perl -pi -e 's|\x00\x02\x03\x00\x00\x00\x00\x00\xFF\xFF\xFF\xFF\x02\x05\x00\x00\x00\x04\x00\x00\x07\x00\x00\x00\x03\x04\x00\x00\x00\x04\x00\x00\x09\x00\x00\x00\x04\x06\x00\x00\x00\x08\x00\x00\x06\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x40\x00\x00\x00|\x00\x02\x03\x00\x00\x00\x00\x00\xFF\xFF\xFF\xFF\x02\x05\x00\x00\x00\x04\x00\x00\x07\x00\x00\x00\x03\x04\x00\x00\x00\x08\x00\x00\x06\x00\x00\x00\x04\x06\x00\x00\x00\x08\x00\x00\x06\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x40\x00\x00\x00|g' /System/Library/Extensions/AppleIntelSNBGraphicsFB.kext/Contents/MacOS/AppleIntelSNBGraphicsFB

echo "Fix permissions ..."
sudo chown -R root:wheel /System/Library/Extensions/AppleIntelSNBGraphicsFB.kext

echo "Kernel cache..."
sudo touch /System/Library/Extensions

echo "Finished, restart required."