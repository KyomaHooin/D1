-- MAIN
--print("Setting AP..")
-- WIFI AP SETUP
--wifi.setmode(wifi.SOFTAP)
--wifi.setphymode(wifi.PHYMODE_G)
--wifi.ap.config({ssid="Sintanet",pwd="r4nd0mp455",auth=wifi.WPA2_PSK}) -- STA -> AP = reboot(?)
--wifi.ap.setip({ip="192.168.1.1",netmask="255.255.255.0",gateway="192.168.1.1"})
--wifi.ap.dhcp.config({start="192.168.1.100"})
--wifi.ap.dhcp.start()
--print("Done.")
--GPIO

gpio.mode(4,gpio.OUTPUT)
on=0
tmr.alarm(0,2000,1,function()
if on==0 then
  on=1
  gpio.write(4,gpio.LOW)
    -- 512/1024, 50% duty cycle
else
  on=0
  gpio.write(4,gpio.HIGH)
end
end)


--gpio.mode(4,gpio.OUTPUT)
--gpio.write(4,gpio.LOW) -- ligh on low(?)
-- HTTP SOCKET SERVER
--print("Setting HTTP server..")
--sv = net.createServer(net.TCP, 30)
-- server listens on 80, if data received, print data to console and send "hello world" back to caller
--sv:listen(80, function(c)
--  c:on("receive", function(c, pl)
--    print(pl)
--  end)
--  c:send("<html>hello world</html>")
--end)

--sv = net.createServer(net.TCP, 30)
--sv:listen(80, function(sock)
--  sock:on("receive", function(sock) sock:send("It work's!") end )
--end)

--print("Done.")
