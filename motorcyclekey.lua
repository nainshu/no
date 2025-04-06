loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Motorcycle"))()

local Player = game:GetService("Players").LocalPlayer
local Gui = Instance.new("ScreenGui")
local TweenService = game:GetService("TweenService")

-- ======== 全局样式配置 ========
local STYLE = {
    -- 按钮设置
    ButtonSize = UDim2.new(0, 100, 0, 100),  -- 大圆形按钮
    CornerRadius = 50,                         -- 完全圆形
    BaseColor = Color3.fromHex("#FFFFFF"),     -- 白色基底
    AccentColor = Color3.fromHex("#FF3366"),   -- 玫红色主题
    TextColor = Color3.fromHex("#333333"),     -- 深灰色文字
    
    -- 说明面板
    InfoPanelColor = Color3.fromHex("#FFF0F5"),-- 浅粉背景
    InfoTextColor = Color3.fromHex("#CC2255"), -- 深粉文字
    InfoPadding = 15,                          -- 内边距
    
    -- 语言按钮
    LangButtonSize = UDim2.new(0, 80, 0, 30)  -- 语言切换按钮尺寸
}

-- 多语言文本配置
local TEXT = {
    en = {
        skills = {
            {key = "Z", action = "Dash"},
            {key = "Hold Screen", action = "Shoot"}
        },
        lang = "中文"
    },
    zh = {
        skills = {
            {key = "Z", action = "冲刺"},
            {key = "长按屏幕", action = "射击"}
        },
        lang = "EN"
    }
}
-- ==============================

-- 当前语言状态
local currentLang = "zh"
local textLabels = {} -- 存储需要更新的文本标签

-- 创建主界面
Gui.Name = "SimpleControlsUI"
Gui.ResetOnSpawn = false
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Parent = Player:WaitForChild("PlayerGui")

-- 创建右上角语言切换按钮
local langButton = Instance.new("TextButton")
langButton.Name = "LanguageButton"
langButton.Size = STYLE.LangButtonSize
langButton.Position = UDim2.new(1, -30, 0, 20) -- 右上角
langButton.AnchorPoint = Vector2.new(1, 0)
langButton.BackgroundColor3 = STYLE.BaseColor
langButton.TextColor3 = STYLE.TextColor
langButton.Text = TEXT[currentLang].lang
langButton.TextSize = 14
langButton.Font = Enum.Font.GothamMedium

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

-- 创建Z键按钮（右下角）
local zButton = Instance.new("TextButton")
zButton.Name = "ZButton"
zButton.Size = STYLE.ButtonSize
zButton.Position = UDim2.new(1, -60, 1, -60) -- 右下角
zButton.AnchorPoint = Vector2.new(1, 1)
zButton.BackgroundColor3 = STYLE.BaseColor
zButton.TextColor3 = STYLE.TextColor
zButton.Text = "Z"
zButton.TextSize = 32
zButton.Font = Enum.Font.GothamBlack
zButton.AutoButtonColor = false

-- 按钮美化
local zCorner = Instance.new("UICorner")
zCorner.CornerRadius = UDim.new(0, STYLE.CornerRadius)
zCorner.Parent = zButton

local zStroke = Instance.new("UIStroke")
zStroke.Color = STYLE.AccentColor
zStroke.Thickness = 4
zStroke.Parent = zButton

-- 按钮动画
zButton.MouseEnter:Connect(function()
    TweenService:Create(zButton, TweenInfo.new(0.2), {
        BackgroundColor3 = STYLE.AccentColor,
        TextColor3 = Color3.new(1,1,1)
    }):Play()
end)

zButton.MouseLeave:Connect(function()
    TweenService:Create(zButton, TweenInfo.new(0.2), {
        BackgroundColor3 = STYLE.BaseColor,
        TextColor3 = STYLE.TextColor
    }):Play()
end)

zButton.MouseButton1Down:Connect(function()
    TweenService:Create(zButton, TweenInfo.new(0.1), {
        Size = STYLE.ButtonSize - UDim2.new(0,10,0,10)
    }):Play()
end)

zButton.MouseButton1Up:Connect(function()
    TweenService:Create(zButton, TweenInfo.new(0.2), {
        Size = STYLE.ButtonSize
    }):Play()
end)

zButton.Parent = Gui

-- 冲刺功能
local VirtualInput = game:GetService("VirtualInputManager")

zButton.MouseButton1Click:Connect(function()
    VirtualInput:SendKeyEvent(true, Enum.KeyCode.Z, false, nil)
    task.wait(0.1)
    VirtualInput:SendKeyEvent(false, Enum.KeyCode.Z, false, nil)
end)

zButton.TouchTap:Connect(function()
    VirtualInput:SendKeyEvent(true, Enum.KeyCode.Z, false, nil)
    task.wait(0.1)
    VirtualInput:SendKeyEvent(false, Enum.KeyCode.Z, false, nil)
end)

-- 创建说明面板（左上角）
local infoFrame = Instance.new("Frame")
infoFrame.Name = "SkillInfo"
infoFrame.BackgroundColor3 = STYLE.InfoPanelColor
infoFrame.BackgroundTransparency = 0.1
infoFrame.Size = UDim2.new(0, 180, 0, 90)
infoFrame.Position = UDim2.new(0, 20, 0, 20)
infoFrame.AnchorPoint = Vector2.new(0, 0)

-- 面板美化
local infoCorner = Instance.new("UICorner")
infoCorner.CornerRadius = UDim.new(0, 12)
infoCorner.Parent = infoFrame

local infoStroke = Instance.new("UIStroke")
infoStroke.Color = STYLE.AccentColor
infoStroke.Thickness = 2
infoStroke.Parent = infoFrame

-- 添加说明文字（使用当前语言）
for i, desc in ipairs(TEXT[currentLang].skills) do
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -STYLE.InfoPadding*2, 0, 30)
    textLabel.Position = UDim2.new(0, STYLE.InfoPadding, 0, 15 + (i-1)*35)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = string.format("<b>%s</b> - %s", desc.key, desc.action)
    textLabel.TextColor3 = STYLE.InfoTextColor
    textLabel.Font = Enum.Font.GothamMedium
    textLabel.TextSize = 16
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.RichText = true
    table.insert(textLabels, textLabel)
    textLabel.Parent = infoFrame
end

infoFrame.Parent = Gui