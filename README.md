## TWRP device tree for l70pds (D295)

How to setup build environment and compile TWRP for LG L Fino D295:

1) Create an empty directory in your Home folder with name: "twrp".
2) Open a Terminal.
3) Type the following commands:

repo init -u https://github.com/marduk191/recovery_manifest.git -b android-5.1

repo sync

4) After repo sync is done, open Files, click on View menu and make sure "Show Hidden Files" option is checked.
5) Open the following .xml file with your preferred Text Editor: ~/twrp/.repo/manifest.xml
6) Change the following line from:

<project path="bootable/recovery" name="android_bootable_recovery" remote="omnirom" revision="android-5.1" groups="pdk-cw-fs"/>

To:

<project path="bootable/recovery" name="android_bootable_recovery" remote="omnirom" revision="android-6.0" groups="pdk-cw-fs"/>

7) Save the file and do another repo sync. This one should be much faster, as it only has to sync 6.0 recovery.
8) Go back to this repository and select Download as ZIP in the right upper corner.
9) Go to ~/twrp/device/lge/l70pds ,open the ZIP file you downloaded and replace all the files.
10) Open a Terminal.
11) CD to ~/twrp folder and type the following commands:

cd ~/twrp

make clobber

. build/envsetup.sh

lunch omni_l70pds-userdebug

make -j# recoveryimage 
(# stands for the amount of cores your processor has, -j# can be ommited, it just compiles a lot faster with that parameter.)

12) Your ready recovery image should be at: ~/twrp/out/target/product/l70pds/recovery.img
