-- "addons\\homigrad\\lua\\entities\\ent_zipline\\shared.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Зиплайн"
ENT.Author = "Homigrad"
ENT.Category = "Homigrad"
ENT.Spawnable = true

function ENT:SetupDataTables()
    self:NetworkVar("Entity", 0, "ConnectedZipline")
end
