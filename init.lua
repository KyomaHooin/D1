-- INIT
print("Booting...");
-- 10s init delay failsafe
tmr.alarm(0, 10000, 0, function () dofile("main.lua") end );
print("Done.");
