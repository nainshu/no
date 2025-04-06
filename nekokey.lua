DisableFlingHealthBar = false

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neko"))()

local Player = game:GetService("Players").LocalPlayer
local Gui = Instance.new("ScreenGui")
local TweenService = game:GetService("TweenService")
local VirtualInput = game:GetService("VirtualInputManager")

-- ===== UI配置 =====
local STYLE = {
    ButtonSize = UDim2.new(0, 80, 0, 80),
    Spacing = 25,
    CornerRadius = 16,
    BaseColor = Color3.fromHex("#FFFFFF"),
    AccentColor = Color3.fromHex("#FF96CB"), -- 樱花粉
    TextColor = Color3.fromHex("#333333"),
    InfoPanelColor = Color3.fromHex("#FFF0F7"),
    InfoTextColor = Color3.fromHex("#D44D8C"),
    InfoPadding = 15,
    LangButtonSize = UDim2.new(0, 100, 0, 30)
}

local TEXT = {
    en = {
        skills = {
            {key = "F", action = "Draw Weapon"},
            {key = "R", action = "Lie Down"}, 
            {key = "T", action = "Girl's Smile"}
        },
        lang = "中文"
    },
    zh = {
        skills = {
            {key = "F", action = "拿起武器"},
            {key = "R", action = "躺下"},
            {key = "T", action = "少女微笑"}
        },
        lang = "EN"
    }
}

-- ===== 主UI =====
Gui.Name = "NekoCatUI"
Gui.ResetOnSpawn = false
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Parent = Player:WaitForChild("PlayerGui")

-- 语言切换按钮
local langButton = Instance.new("TextButton")
langButton.Name = "LanguageToggle"
langButton.Size = STYLE.LangButtonSize
langButton.Position = UDim2.new(1, -120, 0, 20)
langButton.AnchorPoint = Vector2.new(1, 0)
langButton.BackgroundColor3 = STYLE.BaseColor
langButton.TextColor3 = STYLE.TextColor
langButton.TextSize = 14
langButton.Font = Enum.Font.GothamMedium
langButton.Text = TEXT.zh.lang

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
local currentLang = "zh"
local textLabels = {}

local function updateLanguage()
    langButton.Text = TEXT[currentLang].lang
    for i, label in ipairs(textLabels) do
        label.Text = string.format("<b>%s</b> - %s", 
            TEXT[currentLang].skills[i].key, 
            TEXT[currentLang].skills[i].action)
    end
end

langButton.MouseButton1Click:Connect(function()
    currentLang = currentLang == "zh" and "en" or "zh"
    updateLanguage()
end)

-- 按钮容器
local buttonContainer = Instance.new("Frame")
buttonContainer.Name = "ActionButtons"
buttonContainer.BackgroundTransparency = 1
buttonContainer.Size = UDim2.new(0, 250, 0, 80)
buttonContainer.Position = UDim2.new(1, -40, 1, -40)
buttonContainer.AnchorPoint = Vector2.new(1, 1)
buttonContainer.Parent = Gui

-- 说明面板
local infoFrame = Instance.new("Frame")
infoFrame.Name = "SkillInfo"
infoFrame.BackgroundColor3 = STYLE.InfoPanelColor
infoFrame.BackgroundTransparency = 0.1
infoFrame.Size = UDim2.new(0, 180, 0, 120)
infoFrame.Position = UDim2.new(0, 20, 0, 20)
infoFrame.AnchorPoint = Vector2.new(0, 0)

local infoCorner = Instance.new("UICorner")
infoCorner.CornerRadius = UDim.new(0, 12)
infoCorner.Parent = infoFrame

local infoStroke = Instance.new("UIStroke")
infoStroke.Color = STYLE.AccentColor
infoStroke.Thickness = 2
infoStroke.Transparency = 0.8
infoStroke.Parent = infoFrame
infoFrame.Parent = Gui

-- 创建说明文字
for i, desc in ipairs(TEXT.zh.skills) do
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -30, 0, 30)
    textLabel.Position = UDim2.new(0, 15, 0, 15 + (i-1)*35)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = string.format("<b>%s</b> - %s", desc.key, desc.action)
    textLabel.TextColor3 = STYLE.InfoTextColor
    textLabel.Font = Enum.Font.GothamMedium
    textLabel.TextSize = 14
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.RichText = true
    table.insert(textLabels, textLabel)
    textLabel.Parent = infoFrame
end

-- 按钮创建函数
local function createButton(name, positionX)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = STYLE.ButtonSize
    button.Position = UDim2.new(0, positionX, 0, 0)
    button.BackgroundColor3 = STYLE.BaseColor
    button.TextColor3 = STYLE.TextColor
    button.Text = name
    button.TextSize = 24
    button.Font = Enum.Font.GothamBold
    button.AutoButtonColor = false

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, STYLE.CornerRadius)
    corner.Parent = button

    local stroke = Instance.new("UIStroke")
    stroke.Color = STYLE.AccentColor
    stroke.Thickness = 3
    stroke.Transparency = 0.7
    stroke.Parent = button

    -- 按钮动画
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = STYLE.AccentColor,
            TextColor3 = Color3.new(1,1,1)
        }):Play()
    end)
    
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = STYLE.BaseColor,
            TextColor3 = STYLE.TextColor
        }):Play()
    end)
    
    button.MouseButton1Down:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.1), {
            Size = STYLE.ButtonSize - UDim2.new(0,5,0,5)
        }):Play()
    end)
    
    button.MouseButton1Up:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            Size = STYLE.ButtonSize
        }):Play()
    end)
    
    return button
end

-- 创建三个功能按钮
local buttons = {
    F = createButton("F", 0),      -- 拿起武器
    R = createButton("R", 85),     -- 躺下
    T = createButton("T", 170)     -- 少女微笑
}

for _, btn in pairs(buttons) do
    btn.Parent = buttonContainer
end

-- 按钮功能绑定
local function bindButton(button, keyCode)
    button.MouseButton1Click:Connect(function()
        VirtualInput:SendKeyEvent(true, keyCode, false, nil)
        task.wait(0.1)
        VirtualInput:SendKeyEvent(false, keyCode, false, nil)
    end)
    button.TouchTap:Connect(function()
        VirtualInput:SendKeyEvent(true, keyCode, false, nil)
        task.wait(0.1)
        VirtualInput:SendKeyEvent(false, keyCode, false, nil)
    end)
end

bindButton(buttons.F, Enum.KeyCode.F)
bindButton(buttons.R, Enum.KeyCode.R) 
bindButton(buttons.T, Enum.KeyCode.T)