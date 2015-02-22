#!/bin/bash
echo "AutoRomFlasher! xda username: mrnickel"
fastboot flash partition gpt.bin
fastboot flash motoboot motoboot.img
fastboot flash logo logo.bin
fastboot flash boot boot.img
fastboot flash recovery recovery.img
fastboot flash system system.img_sparsechunk.0
fastboot flash system system.img_sparsechunk.1
fastboot flash system system.img_sparsechunk.2
fastboot flash system system.img_sparsechunk.3
fastboot flash modem NON-HLOS.bin
fastboot erase modemst1 
fastboot erase modemst2 
fastboot flash fsg fsg.mbn
fastboot erase cache 
fastboot erase userdata
fastboot reboot
echo "Some options..."
echo "1 - Flash latest TWRP Package"
echo "2 - Flash latest Philz Package"
echo "R - Reboot device"
echo
echo -n "> "
read choice
echo
recovery1 () {
case "$1" in
    boot)
        $fastboot boot sources/$twrp.img
        ;;
    flash)
        $fastboot flash recovery sources/$twrp.img
        ;;
esac
}
otherrecovery () {
case "$2" in
    boot)
        $fastboot boot sources/philz.img
        ;;
    flash)
        $fastboot flash recovery sources/philz.img
        ;;
esac
}
reboot () {
case "$R" in
		boot)
			$fastboot reboot
			;;
esac
}
