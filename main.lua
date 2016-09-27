-- MAIN
print("Setting AP..");
-- WIFI AP SETUP
wifi.setmode(wifi.SOFTAP);
wifi.setphymode(wifi.PHYMODE_G);
wifi.ap.config({ssid="Sintanet",pwd="r4nd0mp455",auth=wifi.WPA2_PSK}); -- STA -> AP = reboot(?)
wifi.ap.setip({ip="192.168.1.1",netmask="255.255.255.0",gateway="192.168.1.1"});
wifi.ap.dhcp.config({start="192.168.1.100"});
wifi.ap.dhcp.start();
print("Done.");
-- HTTP SOCKET SERVER
print("Setting HTTP server..");

print("Done.");
