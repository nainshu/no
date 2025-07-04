local EggDropLocations = workspace.EggDropLocations

local function getAllEggDrops()
local eggDrops = {}

for _, location in ipairs(EggDropLocations:GetDescendants()) do
if location.Name == "EggDrop" then
table.insert(eggDrops, location)
end
end

return eggDrops
end

while true do
local eggDrops = getAllEggDrops()

if #eggDrops > 0 then
for _, eggDrop in ipairs(eggDrops) do
local targetCFrame = eggDrop:IsA("BasePart") and eggDrop.CFrame
or (eggDrop:IsA("Model") and eggDrop.PrimaryPart and eggDrop.PrimaryPart.CFrame)

local player = game.Players.LocalPlayer
if player and player.Character then
local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
if humanoidRootPart and targetCFrame then
humanoidRootPart.CFrame = targetCFrame
end
end

wait(1)
end
else
warn("No EggDrop found in EggDropLocations!")
wait(1)
end
end
