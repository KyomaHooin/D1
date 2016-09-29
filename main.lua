-- MAIN
gpio.mode(4,gpio.OUTPUT)
on=0
tmr.alarm(0,2000,1,function()
	if on==0 then
		on=1
		gpio.write(4,gpio.LOW) -- 10k pull-up resistor..
	else
		on=0
		gpio.write(4,gpio.HIGH)
	end
end)
