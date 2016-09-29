-- INIT
uart.write(0,"Booting.. ")
-- 10s init delay failsafe
tmr.alarm(0, 10000, 0, function () dofile("main.lua") end)
print("Done.")
--WIRELESS SETUP
uart.write(0,"Setting AP.. ")
wifi.setmode(wifi.SOFTAP)
wifi.setphymode(wifi.PHYMODE_G)
wifi.ap.config({ssid="Sintanet",pwd="r4nd0mp455",auth=wifi.WPA2_PSK}) -- STA -> AP = reboot(?)
wifi.ap.setip({ip="192.168.1.1",netmask="255.255.255.0",gateway="192.168.1.1"})
wifi.ap.dhcp.config({start="192.168.1.100"})
wifi.ap.dhcp.start()
print("Done.")
