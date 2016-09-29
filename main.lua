-- MAIN
--GPIO

gpio.mode(4,gpio.OUTPUT)
on=0
tmr.alarm(0,2000,1,function()
if on==0 then
  on=1
  gpio.write(4,gpio.LOW)
else
  on=0
  gpio.write(4,gpio.HIGH)
end
end)

-- HTTP SOCKET SERVER
--uart.write(0,"Setting HTTP server..")
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
