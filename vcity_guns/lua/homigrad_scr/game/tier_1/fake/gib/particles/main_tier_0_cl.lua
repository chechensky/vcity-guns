-- "addons\\homigrad\\lua\\homigrad_scr\\game\\tier_1\\fake\\gib\\particles\\main_tier_0_cl.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
if 1 then
local fps = 1 / 15
local delay = 0

local math_min = math.min
local CurTime,FrameTime = CurTime,FrameTime

bloodparticels_hook = bloodparticels_hook or {}
local bloodparticels_hook = bloodparticels_hook

hook.Add("PostDrawOpaqueRenderables","bloodpartciels",function()
	local time = CurTime()

	if delay <= time then
		delay = time + fps
		
		bloodparticels_hook[2](fps)
		bloodparticels_hook[4](fps)
	end
	
	local animpos = math_min((delay - time) / fps,1)

	bloodparticels_hook[1](animpos)
	bloodparticels_hook[3](animpos)
end)
end