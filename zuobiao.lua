local player = game.Players.LocalPlayer
local screenGui = Instance.new('ScreenGui')
screenGui.Name = 'CoordinateScreenGui'
screenGui.Parent = player.PlayerGui

local textLabel = Instance.new('TextLabel')
textLabel.Name = 'CoordinateTextLabel'
textLabel.Position = UDim2.new(0.95, - 200, 0.1, - 60)
textLabel.Size = UDim2.new(0, 200, 0, 50)
textLabel.Text = ''
textLabel.TextSize = 14
textLabel.TextColor3 = Color3.new(1, 1, 1)
-- 设置文字背景完全透明
textLabel.BackgroundTransparency = 1
textLabel.Parent = screenGui

local function updateCoordinateDisplay()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild('HumanoidRootPart')
    while true do
        local position = humanoidRootPart.Position
        textLabel.Text = string.format('X: %.2f Y: %.2f Z: %.2f', position.X, position.Y, position.Z)
        -- 生成随机颜色
        local randomColor = Color3.new(math.random(), math.random(), math.random())
        textLabel.TextColor3 = randomColor
        task.wait(0.1)
    end
end

updateCoordinateDisplay()
