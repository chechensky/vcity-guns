-- "addons\\homigrad\\lua\\homigrad_scr\\game\\tier_0\\oop\\vgui\\cl_draw_figure.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
if 1 then
local SetMaterial = surface.SetMaterial
local DrawTexturedRect = surface.DrawTexturedRect

local pngParametrs = "mips"

local constructManual = {
    "sphere"
}

local materials = {}

for i,name in pairs(constructManual) do
	materials[name] = Material("homigrad/vgui/models/" .. name .. ".png",pngParametrs)
end

function surface.SetFigure(name)
    SetMaterial(materials[name])
end

function draw.Figure(x,y,w,h)
    DrawTexturedRect(x,y,w,h)
end
end