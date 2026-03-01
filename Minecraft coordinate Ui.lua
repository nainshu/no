local Http = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local FONT_FILE = "Unifont.otf"
local JSON_FILE = "unifont.json"
local FONT_URL = "https://raw.githubusercontent.com/nainshu/no/main/unifont-17.0.03.otf"

if not isfile(FONT_FILE) then
    writefile(FONT_FILE, game:HttpGet(FONT_URL))
end

writefile(JSON_FILE, Http:JSONEncode({
    name = "Unifont",
    faces = {{name = "Regular", weight = 400, style = "normal", assetId = getcustomasset(FONT_FILE)}}
}))

local myFont = Font.new(getcustomasset(JSON_FILE))

local player = Players.LocalPlayer
local pGui = player:WaitForChild("PlayerGui")

if pGui:FindFirstChild("MC_CoordsGui") then
    pGui.MC_CoordsGui:Destroy()
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MC_CoordsGui"
screenGui.IgnoreGuiInset = true 
screenGui.ResetOnSpawn = false
screenGui.Parent = pGui

local frame = Instance.new("Frame")
frame.Name = "CoordFrame"
frame.AutomaticSize = Enum.AutomaticSize.XY 
frame.Size = UDim2.new(0, 0, 0, 0) 
frame.Position = UDim2.new(0, 15, 0, 75)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.1
frame.BorderSizePixel = 0
frame.Parent = screenGui

local padding = Instance.new("UIPadding")
padding.PaddingLeft = UDim.new(0, 5)
padding.PaddingRight = UDim.new(0, 5)
padding.PaddingTop = UDim.new(0, 2)
padding.PaddingBottom = UDim.new(0, 2)
padding.Parent = frame

local coordLabel = Instance.new("TextLabel")
coordLabel.Name = "Coords"
coordLabel.AutomaticSize = Enum.AutomaticSize.XY
coordLabel.Size = UDim2.new(0, 0, 0, 0)
coordLabel.BackgroundTransparency = 1
coordLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
coordLabel.TextSize = 16 
coordLabel.FontFace = myFont
coordLabel.TextXAlignment = Enum.TextXAlignment.Left
coordLabel.Parent = frame

RunService.RenderStepped:Connect(function()
    local char = player.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        local pos = char.HumanoidRootPart.Position
        coordLabel.Text = string.format("位置: %d, %d, %d", math.floor(pos.X), math.floor(pos.Y), math.floor(pos.Z))
    else
        coordLabel.Text = "位置: 加载中..."
    end
end)