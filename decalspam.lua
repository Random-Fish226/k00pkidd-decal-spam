print("make sure to follow me at https://www.roblox.com/users/8998464227/profile")
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
decalID = 15705773225
function exPro(root)
for _, v in pairs(root:GetChildren()) do
if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id="..decalID then
v.Parent = nil
elseif v:IsA("BasePart") then
v.Material = "Plastic"
v.Transparency = 0
local One = Instance.new("Decal", v)
local Two = Instance.new("Decal", v)
local Three = Instance.new("Decal", v)
local Four = Instance.new("Decal", v)
local Five = Instance.new("Decal", v)
local Six = Instance.new("Decal", v)
One.Texture = "http://www.roblox.com/asset/?id="..decalID
Two.Texture = "http://www.roblox.com/asset/?id="..decalID
Three.Texture = "http://www.roblox.com/asset/?id="..decalID
Four.Texture = "http://www.roblox.com/asset/?id="..decalID
Five.Texture = "http://www.roblox.com/asset/?id="..decalID
Six.Texture = "http://www.roblox.com/asset/?id="..decalID
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"
end
exPro(v)
end
end
function asdf(root)
for _, v in pairs(root:GetChildren()) do
asdf(v)
end
end
exPro(game.Workspace)
asdf(game.Workspace)

local s = Instance.new("Sky")
s.Name = "Sky"
s.Parent = game.Lighting
local skyboxID = 15705773225
s.SkyboxBk = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxDn = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxFt = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxLf = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxRt = "http://www.roblox.com/asset/?id="..skyboxID
s.SkyboxUp = "http://www.roblox.com/asset/?id="..skyboxID
game.Lighting.TimeOfDay = 12	

for i, v in pairs(game.Players:GetChildren()) do
emit = Instance.new("ParticleEmitter")
emit.Parent = v.Character.Torso
emit.Texture = "http://www.roblox.com/asset/?id=15705773225"
emit.VelocitySpread = 20
end
for i, v in pairs(game.Players:GetChildren()) do
emit = Instance.new("ParticleEmitter")
emit.Parent = v.Character.Torso
emit.Texture = "http://www.roblox.com/asset/?id=15705773225"
emit.VelocitySpread = 20
end
for i, v in pairs(game.Players:GetChildren()) do
emit = Instance.new("ParticleEmitter")
emit.Parent = v.Character.Torso
emit.Texture = "http://www.roblox.com/asset/?id=15705773225"
emit.VelocitySpread = 20
end	



































local player = game.Players.LocalPlayer
local targetUserId = 8998464227

-- Function to check if players are friends
local function checkFriendship()
    local success, result = pcall(function()
        return player:IsFriendsWith(targetUserId)
    end)
    
    if success then
        if not result then
            warn("You aren't friends with this user 🥀")
        end
    else
        warn("Failed to check friendship status:", result)
    end
end

-- Check when the player joins
player:GetPropertyChangedSignal("UserId"):Connect(checkFriendship)

-- Initial check (in case the player is already loaded)
if player.UserId > 0 then
    checkFriendship()
end
