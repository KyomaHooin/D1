
DESCRIPTION

Simple wireless HTTP webserver and LED light control.

D1
<pre>
[ 7872.387143] ch341 3-1:1.0: ch341-uart converter detected
[ 7872.401308] usb 3-1: ch341-uart converter now attached to ttyUSB0

     Chip ID: 0x0081cf24
         MAC: 5c:cf:7f:81:cf:24
Manufacturer: e0
      Device: 4016
</pre>
FIRMWARE UPGRADE

./esptool.py --port /dev/ttyUSB0 --baud 115200 erase_flash
<pre>
esptool.py v1.2-dev
Connecting...
Erasing flash (this may take a while)...
</pre>
./esptool.py --port /dev/ttyUSB0 --baud 115200 write_flash <b>-fm dio -fs 32m</b> 0x00000 firmware.bin <b>0x3fc000</b> init.bin 
<pre>
esptool.py v1.2-dev
Connecting...
Running Cesanta flasher stub...
Flash params set to 0x0240
Writing 385024 @ 0x0... 385024 (100 %)
Wrote 385024 bytes at 0x0 in 33.4 seconds (92.3 kbit/s)...
Writing 4096 @ 0x3fc000... 4096 (100 %)
Wrote 4096 bytes at 0x3fc000 in 0.4 seconds (89.2 kbit/s)...
Leaving...
</pre>
./esptool.py --port /dev/ttyUSB0 --baud 115200 verify_flash 0x00000 firmware.bin 
<pre>
esptool.py v1.2-dev
Connecting...
Running Cesanta flasher stub...
Verifying 0x5daeb (383723) bytes @ 0x00000000 in flash against nodemcu-master-7-modules-2016-09-25-09-49-12-integer.bin...
-- verify OK (digest matched)
</pre>
CONSOLE
<pre>
minicom -b 115200 -D /dev/ttyUSB0

NodeMCU custom build by frightanic.com
        branch: master
        commit: 8e48483c825dea9c12b37a4db3d034fccbcba0bf
        SSL: false
        modules: file,gpio,net,node,tmr,uart,wifi
 build  built on: 2016-09-25 09:48
 powered by Lua 5.1.4 on SDK 1.5.4.1(39cb9a32)
lua: cannot open init.lua
</pre>
FILE
<pre>
nodemcu-master-7-modules-2016-09-25-09-49-12-integer.bin - Firmware SDK 1.5.4.1
                               esp_init_data_default.bin - Init block patch.
                                              esptool.py - Flashing tool by Fredrik Ahlberg.
</pre>
CONTACT

Author: richard_bruna@nm.cz<br>
Source: https://github.com/KyomaHooin/D1
