-- "addons\\homigrad\\lua\\homigrad_scr\\run.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
if 1 then
AddCSLuaFile()

print("	homigrad start.")

local start = SysTime()
hg.includeDir("homigrad_scr/")--cring

print("	homigrad structure end " .. math.Round(SysTime() - start,3) .. "s")

end