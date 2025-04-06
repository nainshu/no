loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neptunian%20V"))()

local Player = game:GetService("Players").LocalPlayer
local Gui = Instance.new("ScreenGui")
local TweenService = game:GetService("TweenService")
local VirtualInput = game:GetService("VirtualInputManager")

-- ===== 样式配置 =====
local STYLE = {
    MainButton = {
        Size = UDim2.new(0, 80, 0, 80),  -- 主按钮尺寸
        Color = Color3.fromHex("#4B8BBE"),
        TextSize = 24
    },
    SmallButton = {
        Size = UDim2.new(0, 60, 0, 60),  -- 小按钮尺寸
        Color = Color3.fromHex("#3A6B99"),
        TextSize = 20
    },
    CornerRadius = 40,
    BaseColor = Color3.fromHex("#FFFFFF"),
    TextColor = Color3.fromHex("#333333"),
    ButtonSpacing = 10,
    RightMargin = 20,
    BottomMargin = 20
}

-- 多语言配置
local TEXT = {
    en = {
        skills = {
            {key = "F", action = "Equip Sword"},
            {key = "Z", action = "Sword Spin"},
            {key = "X", action = "Big Attack"},
            {key = "C", action = "Spin Strike"},
            {key = "R", action = "Jump"}
        },
        lang = "中文"
    },
    zh = {
        skills = {
            {key = "F", action = "装备剑"},
            {key = "Z", action = "剑刃旋转"},
            {key = "X", action = "强力攻击"},
            {key = "C", action = "旋转打击"},
            {key = "R", action = "跳跃"}
        },
        lang = "EN"
    }
}

-- ===== 主UI创建 =====
Gui.Name = "SwordCombatUI"
Gui.ResetOnSpawn = false
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Parent = Player:WaitForChild("PlayerGui")

-- 语言切换按钮
local langButton = Instance.new("TextButton")
langButton.Name = "LanguageButton"
langButton.Size = UDim2.new(0, 80, 0, 30)
langButton.Position = UDim2.new(1, -30, 0, 20)
langButton.AnchorPoint = Vector2.new(1, 0)
langButton.BackgroundColor3 = STYLE.BaseColor
langButton.TextColor3 = STYLE.TextColor
langButton.Text = TEXT.zh.lang
langButton.TextSize = 14
langButton.Font = Enum.Font.GothamMedium

local langCorner = Instance.new("UICorner")
langCorner.CornerRadius = UDim.new(0, 8)
langCorner.Parent = langButton

local langStroke = Instance.new("UIStroke")
langStroke.Color = STYLE.MainButton.Color
langStroke.Thickness = 1
langStroke.Transparency = 0.5
langStroke.Parent = langButton
langButton.Parent = Gui

-- 右下角按钮容器
local buttonContainer = Instance.new("Frame")
buttonContainer.Name = "ActionButtons"
buttonContainer.BackgroundTransparency = 1
buttonContainer.Size = UDim2.new(0, 180, 0, 180)
buttonContainer.Position = UDim2.new(1, -20, 1, -20)
buttonContainer.AnchorPoint = Vector2.new(1, 1)
buttonContainer.Parent = Gui

-- 按钮创建函数
local function createButton(name, position, isSmall)
    local style = isSmall and STYLE.SmallButton or STYLE.MainButton
    local button = Instance.new("TextButton")
    
    button.Name = name
    button.Size = style.Size
    button.Position = position
    button.BackgroundColor3 = STYLE.BaseColor
    button.TextColor3 = STYLE.TextColor
    button.Text = name
    button.TextSize = style.TextSize
    button.Font = Enum.Font.GothamBold
    button.AutoButtonColor = false
    
    -- 圆角效果
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, STYLE.CornerRadius)
    corner.Parent = button
    
    -- 边框描边
    local stroke = Instance.new("UIStroke")
    stroke.Color = style.Color
    stroke.Thickness = 3
    stroke.Transparency = 0.7
    stroke.Parent = button
    
    -- 按钮动画
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = style.Color,
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
            Size = style.Size - UDim2.new(0,8,0,8)
        }):Play()
    end)
    
    button.MouseButton1Up:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {
            Size = style.Size
        }):Play()
    end)
    
    return button
end

-- 创建按钮 (右下角菱形布局)
local buttons = {
    F = createButton("F", UDim2.new(0, 0, 0, 120), true),   -- 左下
    Z = createButton("Z", UDim2.new(0, 70, 0, 60)),         -- 中下 
    X = createButton("X", UDim2.new(0, 0, 0, 60)),          -- 左中
    C = createButton("C", UDim2.new(0, 70, 0, 0)),          -- 中上
    R = createButton("R", UDim2.new(0, 0, 0, 0), true)      -- 左上
}

-- 将按钮添加到容器
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
bindButton(buttons.Z, Enum.KeyCode.Z)
bindButton(buttons.X, Enum.KeyCode.X)
bindButton(buttons.C, Enum.KeyCode.C)
bindButton(buttons.R, Enum.KeyCode.R)

-- 技能说明面板
local infoFrame = Instance.new("Frame")
infoFrame.Name = "SkillInfo"
infoFrame.BackgroundColor3 = Color3.fromHex("#F0F8FF")
infoFrame.BackgroundTransparency = 0.1
infoFrame.Size = UDim2.new(0, 220, 0, 150)
infoFrame.Position = UDim2.new(0, 20, 0, 20)
infoFrame.AnchorPoint = Vector2.new(0, 0)

local infoCorner = Instance.new("UICorner")
infoCorner.CornerRadius = UDim.new(0, 12)
infoCorner.Parent = infoFrame

local infoStroke = Instance.new("UIStroke")
infoStroke.Color = STYLE.MainButton.Color
infoStroke.Thickness = 2
infoStroke.Parent = infoFrame
infoFrame.Parent = Gui

-- 语言切换功能
local currentLang = "zh"
local textLabels = {}

local function updateLanguage()
    langButton.Text = TEXT[currentLang].lang
    for i, label in ipairs(textLabels) do
        local desc = TEXT[currentLang].skills[i]
        label.Text = string.format("<b>%s</b> - %s", desc.key, desc.action)
    end
end

langButton.MouseButton1Click:Connect(function()
    currentLang = currentLang == "zh" and "en" or "zh"
    updateLanguage()
end)

-- 添加技能说明
for i, desc in ipairs(TEXT.zh.skills) do
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -30, 0, 30)
    textLabel.Position = UDim2.new(0, 15, 0, 15 + (i-1)*30)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = string.format("<b>%s</b> - %s", desc.key, desc.action)
    textLabel.TextColor3 = Color3.fromHex("#1E5F9E")
    textLabel.Font = Enum.Font.GothamMedium
    textLabel.TextSize = 14
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.RichText = true
    table.insert(textLabels, textLabel)
    textLabel.Parent = infoFrame
end