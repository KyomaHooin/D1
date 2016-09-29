-- MAIN
--GPIO
--gpio.mode(4,gpio.OUTPUT)
--on=0
--tmr.alarm(0,2000,1,function()
--if on==0 then
--  on=1
--  gpio.write(4,gpio.LOW)
--else
--  on=0
--  gpio.write(4,gpio.HIGH)
--end
--end)

-- HTTP SOCKET SERVER
uart.write(0,"Setting HTTP server..")
srv = net.createServer(net.TCP, 30)-- TCP server instance
srv:listen(80, function(sock) -- socket
	sock:on("connection",function(sock)
		sock:send("HTTP/1.0 200 OK\r\nServer: NodeMCU on ESP8266\r\nContent-Type: text/html\r\n\r\n<html><head></head><body><b>Hello world!</b></body></html>")
	end)
end)
print("Done.")
