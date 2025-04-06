local Player = game:GetService("Players").LocalPlayer
local Gui = Instance.new("ScreenGui")
Gui.Name = "TechUI"
Gui.ResetOnSpawn = false
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Parent = Player:WaitForChild("PlayerGui")

-- ===== 科技感UI配置 =====
local STYLE = {
    MainColor = Color3.fromRGB(0, 200, 255),
    SecondaryColor = Color3.fromRGB(100, 255, 255),
    BackgroundColor = Color3.fromRGB(20, 20, 40),
    TextColor = Color3.fromRGB(255, 255, 255),
    ButtonSize = UDim2.new(0, 120, 0, 50),
    ButtonSpacing = 15,
    CornerRadius = 8,
    GlowIntensity = 0.8
}

-- 创建主容器
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainPanel"
mainFrame.Size = UDim2.new(0, 300, 0, 250)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -125)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = STYLE.BackgroundColor
mainFrame.BackgroundTransparency = 0.2
mainFrame.Parent = Gui

-- 添加科技感边框
local frameGlow = Instance.new("ImageLabel")
frameGlow.Name = "GlowEffect"
frameGlow.Image = "rbxassetid://5028857084"  -- 科技感发光边框
frameGlow.ScaleType = Enum.ScaleType.Slice
frameGlow.SliceCenter = Rect.new(100, 100, 100, 100)
frameGlow.Size = UDim2.new(1, 20, 1, 20)
frameGlow.Position = UDim2.new(0, -10, 0, -10)
frameGlow.ImageColor3 = STYLE.MainColor
frameGlow.BackgroundTransparency = 1
frameGlow.Parent = mainFrame

-- 标题文本
local title = Instance.new("TextLabel")
title.Name = "Title"
title.Text = "TECH CONTROL PANEL"
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 10)
title.BackgroundTransparency = 1
title.TextColor3 = STYLE.MainColor
title.Font = Enum.Font.SciFi
title.TextSize = 24
title.TextStrokeTransparency = 0.7
title.Parent = mainFrame

-- 按钮列表
local buttons = {
    {Name = "Bankey", Position = 1, Script = "https://raw.githubusercontent.com/nainshu/no/main/bankey.lua"},
    {Name = "Motorcycle", Position = 2, Script = "https://raw.githubusercontent.com/nainshu/no/main/motorcyclekey.lua"},
    {Name = "Nekokey", Position = 3, Script = "https://raw.githubusercontent.com/nainshu/no/main/nekokey.lua"},
    {Name = "Neptunekey", Position = 4, Script = "https://raw.githubusercontent.com/nainshu/no/main/Neptunekey.lua"}  -- Changed from Motorcycle2 to Neptunekey
}

-- 创建高科技按钮
local function createTechButton(config)
    local button = Instance.new("TextButton")
    button.Name = config.Name
    button.Size = STYLE.ButtonSize
    button.Position = UDim2.new(0.5, -60, 0, 60 + (config.Position-1)*(STYLE.ButtonSize.Y.Offset + STYLE.ButtonSpacing))
    button.AnchorPoint = Vector2.new(0.5, 0)
    button.BackgroundColor3 = STYLE.BackgroundColor
    button.BackgroundTransparency = 0.5
    button.Text = config.Name
    button.TextColor3 = STYLE.TextColor
    button.Font = Enum.Font.SciFi
    button.TextSize = 18
    button.AutoButtonColor = false
    
    -- 按钮边框
    local buttonStroke = Instance.new("UIStroke")
    buttonStroke.Color = STYLE.MainColor
    buttonStroke.Thickness = 2
    buttonStroke.Transparency = 0.3
    buttonStroke.Parent = button
    
    -- 按钮圆角
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, STYLE.CornerRadius)
    corner.Parent = button
    
    -- 悬停效果
    button.MouseEnter:Connect(function()
        buttonStroke.Thickness = 3
        buttonStroke.Color = STYLE.SecondaryColor
        button.TextColor3 = STYLE.SecondaryColor
    end)
    
    button.MouseLeave:Connect(function()
        buttonStroke.Thickness = 2
        buttonStroke.Color = STYLE.MainColor
        button.TextColor3 = STYLE.TextColor
    end)
    
    -- 点击效果
    button.MouseButton1Click:Connect(function()
        -- 关闭所有其他UI
        for _, child in ipairs(Gui:GetChildren()) do
            if child.Name ~= "TechUI" then
                child:Destroy()
            end
        end
        
        -- 执行对应脚本
        loadstring(game:HttpGet(config.Script))()
        
        -- 按钮点击反馈
        buttonStroke.Color = Color3.new(0, 1, 0)
        task.wait(0.2)
        buttonStroke.Color = STYLE.MainColor
    end)
    
    return button
end

-- 添加所有按钮
for _, btnConfig in ipairs(buttons) do
    createTechButton(btnConfig).Parent = mainFrame
end

-- 添加关闭按钮
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Text = "X"
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
closeButton.TextColor3 = Color3.new(1,1,1)
closeButton.Font = Enum.Font.SciFi
closeButton.TextSize = 18
closeButton.Parent = mainFrame

-- 关闭按钮圆角
local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 15)
closeCorner.Parent = closeButton

-- 关闭功能
closeButton.MouseButton1Click:Connect(function()
    Gui:Destroy()
end)