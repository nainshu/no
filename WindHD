--[[
    WindHD - Obsidian Edition (黑洞·终极修复整合版)
    包含：UI库核心 + 示例功能
    修复：
    1. 解决了 "attempt to index nil with 'Window'" 错误
    2. 确保滑块 (Slider) 丝滑可用
    3. 确保窗口 (Window) 可拖动
    4. 完美还原黑洞霓虹视觉风格
]]

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

--====================================================================
-- [第一部分] UI 库核心代码 (请勿修改)
--====================================================================

local Library = {}

-- // 1. 视觉配置 (黑洞风格) //
local Theme = {
    Background = Color3.fromRGB(0, 0, 0),         -- 纯黑背景
    BackgroundTransparency = 0.5,                 -- 半透明
    Accent = Color3.fromRGB(60, 160, 255),        -- 霓虹蓝
    SidebarColor = Color3.fromRGB(10, 10, 10),    -- 侧边栏深黑
    ItemColor = Color3.fromRGB(25, 25, 25),       -- 控件背景
    TextColor = Color3.fromRGB(255, 255, 255),    -- 纯白文字
    TextGray = Color3.fromRGB(150, 150, 150),     -- 次要文字
    Font = Enum.Font.GothamBold,
    CornerRadius = UDim.new(0, 8)
}

-- // 2. 辅助函数 //

local function CreateStroke(parent, color, transparency)
    local Stroke = Instance.new("UIStroke")
    Stroke.Parent = parent
    Stroke.Color = color or Theme.ItemColor
    Stroke.Thickness = 1
    Stroke.Transparency = transparency or 0.8
    Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    return Stroke
end

local function CreateRipple(parent)
    parent.ClipsDescendants = true
    parent.MouseButton1Click:Connect(function()
        local Ripple = Instance.new("ImageLabel")
        Ripple.Name = "Ripple"
        Ripple.Parent = parent
        Ripple.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Ripple.BackgroundTransparency = 1.000
        Ripple.ZIndex = parent.ZIndex + 1
        Ripple.Image = "rbxassetid://2708891598"
        Ripple.ImageTransparency = 0.800
        Ripple.ScaleType = Enum.ScaleType.Fit
        
        local x, y = Mouse.X, Mouse.Y
        Ripple.Position = UDim2.new((x - parent.AbsolutePosition.X) / parent.AbsoluteSize.X, 0, (y - parent.AbsolutePosition.Y) / parent.AbsoluteSize.Y, 0)
        Ripple.Size = UDim2.new(0,0,0,0)
        
        local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = TweenService:Create(Ripple, tweenInfo, {
            Size = UDim2.new(1.5, 0, 1.5, 0),
            Position = UDim2.new(-0.25, 0, -0.25, 0),
            ImageTransparency = 1
        })
        tween:Play()
        tween.Completed:Connect(function() Ripple:Destroy() end)
    end)
end

local function MakeDraggable(frame)
    local dragging, dragInput, dragStart, startPos
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then dragInput = input end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            TweenService:Create(frame, TweenInfo.new(0.08, Enum.EasingStyle.Sine), {
                Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            }):Play()
        end
    end)
end

-- // 3. 核心构建逻辑 //

function Library:Window(Config)
    -- 清理旧UI
    for _, v in pairs(CoreGui:GetChildren()) do
        if v.Name == "WindHD_Obsidian" then v:Destroy() end
    end

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "WindHD_Obsidian"
    ScreenGui.Parent = CoreGui
    ScreenGui.IgnoreGuiInset = true
    -- 安全保护
    if syn and syn.protect_gui then syn.protect_gui(ScreenGui) end

    -- 主容器
    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = ScreenGui
    Main.BackgroundColor3 = Theme.Background
    Main.BackgroundTransparency = Theme.BackgroundTransparency
    Main.Position = UDim2.new(0.5, -300, 0.5, -200)
    Main.Size = UDim2.new(0, 600, 0, 400)
    Main.ClipsDescendants = false
    
    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = Theme.CornerRadius
    MainCorner.Parent = Main
    
    CreateStroke(Main, Theme.Accent, 0.5)

    -- [核心] 黑洞霓虹光晕
    local Glow = Instance.new("ImageLabel")
    Glow.Name = "NeonGlow"
    Glow.Parent = Main
    Glow.AnchorPoint = Vector2.new(0.5, 0.5)
    Glow.Position = UDim2.new(0.5, 0, 0.5, 0)
    Glow.Size = UDim2.new(1, 55, 1, 55)
    Glow.BackgroundTransparency = 1
    Glow.Image = "rbxassetid://6015897843"
    Glow.ImageTransparency = 0.5
    Glow.ScaleType = Enum.ScaleType.Slice
    Glow.SliceCenter = Rect.new(49, 49, 450, 450)
    Glow.ZIndex = -1

    local GlowGradient = Instance.new("UIGradient")
    GlowGradient.Parent = Glow
    GlowGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0.00, Theme.Accent),
        ColorSequenceKeypoint.new(0.50, Color3.fromRGB(155, 89, 255)),
        ColorSequenceKeypoint.new(1.00, Theme.Accent)
    })

    task.spawn(function()
        local rot = 0
        while Glow.Parent do
            rot = rot + 0.5
            GlowGradient.Rotation = rot
            task.wait(0.01)
        end
    end)

    MakeDraggable(Main)

    -- 侧边栏
    local Sidebar = Instance.new("Frame")
    Sidebar.Name = "Sidebar"
    Sidebar.Parent = Main
    Sidebar.BackgroundColor3 = Theme.SidebarColor
    Sidebar.BackgroundTransparency = 0.6
    Sidebar.Size = UDim2.new(0, 160, 1, 0)
    Sidebar.BorderSizePixel = 0
    
    local SidebarCorner = Instance.new("UICorner")
    SidebarCorner.CornerRadius = Theme.CornerRadius
    SidebarCorner.Parent = Sidebar
    
    local Title = Instance.new("TextLabel")
    Title.Parent = Sidebar
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0, 15, 0, 15)
    Title.Size = UDim2.new(1, -30, 0, 30)
    Title.Font = Theme.Font
    Title.Text = Config.Title or "Obsidian"
    Title.TextColor3 = Theme.TextColor
    Title.TextSize = 20
    Title.TextXAlignment = Enum.TextXAlignment.Left

    local TabContainer = Instance.new("ScrollingFrame")
    TabContainer.Parent = Sidebar
    TabContainer.BackgroundTransparency = 1
    TabContainer.Position = UDim2.new(0, 10, 0, 60)
    TabContainer.Size = UDim2.new(1, -20, 1, -70)
    TabContainer.ScrollBarThickness = 0
    
    local TabList = Instance.new("UIListLayout")
    TabList.Parent = TabContainer
    TabList.SortOrder = Enum.SortOrder.LayoutOrder
    TabList.Padding = UDim.new(0, 5)

    -- 内容区
    local Pages = Instance.new("Frame")
    Pages.Name = "Pages"
    Pages.Parent = Main
    Pages.BackgroundTransparency = 1
    Pages.Position = UDim2.new(0, 170, 0, 10)
    Pages.Size = UDim2.new(1, -180, 1, -20)
    Pages.ClipsDescendants = true

    local WindowFunctions = {}

    function WindowFunctions:Tab(name)
        local TabBtn = Instance.new("TextButton")
        TabBtn.Parent = TabContainer
        TabBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabBtn.BackgroundTransparency = 1
        TabBtn.Size = UDim2.new(1, 0, 0, 36)
        TabBtn.Text = ""
        CreateRipple(TabBtn)

        local TabTitle = Instance.new("TextLabel")
        TabTitle.Parent = TabBtn
        TabTitle.BackgroundTransparency = 1
        TabTitle.Size = UDim2.new(1, -10, 1, 0)
        TabTitle.Position = UDim2.new(0, 10, 0, 0)
        TabTitle.Font = Theme.Font
        TabTitle.Text = name
        TabTitle.TextColor3 = Theme.TextGray
        TabTitle.TextSize = 14
        TabTitle.TextXAlignment = Enum.TextXAlignment.Left
        
        local Indicator = Instance.new("Frame")
        Indicator.Parent = TabBtn
        Indicator.BackgroundColor3 = Theme.Accent
        Indicator.Size = UDim2.new(0, 3, 0.6, 0)
        Indicator.Position = UDim2.new(0, 0, 0.2, 0)
        Indicator.Visible = false
        local IndCorner = Instance.new("UICorner")
        IndCorner.CornerRadius = UDim.new(1, 0)
        IndCorner.Parent = Indicator

        local Page = Instance.new("ScrollingFrame")
        Page.Name = name .. "_Page"
        Page.Parent = Pages
        Page.BackgroundTransparency = 1
        Page.Size = UDim2.new(1, 0, 1, 0)
        Page.ScrollBarThickness = 2
        Page.ScrollBarImageColor3 = Theme.Accent
        Page.Visible = false
        
        local PageLayout = Instance.new("UIListLayout")
        PageLayout.Parent = Page
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, 10)
        
        PageLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 20)
        end)

        TabBtn.MouseButton1Click:Connect(function()
            for _, v in pairs(Pages:GetChildren()) do if v:IsA("ScrollingFrame") then v.Visible = false end end
            for _, v in pairs(TabContainer:GetChildren()) do 
                if v:IsA("TextButton") then
                    TweenService:Create(v:FindFirstChild("TextLabel"), TweenInfo.new(0.3), {TextColor3 = Theme.TextGray}):Play()
                    v:FindFirstChild("Frame").Visible = false
                end
            end
            Page.Visible = true
            Indicator.Visible = true
            TweenService:Create(TabTitle, TweenInfo.new(0.3), {TextColor3 = Theme.TextColor}):Play()
        end)

        if #TabContainer:GetChildren() == 2 then
            Page.Visible = true
            Indicator.Visible = true
            TabTitle.TextColor3 = Theme.TextColor
        end

        local TabFunctions = {}

        function TabFunctions:Section(title)
            local SectionTitle = Instance.new("TextLabel")
            SectionTitle.Parent = Page
            SectionTitle.BackgroundTransparency = 1
            SectionTitle.Size = UDim2.new(1, 0, 0, 25)
            SectionTitle.Font = Theme.Font
            SectionTitle.Text = title:upper()
            SectionTitle.TextColor3 = Theme.TextGray
            SectionTitle.TextSize = 12
            SectionTitle.TextXAlignment = Enum.TextXAlignment.Left
            
            local SectionContainer = Instance.new("Frame")
            SectionContainer.Parent = Page
            SectionContainer.BackgroundTransparency = 1
            SectionContainer.Size = UDim2.new(1, 0, 0, 0)
            
            local ContainerLayout = Instance.new("UIListLayout")
            ContainerLayout.Parent = SectionContainer
            ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
            ContainerLayout.Padding = UDim.new(0, 8)

            ContainerLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                SectionContainer.Size = UDim2.new(1, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
            end)

            local Elements = {}

            function Elements:Button(text, callback)
                local Btn = Instance.new("TextButton")
                Btn.Parent = SectionContainer
                Btn.BackgroundColor3 = Theme.ItemColor
                Btn.BackgroundTransparency = 0.2
                Btn.Size = UDim2.new(1, 0, 0, 38)
                Btn.Text = ""
                Btn.AutoButtonColor = false
                
                local BtnCorner = Instance.new("UICorner")
                BtnCorner.CornerRadius = UDim.new(0, 6)
                BtnCorner.Parent = Btn
                CreateStroke(Btn, Color3.fromRGB(60, 60, 60))
                CreateRipple(Btn)

                local BtnText = Instance.new("TextLabel")
                BtnText.Parent = Btn
                BtnText.BackgroundTransparency = 1
                BtnText.Size = UDim2.new(1, -20, 1, 0)
                BtnText.Position = UDim2.new(0, 10, 0, 0)
                BtnText.Font = Theme.Font
                BtnText.Text = text
                BtnText.TextColor3 = Theme.TextColor
                BtnText.TextSize = 14
                BtnText.TextXAlignment = Enum.TextXAlignment.Left

                local Icon = Instance.new("ImageLabel")
                Icon.Parent = Btn
                Icon.BackgroundTransparency = 1
                Icon.Position = UDim2.new(1, -30, 0.5, -10)
                Icon.Size = UDim2.new(0, 20, 0, 20)
                Icon.Image = "rbxassetid://3926305904"
                Icon.ImageColor3 = Theme.TextGray
                Icon.ImageTransparency = 0.5

                Btn.MouseButton1Click:Connect(callback or function() end)
            end

            function Elements:Toggle(text, default, callback)
                local toggled = default or false
                local TglBtn = Instance.new("TextButton")
                TglBtn.Parent = SectionContainer
                TglBtn.BackgroundColor3 = Theme.ItemColor
                TglBtn.BackgroundTransparency = 0.2
                TglBtn.Size = UDim2.new(1, 0, 0, 38)
                TglBtn.Text = ""
                TglBtn.AutoButtonColor = false
                
                local TglCorner = Instance.new("UICorner")
                TglCorner.CornerRadius = UDim.new(0, 6)
                TglCorner.Parent = TglBtn
                CreateStroke(TglBtn, Color3.fromRGB(60, 60, 60))
                CreateRipple(TglBtn)

                local TglText = Instance.new("TextLabel")
                TglText.Parent = TglBtn
                TglText.BackgroundTransparency = 1
                TglText.Size = UDim2.new(1, -60, 1, 0)
                TglText.Position = UDim2.new(0, 10, 0, 0)
                TglText.Font = Theme.Font
                TglText.Text = text
                TglText.TextColor3 = Theme.TextColor
                TglText.TextSize = 14
                TglText.TextXAlignment = Enum.TextXAlignment.Left

                local Switch = Instance.new("Frame")
                Switch.Parent = TglBtn
                Switch.BackgroundColor3 = toggled and Theme.Accent or Color3.fromRGB(50, 50, 50)
                Switch.Position = UDim2.new(1, -50, 0.5, -10)
                Switch.Size = UDim2.new(0, 40, 0, 20)
                local SwitchCorner = Instance.new("UICorner")
                SwitchCorner.CornerRadius = UDim.new(1, 0)
                SwitchCorner.Parent = Switch
                
                local Dot = Instance.new("Frame")
                Dot.Parent = Switch
                Dot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Dot.Position = toggled and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
                Dot.Size = UDim2.new(0, 16, 0, 16)
                local DotCorner = Instance.new("UICorner")
                DotCorner.CornerRadius = UDim.new(1, 0)
                DotCorner.Parent = Dot

                TglBtn.MouseButton1Click:Connect(function()
                    toggled = not toggled
                    pcall(callback, toggled)
                    
                    TweenService:Create(Switch, TweenInfo.new(0.2), {BackgroundColor3 = toggled and Theme.Accent or Color3.fromRGB(50, 50, 50)}):Play()
                    TweenService:Create(Dot, TweenInfo.new(0.2), {Position = toggled and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)}):Play()
                end)
            end

            -- 修复版滑块逻辑
            function Elements:Slider(text, min, max, default, callback)
                local value = default or min
                
                local SliderFrame = Instance.new("Frame")
                SliderFrame.Parent = SectionContainer
                SliderFrame.BackgroundColor3 = Theme.ItemColor
                SliderFrame.BackgroundTransparency = 0.2
                SliderFrame.Size = UDim2.new(1, 0, 0, 50)
                
                local Corner = Instance.new("UICorner")
                Corner.CornerRadius = UDim.new(0, 6)
                Corner.Parent = SliderFrame
                CreateStroke(SliderFrame, Color3.fromRGB(60, 60, 60))

                local Title = Instance.new("TextLabel")
                Title.Parent = SliderFrame
                Title.BackgroundTransparency = 1
                Title.Position = UDim2.new(0, 10, 0, 5)
                Title.Size = UDim2.new(1, -20, 0, 20)
                Title.Font = Theme.Font
                Title.Text = text
                Title.TextColor3 = Theme.TextColor
                Title.TextSize = 14
                Title.TextXAlignment = Enum.TextXAlignment.Left

                local ValueText = Instance.new("TextLabel")
                ValueText.Parent = SliderFrame
                ValueText.BackgroundTransparency = 1
                ValueText.Position = UDim2.new(0, 10, 0, 5)
                ValueText.Size = UDim2.new(1, -20, 0, 20)
                ValueText.Font = Theme.Font
                ValueText.Text = tostring(value)
                ValueText.TextColor3 = Theme.Accent
                ValueText.TextSize = 14
                ValueText.TextXAlignment = Enum.TextXAlignment.Right

                local SlideBar = Instance.new("TextButton")
                SlideBar.Parent = SliderFrame
                SlideBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                SlideBar.Position = UDim2.new(0, 10, 0, 32)
                SlideBar.Size = UDim2.new(1, -20, 0, 6)
                SlideBar.Text = ""
                SlideBar.AutoButtonColor = false
                
                local BarCorner = Instance.new("UICorner")
                BarCorner.CornerRadius = UDim.new(1, 0)
                BarCorner.Parent = SlideBar

                local Fill = Instance.new("Frame")
                Fill.Parent = SlideBar
                Fill.BackgroundColor3 = Theme.Accent
                Fill.Size = UDim2.new((value - min) / (max - min), 0, 1, 0)
                local FillCorner = Instance.new("UICorner")
                FillCorner.CornerRadius = UDim.new(1, 0)
                FillCorner.Parent = Fill

                local dragging = false
                
                local function UpdateSlide(input)
                    local pos = input.Position.X
                    local barPos = SlideBar.AbsolutePosition.X
                    local barSize = SlideBar.AbsoluteSize.X
                    local percent = math.clamp((pos - barPos) / barSize, 0, 1)
                    
                    value = math.floor(min + (max - min) * percent)
                    ValueText.Text = tostring(value)
                    TweenService:Create(Fill, TweenInfo.new(0.1), {Size = UDim2.new(percent, 0, 1, 0)}):Play()
                    pcall(callback, value)
                end

                SlideBar.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = true
                        UpdateSlide(input)
                    end
                end)

                UserInputService.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = false
                    end
                end)

                UserInputService.InputChanged:Connect(function(input)
                    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                        UpdateSlide(input)
                    end
                end)
            end
            
            function Elements:Dropdown(text, options, callback)
                local DropFrame = Instance.new("Frame")
                DropFrame.Parent = SectionContainer
                DropFrame.BackgroundColor3 = Theme.ItemColor
                DropFrame.BackgroundTransparency = 0.2
                DropFrame.Size = UDim2.new(1, 0, 0, 38)
                DropFrame.ClipsDescendants = true
                DropFrame.ZIndex = 2
                
                local Corner = Instance.new("UICorner")
                Corner.CornerRadius = UDim.new(0, 6)
                Corner.Parent = DropFrame
                CreateStroke(DropFrame, Color3.fromRGB(60, 60, 60))

                local DropBtn = Instance.new("TextButton")
                DropBtn.Parent = DropFrame
                DropBtn.BackgroundTransparency = 1
                DropBtn.Size = UDim2.new(1, 0, 0, 38)
                DropBtn.Text = ""
                
                local Title = Instance.new("TextLabel")
                Title.Parent = DropBtn
                Title.BackgroundTransparency = 1
                Title.Position = UDim2.new(0, 10, 0, 0)
                Title.Size = UDim2.new(1, -40, 0, 38)
                Title.Font = Theme.Font
                Title.Text = text .. "..."
                Title.TextColor3 = Theme.TextColor
                Title.TextSize = 14
                Title.TextXAlignment = Enum.TextXAlignment.Left

                local Arrow = Instance.new("ImageLabel")
                Arrow.Parent = DropBtn
                Arrow.BackgroundTransparency = 1
                Arrow.Position = UDim2.new(1, -30, 0.5, -8)
                Arrow.Size = UDim2.new(0, 16, 0, 16)
                Arrow.Image = "rbxassetid://6031091004"
                Arrow.ImageColor3 = Theme.TextGray

                local OptionList = Instance.new("UIListLayout")
                OptionList.Parent = DropFrame
                OptionList.SortOrder = Enum.SortOrder.LayoutOrder
                OptionList.Padding = UDim.new(0, 5)
                
                local Spacer = Instance.new("Frame")
                Spacer.Parent = DropFrame
                Spacer.BackgroundTransparency = 1
                Spacer.Size = UDim2.new(1,0,0,38)
                Spacer.Name = "Header"

                local open = false
                
                DropBtn.MouseButton1Click:Connect(function()
                    open = not open
                    if open then
                        TweenService:Create(DropFrame, TweenInfo.new(0.3), {Size = UDim2.new(1, 0, 0, 38 + (#options * 32) + 10)}):Play()
                        TweenService:Create(Arrow, TweenInfo.new(0.3), {Rotation = 180}):Play()
                    else
                        TweenService:Create(DropFrame, TweenInfo.new(0.3), {Size = UDim2.new(1, 0, 0, 38)}):Play()
                        TweenService:Create(Arrow, TweenInfo.new(0.3), {Rotation = 0}):Play()
                    end
                end)

                for _, opt in ipairs(options) do
                    local OptBtn = Instance.new("TextButton")
                    OptBtn.Parent = DropFrame
                    OptBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                    OptBtn.BackgroundTransparency = 0.5
                    OptBtn.Size = UDim2.new(1, -20, 0, 28)
                    OptBtn.Font = Theme.Font
                    OptBtn.Text = opt
                    OptBtn.TextColor3 = Theme.TextGray
                    OptBtn.TextSize = 13
                    
                    local OptCorner = Instance.new("UICorner")
                    OptCorner.CornerRadius = UDim.new(0, 4)
                    OptCorner.Parent = OptBtn

                    OptBtn.MouseButton1Click:Connect(function()
                        open = false
                        Title.Text = text .. ": " .. opt
                        pcall(callback, opt)
                        TweenService:Create(DropFrame, TweenInfo.new(0.3), {Size = UDim2.new(1, 0, 0, 38)}):Play()
                        TweenService:Create(Arrow, TweenInfo.new(0.3), {Rotation = 0}):Play()
                    end)
                end
            end

            return Elements
        end

        return TabFunctions
    end

    return WindowFunctions
end
