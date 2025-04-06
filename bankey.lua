loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Ban%20Hammer"))()

local Player = game:GetService("Players").LocalPlayer
local Gui = Instance.new("ScreenGui")
local TweenService = game:GetService("TweenService")

-- ======== 全局样式配置 ========
local STYLE = {
    -- 按钮设置
    ButtonSize = UDim2.new(0, 80, 0, 80),
    Spacing = 25,
    CornerRadius = 16,
    BaseColor = Color3.fromHex("#FFFFFF"),
    AccentColor = Color3.fromHex("#0099FF"),
    TextColor = Color3.fromHex("#333333"),
    
    -- 说明面板
    InfoPanelColor = Color3.fromHex("#F0F8FF"),
    InfoTextColor = Color3.fromHex("#1E5F9E"),
    InfoPadding = 15,
    
    -- 语言切换按钮
    LangButtonSize = UDim2.new(0, 100, 0, 30),
    
    -- 动画设置
    ShadowIntensity = 0.2,
    AnimationSpeed = 0.15
}

-- 多语言文本配置
local TEXT = {
    en = {
        skills = {
            {key = "E", action = "Heavy Smash"},
            {key = "R", action = "Mega Smash"},
            {key = "Click", action = "Light Attack"}
        },
        lang = "中文"
    },
    zh = {
        skills = {
            {key = "E", action = "重击"},
            {key = "R", action = "巨重击"},
            {key = "点击", action = "轻击"}
        },
        lang = "EN"
    }
}
-- ==============================

-- 当前语言状态
local currentLang = "zh"
local textLabels = {} -- 存储需要更新的文本标签

-- 创建主界面
Gui.Name = "BattleControlsUI"
Gui.ResetOnSpawn = false
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Parent = Player:WaitForChild("PlayerGui")

-- 创建右上角语言切换按钮
local langButton = Instance.new("TextButton")
langButton.Name = "LanguageToggle"
langButton.Size = STYLE.LangButtonSize
langButton.Position = UDim2.new(1, -120, 0, 20)
langButton.AnchorPoint = Vector2.new(1, 0)
langButton.BackgroundColor3 = STYLE.BaseColor
langButton.TextColor3 = STYLE.TextColor
langButton.TextSize = 14
langButton.Font = Enum.Font.GothamMedium
langButton.Text = TEXT[currentLang].lang

-- 语言按钮样式
local langCorner = Instance.new("UICorner")
langCorner.CornerRadius = UDim.new(0, 8)
langCorner.Parent = langButton

local langStroke = Instance.new("UIStroke")
langStroke.Color = STYLE.AccentColor
langStroke.Thickness = 1
langStroke.Transparency = 0.5
langStroke.Parent = langButton

langButton.Parent = Gui

-- 语言切换功能
local function toggleLanguage()
    currentLang = (currentLang == "zh") and "en" or "zh"
    langButton.Text = TEXT[currentLang].lang
    
    -- 更新所有技能说明文本
    for i, label in ipairs(textLabels) do
        local desc = TEXT[currentLang].skills[i]
        label.Text = string.format("<b>%s</b> - %s", desc.key, desc.action)
    end
end

langButton.MouseButton1Click:Connect(toggleLanguage)

-- 创建右下角按钮容器
local buttonContainer = Instance.new("Frame")
buttonContainer.Name = "ActionButtons"
buttonContainer.BackgroundTransparency = 1
buttonContainer.Size = UDim2.new(0, STYLE.ButtonSize.Width.Offset*2 + STYLE.Spacing, 0, STYLE.ButtonSize.Height.Offset)
buttonContainer.Position = UDim2.new(1, -40, 1, -40)
buttonContainer.AnchorPoint = Vector2.new(1, 1)
buttonContainer.Parent = Gui

-- 创建左上角说明面板
local infoFrame = Instance.new("Frame")
infoFrame.Name = "SkillInfo"
infoFrame.BackgroundColor3 = STYLE.InfoPanelColor
infoFrame.BackgroundTransparency = 0.1
infoFrame.Size = UDim2.new(0, 160, 0, 120)
infoFrame.Position = UDim2.new(0, 20, 0, 20)
infoFrame.AnchorPoint = Vector2.new(0, 0)

-- 说明面板美化
local infoCorner = Instance.new("UICorner")
infoCorner.CornerRadius = UDim.new(0, 12)
infoCorner.Parent = infoFrame

local infoStroke = Instance.new("UIStroke")
infoStroke.Color = STYLE.AccentColor
infoStroke.Thickness = 2
infoStroke.Transparency = 0.8
infoStroke.Parent = infoFrame

-- 创建说明文字
local function createInfoText(index, textData)
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -STYLE.InfoPadding*2, 0, 30)
    textLabel.Position = UDim2.new(0, STYLE.InfoPadding, 0, 20 + (index-1)*35)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = string.format("<b>%s</b> - %s", textData.key, textData.action)
    textLabel.TextColor3 = STYLE.InfoTextColor
    textLabel.Font = Enum.Font.GothamMedium
    textLabel.TextSize = 16
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.RichText = true
    table.insert(textLabels, textLabel)
    return textLabel
end

-- 添加说明文字（使用当前语言）
for i, desc in ipairs(TEXT[currentLang].skills) do
    createInfoText(i, desc).Parent = infoFrame
end
infoFrame.Parent = Gui

-- 按钮创建函数
local function createActionButton(name, positionX)
    local button = Instance.new("TextButton")
    
    -- 基础样式
    button.Name = name
    button.Size = STYLE.ButtonSize
    button.Position = UDim2.new(0, positionX, 0, 0)
    button.BackgroundColor3 = STYLE.BaseColor
    button.TextColor3 = STYLE.TextColor
    button.TextSize = 24
    button.Font = Enum.Font.GothamBold
    
    -- 立体效果
    local shadow = Instance.new("ImageLabel")
    shadow.Image = "rbxassetid://8573778061"
    shadow.ImageColor3 = Color3.new(0,0,0)
    shadow.ImageTransparency = 0.8
    shadow.Size = UDim2.new(1, 10, 1, 10)
    shadow.Position = UDim2.new(0, -5, 0, -5)
    shadow.BackgroundTransparency = 1
    shadow.Parent = button
    
    -- 交互效果
    local stroke = Instance.new("UIStroke")
    stroke.Color = STYLE.AccentColor
    stroke.Thickness = 3
    stroke.Transparency = 0.8
    stroke.Parent = button
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, STYLE.CornerRadius)
    corner.Parent = button
    
    return button
end

-- 创建动作按钮
local eButton = createActionButton("E", 0)
local rButton = createActionButton("R", STYLE.ButtonSize.Width.Offset + STYLE.Spacing)
eButton.Parent = buttonContainer
rButton.Parent = buttonContainer
eButton.Text = "E"
rButton.Text = "R"

-- 按钮动画逻辑
local function createButtonEffects(button)
    local original = {
        Size = button.Size,
        Position = button.Position,
        Transparency = button.BackgroundTransparency
    }
    
    -- 悬停效果
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = STYLE.AccentColor:Lerp(Color3.new(1,1,1), 0.1),
            TextColor3 = Color3.new(1,1,1)
        }):Play()
    end)
    
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = STYLE.BaseColor,
            TextColor3 = STYLE.TextColor
        }):Play()
    end)
    
    -- 点击效果
    button.MouseButton1Down:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.1), {
            Size = original.Size - UDim2.new(0,5,0,5)
        }):Play()
    end)
    
    button.MouseButton1Up:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            Size = original.Size
        }):Play()
    end)
end

-- 应用按钮效果
createButtonEffects(eButton)
createButtonEffects(rButton)

-- 输入处理
local VirtualInput = game:GetService("VirtualInputManager")

local function createInputHandler(keyCode)
    return function()
        VirtualInput:SendKeyEvent(true, keyCode, false, nil)
        task.wait(0.05)
        VirtualInput:SendKeyEvent(false, keyCode, false, nil)
    end
end

eButton.MouseButton1Click:Connect(createInputHandler(Enum.KeyCode.E))
rButton.MouseButton1Click:Connect(createInputHandler(Enum.KeyCode.R))
eButton.TouchTap:Connect(createInputHandler(Enum.KeyCode.E))
rButton.TouchTap:Connect(createInputHandler(Enum.KeyCode.R))