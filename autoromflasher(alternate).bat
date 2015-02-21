@ECHO OFF
echo "Auto ROM Flasher, by Luiz Nickel"
mfastboot.exe flash partition gpt.bin
mfastboot.exe flash motoboot motoboot.img
mfastboot.exe flash logo logo.bin
mfastboot.exe flash boot boot.img
mfastboot.exe flash recovery recovery.img
mfastboot.exe flash system system.img_sparsechunk.0
mfastboot.exe flash system system.img_sparsechunk.1
mfastboot.exe flash system system.img_sparsechunk.2
mfastboot.exe flash system system.img_sparsechunk.3
mfastboot.exe flash modem NON-HLOS.bin
mfastboot.exe erase modemst1 
mfastboot.exe erase modemst2 
mfastboot.exe flash fsg fsg.mbn
mfastboot.exe erase cache 
mfastboot.exe erase userdata
mfastboot.exe reboot
echo "Thanks for using! XDA Username: mrnickel"
