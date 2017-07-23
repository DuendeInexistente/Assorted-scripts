#!/usr/bin/lua
-- Disabled because, while it didn't require any library outside the default lua package, it used absurd amounts of CPU.

---- We define the sleep(time) function, which I really don't understand not being part of Lua's default functions.
-- function sleep(s)
--  local ntime = os.clock() + s
--  repeat until os.clock() > ntime
--end


socket = require("socket")
function sleep(sec)
    socket.sleep(sec)
end

-- Now we set the argument to a variable
T = arg[1]

--And establish a loop.
repeat
	--And now we do the actual clock. Print time remaining, sleep for one second, take that second off.
	print(T .. [[...]])
	sleep(1)
	T = T-1
until T == 0