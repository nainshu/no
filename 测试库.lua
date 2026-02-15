repeat task.wait() until game:IsLoaded()

local library = {}
library.flags = {}
library.searchableElements = {} -- 存储所有组件用于搜索
library.openSections = {} -- 记录 Section 展开状态

local services = setmetatable({}, {
	__index = function(t, k)
		return game.GetService(game, k)
	end,
})

local UserInputService = services.UserInputService
local TweenService = services.TweenService
local RunService = services.RunService
local CoreGui = services.CoreGui
local Players = services.Players
local mouse = Players.LocalPlayer:GetMouse()

-- // OBSIDIAN 配色方案 (高对比度修复) // --
local Scheme = {
    BackgroundColor = Color3.fromRGB(15, 15, 15),
    MainColor = Color3.fromRGB(25, 25, 25),       -- 组件背景
    AccentColor = Color3.fromRGB(125, 85, 255),   -- 紫色高亮
    OutlineColor = Color3.fromRGB(60, 60, 60),    -- 边框颜色
    FontColor = Color3.fromRGB(255, 255, 255),
    SecondaryFontColor = Color3.fromRGB(180, 180, 180),
    Font = Enum.Font.GothamMedium,                -- 使用更清晰的字体
}

-- // 辅助函数 // --
local function AddOutline(instance, thickness, color)
    local stroke = Instance.new("UIStroke")
    stroke.Parent = instance
    stroke.Color = color or Scheme.OutlineColor
    stroke.Thickness = thickness or 1
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    return stroke
end

local function AddCorner(instance, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius or 4)
    corner.Parent = instance
    return corner
end

local function Tween(instance, info, goals)
    TweenService:Create(instance, TweenInfo.new(unpack(info)), goals):Play()
end

local function MakeDraggable(frame, dragHandle)
    local dragging, dragInput, dragStart, startPos
    local handle = dragHandle or frame
    
    handle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            TweenService:Create(frame, TweenInfo.new(0.05), {
                Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            }):Play()
        end
    end)
end

-- // 核心库逻辑 // --
function library.new(name, versionText)
    -- 清理旧 UI
    for _, v in next, CoreGui:GetChildren() do
        if v.Name == "REN_OBSIDIAN_UI" then v:Destroy() end
    end

    versionText = versionText or "version: 1.0.0"
    
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "REN_OBSIDIAN_UI"
    ScreenGui.Parent = CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    -- 主窗口
    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = ScreenGui
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Scheme.BackgroundColor
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 650, 0, 420)
    Main.ClipsDescendants = true
    AddCorner(Main, 6)
    AddOutline(Main, 1, Color3.fromRGB(80,80,80)) -- 稍微亮一点的边框

    -- 侧边栏
    local Sidebar = Instance.new("Frame")
    Sidebar.Name = "Sidebar"
    Sidebar.Parent = Main
    Sidebar.BackgroundColor3 = Scheme.BackgroundColor
    Sidebar.BorderSizePixel = 0
    Sidebar.Size = UDim2.new(0, 160, 1, 0)
    Sidebar.ZIndex = 2
    
    local SidebarDivider = Instance.new("Frame")
    SidebarDivider.Parent = Sidebar
    SidebarDivider.BackgroundColor3 = Scheme.OutlineColor
    SidebarDivider.BorderSizePixel = 0
    SidebarDivider.Position = UDim2.new(1, -1, 0, 0)
    SidebarDivider.Size = UDim2.new(0, 1, 1, 0)

    -- 标题
    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Parent = Sidebar
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Position = UDim2.new(0, 15, 0, 15)
    TitleLabel.Size = UDim2.new(1, -20, 0, 25)
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.Text = name
    TitleLabel.TextColor3 = Scheme.AccentColor
    TitleLabel.TextSize = 18
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

    -- Tab 容器
    local TabContainer = Instance.new("ScrollingFrame")
    TabContainer.Name = "TabContainer"
    TabContainer.Parent = Sidebar
    TabContainer.BackgroundTransparency = 1
    TabContainer.BorderSizePixel = 0
    TabContainer.Position = UDim2.new(0, 0, 0, 60)
    TabContainer.Size = UDim2.new(1, 0, 1, -60)
    TabContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabContainer.ScrollBarThickness = 0
    
    local TabListLayout = Instance.new("UIListLayout")
    TabListLayout.Parent = TabContainer
    TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabListLayout.Padding = UDim.new(0, 5)

    -- 顶部栏 (搜索 + 移动)
    local Topbar = Instance.new("Frame")
    Topbar.Name = "Topbar"
    Topbar.Parent = Main
    Topbar.BackgroundTransparency = 1
    Topbar.Position = UDim2.new(0, 160, 0, 0)
    Topbar.Size = UDim2.new(1, -160, 0, 50)
    Topbar.ZIndex = 2

    -- 搜索框
    local SearchFrame = Instance.new("Frame")
    SearchFrame.Parent = Topbar
    SearchFrame.BackgroundColor3 = Scheme.MainColor
    SearchFrame.Position = UDim2.new(0, 15, 0, 10)
    SearchFrame.Size = UDim2.new(1, -60, 0, 30)
    AddCorner(SearchFrame, 4)
    AddOutline(SearchFrame, 1)

    local SearchIcon = Instance.new("ImageLabel")
    SearchIcon.Parent = SearchFrame
    SearchIcon.BackgroundTransparency = 1
    SearchIcon.Image = "rbxassetid://6031154871"
    SearchIcon.ImageColor3 = Scheme.SecondaryFontColor
    SearchIcon.Position = UDim2.new(0, 8, 0, 7)
    SearchIcon.Size = UDim2.new(0, 16, 0, 16)

    local SearchInput = Instance.new("TextBox")
    SearchInput.Parent = SearchFrame
    SearchInput.BackgroundTransparency = 1
    SearchInput.Position = UDim2.new(0, 32, 0, 0)
    SearchInput.Size = UDim2.new(1, -35, 1, 0)
    SearchInput.Font = Scheme.Font
    SearchInput.PlaceholderText = "Search features..."
    SearchInput.PlaceholderColor3 = Scheme.SecondaryFontColor
    SearchInput.Text = ""
    SearchInput.TextColor3 = Scheme.FontColor
    SearchInput.TextSize = 14
    SearchInput.TextXAlignment = Enum.TextXAlignment.Left

    -- 移动图标
    local MoveButton = Instance.new("ImageButton")
    MoveButton.Parent = Topbar
    MoveButton.BackgroundTransparency = 1
    MoveButton.Position = UDim2.new(1, -40, 0, 10)
    MoveButton.Size = UDim2.new(0, 30, 0, 30)
    MoveButton.Image = "rbxassetid://6031094678" -- 十字箭头
    MoveButton.ImageColor3 = Scheme.SecondaryFontColor
    MakeDraggable(Main, MoveButton) -- 绑定拖动

    -- 内容区域
    local ContentContainer = Instance.new("Frame")
    ContentContainer.Name = "ContentContainer"
    ContentContainer.Parent = Main
    ContentContainer.BackgroundTransparency = 1
    ContentContainer.Position = UDim2.new(0, 170, 0, 55)
    ContentContainer.Size = UDim2.new(1, -180, 1, -80)
    ContentContainer.ClipsDescendants = true

    -- 版本号 Footer
    local Footer = Instance.new("TextLabel")
    Footer.Parent = Main
    Footer.BackgroundTransparency = 1
    Footer.Position = UDim2.new(0, 160, 1, -20)
    Footer.Size = UDim2.new(1, -160, 0, 20)
    Footer.Font = Scheme.Font
    Footer.Text = versionText
    Footer.TextColor3 = Color3.fromRGB(100, 100, 100)
    Footer.TextSize = 12

    -- 搜索逻辑
    local function UpdateSearch()
        local text = SearchInput.Text:lower()
        for _, item in pairs(library.searchableElements) do
            if text == "" then
                -- 搜索为空，显示所有，并恢复 Section 的原始高度
                item.Instance.Visible = true
                if item.ParentSection then
                    item.ParentSection.Visible = true
                end
            else
                -- 搜索不为空
                if string.find(item.Text:lower(), text, 1, true) then
                    item.Instance.Visible = true
                    if item.ParentSection then
                        item.ParentSection.Visible = true
                    end
                else
                    item.Instance.Visible = false
                end
            end
        end
        
        -- 强制刷新所有布局
        for _, layout in pairs(ContentContainer:GetDescendants()) do
            if layout:IsA("UIListLayout") then
                -- 触发布局重新计算
                local oldSort = layout.SortOrder
                layout.SortOrder = Enum.SortOrder.LayoutOrder
            end
        end
    end
    SearchInput:GetPropertyChangedSignal("Text"):Connect(UpdateSearch)

    -- Tab 切换逻辑
    function library:SwitchTab(tabId)
        for _, v in pairs(ContentContainer:GetChildren()) do
            if v:IsA("ScrollingFrame") then v.Visible = false end
        end
        for _, v in pairs(TabContainer:GetChildren()) do
            if v:IsA("TextButton") then
                Tween(v.Title, {0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out}, {TextColor3 = Scheme.SecondaryFontColor})
                Tween(v.Indicator, {0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out}, {BackgroundTransparency = 1})
            end
        end

        local selectedTab = ContentContainer:FindFirstChild(tabId)
        local selectedBtn = TabContainer:FindFirstChild("Btn_" .. tabId)
        
        if selectedTab and selectedBtn then
            selectedTab.Visible = true
            Tween(selectedBtn.Title, {0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out}, {TextColor3 = Scheme.AccentColor})
            Tween(selectedBtn.Indicator, {0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out}, {BackgroundTransparency = 0})
        end
    end

    local window = {}

    function window:Tab(name, icon)
        local TabPage = Instance.new("ScrollingFrame")
        TabPage.Name = name
        TabPage.Parent = ContentContainer
        TabPage.BackgroundTransparency = 1
        TabPage.Size = UDim2.new(1, 0, 1, 0)
        TabPage.CanvasSize = UDim2.new(0, 0, 0, 0)
        TabPage.ScrollBarThickness = 2
        TabPage.ScrollBarImageColor3 = Scheme.AccentColor
        TabPage.Visible = false

        local PageLayout = Instance.new("UIListLayout")
        PageLayout.Parent = TabPage
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, 10)
        
        PageLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            TabPage.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 20)
        end)

        -- Tab 按钮
        local TabBtn = Instance.new("TextButton")
        TabBtn.Name = "Btn_" .. name
        TabBtn.Parent = TabContainer
        TabBtn.BackgroundTransparency = 1
        TabBtn.Size = UDim2.new(1, 0, 0, 36)
        TabBtn.Text = ""

        local Indicator = Instance.new("Frame")
        Indicator.Name = "Indicator"
        Indicator.Parent = TabBtn
        Indicator.BackgroundColor3 = Scheme.AccentColor
        Indicator.BackgroundTransparency = 1
        Indicator.Position = UDim2.new(0, 0, 0.25, 0)
        Indicator.Size = UDim2.new(0, 3, 0.5, 0)
        AddCorner(Indicator, 2)

        local IconImg = Instance.new("ImageLabel")
        IconImg.Parent = TabBtn
        IconImg.BackgroundTransparency = 1
        IconImg.Position = UDim2.new(0, 15, 0.5, -9)
        IconImg.Size = UDim2.new(0, 18, 0, 18)
        IconImg.Image = "rbxassetid://" .. (icon or "0")
        IconImg.ImageColor3 = Scheme.FontColor

        local Title = Instance.new("TextLabel")
        Title.Name = "Title"
        Title.Parent = TabBtn
        Title.BackgroundTransparency = 1
        Title.Position = UDim2.new(0, 45, 0, 0)
        Title.Size = UDim2.new(1, -45, 1, 0)
        Title.Font = Scheme.Font
        Title.Text = name
        Title.TextColor3 = Scheme.SecondaryFontColor
        Title.TextSize = 14
        Title.TextXAlignment = Enum.TextXAlignment.Left

        TabBtn.MouseButton1Click:Connect(function()
            library:SwitchTab(name)
        end)

        -- 默认选择第一个 Tab
        if #TabContainer:GetChildren() == 2 then -- UIListLayout + this button
            library:SwitchTab(name)
        end

        local tab = {}

        function tab:section(sectionName, open)
            local SectionFrame = Instance.new("Frame")
            SectionFrame.Name = "Section_" .. sectionName
            SectionFrame.Parent = TabPage
            SectionFrame.BackgroundColor3 = Scheme.BackgroundColor
            SectionFrame.BackgroundTransparency = 1
            SectionFrame.Size = UDim2.new(1, -10, 0, 30)
            SectionFrame.ClipsDescendants = true
            
            -- 不使用边框，使用标题头分割
            local Header = Instance.new("Frame")
            Header.Parent = SectionFrame
            Header.BackgroundColor3 = Scheme.MainColor
            Header.Size = UDim2.new(1, 0, 0, 30)
            AddCorner(Header, 4)
            -- 给 Header 添加边框，让 Section 看起来更整体
            -- AddOutline(Header, 1) 

            local HeaderTitle = Instance.new("TextLabel")
            HeaderTitle.Parent = Header
            HeaderTitle.BackgroundTransparency = 1
            HeaderTitle.Position = UDim2.new(0, 10, 0, 0)
            HeaderTitle.Size = UDim2.new(1, -10, 1, 0)
            HeaderTitle.Font = Enum.Font.GothamBold
            HeaderTitle.Text = sectionName
            HeaderTitle.TextColor3 = Scheme.SecondaryFontColor
            HeaderTitle.TextSize = 12
            HeaderTitle.TextXAlignment = Enum.TextXAlignment.Left

            local Container = Instance.new("Frame")
            Container.Parent = SectionFrame
            Container.BackgroundTransparency = 1
            Container.Position = UDim2.new(0, 0, 0, 35) -- 标题下方的空间
            Container.Size = UDim2.new(1, 0, 0, 0)
            
            local ContainerLayout = Instance.new("UIListLayout")
            ContainerLayout.Parent = Container
            ContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
            ContainerLayout.Padding = UDim.new(0, 6)

            -- 自动调整高度
            ContainerLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                Container.Size = UDim2.new(1, 0, 0, ContainerLayout.AbsoluteContentSize.Y)
                SectionFrame.Size = UDim2.new(1, -10, 0, ContainerLayout.AbsoluteContentSize.Y + 40)
            end)

            local section = {}

            -- [Button] 按钮
            function section:Button(text, callback)
                local Btn = Instance.new("TextButton")
                Btn.Name = "Button"
                Btn.Parent = Container
                Btn.BackgroundColor3 = Scheme.MainColor
                Btn.Size = UDim2.new(1, 0, 0, 32)
                Btn.AutoButtonColor = false
                Btn.Font = Scheme.Font
                Btn.Text = text
                Btn.TextColor3 = Scheme.FontColor
                Btn.TextSize = 14
                AddCorner(Btn, 4)
                AddOutline(Btn, 1)

                Btn.MouseButton1Click:Connect(function()
                    Tween(Btn, {0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out}, {BackgroundColor3 = Scheme.AccentColor})
                    task.wait(0.1)
                    Tween(Btn, {0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out}, {BackgroundColor3 = Scheme.MainColor})
                    pcall(callback)
                end)

                table.insert(library.searchableElements, {Instance = Btn, Text = text, ParentSection = SectionFrame})
            end

            -- [Toggle] 开关 (完全重写，确保可见)
            function section:Toggle(text, flag, default, callback)
                library.flags[flag] = default
                
                local ToggleFrame = Instance.new("TextButton") -- 容器，可点击
                ToggleFrame.Name = "Toggle"
                ToggleFrame.Parent = Container
                ToggleFrame.BackgroundColor3 = Scheme.MainColor
                ToggleFrame.Size = UDim2.new(1, 0, 0, 32)
                ToggleFrame.AutoButtonColor = false
                ToggleFrame.Text = ""
                AddCorner(ToggleFrame, 4)
                AddOutline(ToggleFrame, 1)

                local Title = Instance.new("TextLabel")
                Title.Parent = ToggleFrame
                Title.BackgroundTransparency = 1
                Title.Position = UDim2.new(0, 10, 0, 0)
                Title.Size = UDim2.new(0.7, 0, 1, 0)
                Title.Font = Scheme.Font
                Title.Text = text
                Title.TextColor3 = Scheme.FontColor
                Title.TextSize = 14
                Title.TextXAlignment = Enum.TextXAlignment.Left

                -- 开关轨道
                local Track = Instance.new("Frame")
                Track.Name = "Track"
                Track.Parent = ToggleFrame
                Track.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- 深色轨道
                Track.Position = UDim2.new(1, -45, 0.5, -10)
                Track.Size = UDim2.new(0, 36, 0, 20)
                AddCorner(Track, 10)
                -- 轨道描边 (增加对比度)
                local TrackStroke = AddOutline(Track, 1, Color3.fromRGB(80,80,80))

                -- 开关圆点
                local Knob = Instance.new("Frame")
                Knob.Name = "Knob"
                Knob.Parent = Track
                Knob.BackgroundColor3 = Color3.fromRGB(200, 200, 200) -- 灰白色默认
                Knob.Position = UDim2.new(0, 2, 0.5, -8)
                Knob.Size = UDim2.new(0, 16, 0, 16)
                AddCorner(Knob, 8)

                local toggled = default
                local function UpdateState()
                    if toggled then
                        Tween(Track, {0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out}, {BackgroundColor3 = Scheme.AccentColor})
                        Tween(Knob, {0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out}, {Position = UDim2.new(1, -18, 0.5, -8), BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
                        TrackStroke.Color = Scheme.AccentColor
                    else
                        Tween(Track, {0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out}, {BackgroundColor3 = Color3.fromRGB(40, 40, 40)})
                        Tween(Knob, {0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out}, {Position = UDim2.new(0, 2, 0.5, -8), BackgroundColor3 = Color3.fromRGB(200, 200, 200)})
                        TrackStroke.Color = Color3.fromRGB(80,80,80)
                    end
                    library.flags[flag] = toggled
                    pcall(callback, toggled)
                end

                if default then UpdateState() end

                ToggleFrame.MouseButton1Click:Connect(function()
                    toggled = not toggled
                    UpdateState()
                end)

                table.insert(library.searchableElements, {Instance = ToggleFrame, Text = text, ParentSection = SectionFrame})
            end

            -- [Slider] 滑条
            function section:Slider(text, flag, default, min, max, precise, callback)
                library.flags[flag] = default
                
                local SliderFrame = Instance.new("Frame")
                SliderFrame.Name = "Slider"
                SliderFrame.Parent = Container
                SliderFrame.BackgroundColor3 = Scheme.MainColor
                SliderFrame.Size = UDim2.new(1, 0, 0, 45)
                AddCorner(SliderFrame, 4)
                AddOutline(SliderFrame, 1)

                local Title = Instance.new("TextLabel")
                Title.Parent = SliderFrame
                Title.BackgroundTransparency = 1
                Title.Position = UDim2.new(0, 10, 0, 5)
                Title.Size = UDim2.new(0.5, 0, 0, 20)
                Title.Font = Scheme.Font
                Title.Text = text
                Title.TextColor3 = Scheme.FontColor
                Title.TextSize = 14
                Title.TextXAlignment = Enum.TextXAlignment.Left

                local ValueLabel = Instance.new("TextLabel")
                ValueLabel.Parent = SliderFrame
                ValueLabel.BackgroundTransparency = 1
                ValueLabel.Position = UDim2.new(1, -60, 0, 5)
                ValueLabel.Size = UDim2.new(0, 50, 0, 20)
                ValueLabel.Font = Scheme.Font
                ValueLabel.Text = tostring(default)
                ValueLabel.TextColor3 = Scheme.AccentColor
                ValueLabel.TextSize = 14
                ValueLabel.TextXAlignment = Enum.TextXAlignment.Right

                local SliderBar = Instance.new("TextButton")
                SliderBar.Parent = SliderFrame
                SliderBar.BackgroundColor3 = Scheme.BackgroundColor
                SliderBar.Position = UDim2.new(0, 10, 0, 30)
                SliderBar.Size = UDim2.new(1, -20, 0, 6)
                SliderBar.AutoButtonColor = false
                SliderBar.Text = ""
                AddCorner(SliderBar, 3)

                local Fill = Instance.new("Frame")
                Fill.Parent = SliderBar
                Fill.BackgroundColor3 = Scheme.AccentColor
                Fill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)
                AddCorner(Fill, 3)

                local dragging = false
                local function UpdateSlide(input)
                    local pos = UDim2.new(math.clamp((input.Position.X - SliderBar.AbsolutePosition.X) / SliderBar.AbsoluteSize.X, 0, 1), 0, 1, 0)
                    Fill.Size = pos
                    local val = min + (max - min) * pos.X.Scale
                    if not precise then val = math.floor(val) end
                    ValueLabel.Text = tostring(val)
                    library.flags[flag] = val
                    pcall(callback, val)
                end

                SliderBar.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        dragging = true
                        UpdateSlide(input)
                    end
                end)
                
                UserInputService.InputChanged:Connect(function(input)
                    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                        UpdateSlide(input)
                    end
                end)
                
                UserInputService.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                        dragging = false
                    end
                end)

                table.insert(library.searchableElements, {Instance = SliderFrame, Text = text, ParentSection = SectionFrame})
            end

            -- [Label] 文本
            function section:Label(text)
                local Lab = Instance.new("TextLabel")
                Lab.Parent = Container
                Lab.BackgroundTransparency = 1
                Lab.Size = UDim2.new(1, 0, 0, 20)
                Lab.Font = Scheme.Font
                Lab.Text = text
                Lab.TextColor3 = Scheme.SecondaryFontColor
                Lab.TextSize = 13
                Lab.TextXAlignment = Enum.TextXAlignment.Left
                
                local Padding = Instance.new("UIPadding", Lab)
                Padding.PaddingLeft = UDim.new(0, 10)

                table.insert(library.searchableElements, {Instance = Lab, Text = text, ParentSection = SectionFrame})
            end

            -- [Textbox] 输入框
            function section:Textbox(text, flag, default, callback)
                library.flags[flag] = default
                local BoxFrame = Instance.new("Frame")
                BoxFrame.Parent = Container
                BoxFrame.BackgroundColor3 = Scheme.MainColor
                BoxFrame.Size = UDim2.new(1, 0, 0, 32)
                AddCorner(BoxFrame, 4)
                AddOutline(BoxFrame, 1)

                local Label = Instance.new("TextLabel")
                Label.Parent = BoxFrame
                Label.BackgroundTransparency = 1
                Label.Position = UDim2.new(0, 10, 0, 0)
                Label.Size = UDim2.new(0.5, 0, 1, 0)
                Label.Font = Scheme.Font
                Label.Text = text
                Label.TextColor3 = Scheme.FontColor
                Label.TextSize = 14
                Label.TextXAlignment = Enum.TextXAlignment.Left

                local Input = Instance.new("TextBox")
                Input.Parent = BoxFrame
                Input.BackgroundColor3 = Scheme.BackgroundColor
                Input.Position = UDim2.new(0.6, 0, 0.15, 0)
                Input.Size = UDim2.new(0.38, 0, 0.7, 0)
                Input.Font = Scheme.Font
                Input.Text = default
                Input.PlaceholderText = "Type..."
                Input.TextColor3 = Scheme.FontColor
                Input.TextSize = 13
                AddCorner(Input, 4)

                Input.FocusLost:Connect(function()
                    library.flags[flag] = Input.Text
                    pcall(callback, Input.Text)
                end)

                table.insert(library.searchableElements, {Instance = BoxFrame, Text = text, ParentSection = SectionFrame})
            end

            -- [Dropdown] 下拉菜单
            function section:Dropdown(text, flag, options, callback)
                library.flags[flag] = nil
                
                local DropFrame = Instance.new("Frame")
                DropFrame.Parent = Container
                DropFrame.BackgroundColor3 = Scheme.MainColor
                DropFrame.Size = UDim2.new(1, 0, 0, 32)
                DropFrame.ClipsDescendants = true
                AddCorner(DropFrame, 4)
                AddOutline(DropFrame, 1)
                
                local DropBtn = Instance.new("TextButton")
                DropBtn.Parent = DropFrame
                DropBtn.BackgroundTransparency = 1
                DropBtn.Size = UDim2.new(1, 0, 0, 32)
                DropBtn.Text = ""

                local Label = Instance.new("TextLabel")
                Label.Parent = DropFrame
                Label.BackgroundTransparency = 1
                Label.Position = UDim2.new(0, 10, 0, 0)
                Label.Size = UDim2.new(1, -40, 0, 32)
                Label.Font = Scheme.Font
                Label.Text = text .. ": ..."
                Label.TextColor3 = Scheme.FontColor
                Label.TextSize = 14
                Label.TextXAlignment = Enum.TextXAlignment.Left

                local Arrow = Instance.new("TextLabel")
                Arrow.Parent = DropFrame
                Arrow.BackgroundTransparency = 1
                Arrow.Position = UDim2.new(1, -30, 0, 0)
                Arrow.Size = UDim2.new(0, 30, 0, 32)
                Arrow.Font = Enum.Font.GothamBold
                Arrow.Text = "+"
                Arrow.TextColor3 = Scheme.SecondaryFontColor
                Arrow.TextSize = 18

                local DropList = Instance.new("UIListLayout")
                DropList.Parent = DropFrame
                DropList.SortOrder = Enum.SortOrder.LayoutOrder
                DropList.Padding = UDim.new(0, 2)

                -- 占位 Frame，把按钮挤下去
                local Placeholder = Instance.new("Frame")
                Placeholder.Parent = DropFrame
                Placeholder.BackgroundTransparency = 1
                Placeholder.Size = UDim2.new(1, 0, 0, 32)
                Placeholder.LayoutOrder = -1

                local isOpen = false
                local function ToggleDrop()
                    isOpen = not isOpen
                    if isOpen then
                        local contentSize = 34 + (#options * 26)
                        DropFrame.Size = UDim2.new(1, 0, 0, contentSize)
                        Arrow.Text = "-"
                    else
                        DropFrame.Size = UDim2.new(1, 0, 0, 32)
                        Arrow.Text = "+"
                    end
                    -- 强制父级 Section 重新计算高度
                    ContainerLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Wait()
                end

                DropBtn.MouseButton1Click:Connect(ToggleDrop)

                for _, opt in ipairs(options) do
                    local OptBtn = Instance.new("TextButton")
                    OptBtn.Parent = DropFrame
                    OptBtn.BackgroundColor3 = Scheme.BackgroundColor
                    OptBtn.Size = UDim2.new(1, -10, 0, 24)
                    OptBtn.Position = UDim2.new(0, 5, 0, 0) -- ListLayout 会处理位置
                    OptBtn.Font = Scheme.Font
                    OptBtn.Text = opt
                    OptBtn.TextColor3 = Scheme.SecondaryFontColor
                    OptBtn.TextSize = 13
                    AddCorner(OptBtn, 4)

                    OptBtn.MouseButton1Click:Connect(function()
                        Label.Text = text .. ": " .. opt
                        library.flags[flag] = opt
                        pcall(callback, opt)
                        ToggleDrop()
                    end)
                end

                table.insert(library.searchableElements, {Instance = DropFrame, Text = text, ParentSection = SectionFrame})
            end

            return section
        end
        return tab
    end

    -- 浮动开关 (Menu Button)
    local ToggleBtn = Instance.new("TextButton")
    ToggleBtn.Name = "ToggleUI"
    ToggleBtn.Parent = ScreenGui
    ToggleBtn.BackgroundColor3 = Scheme.MainColor
    ToggleBtn.Position = UDim2.new(0, 10, 0.5, 0)
    ToggleBtn.Size = UDim2.new(0, 50, 0, 50)
    ToggleBtn.Font = Scheme.Font
    ToggleBtn.Text = "Menu"
    ToggleBtn.TextColor3 = Scheme.FontColor
    ToggleBtn.TextSize = 14
    AddCorner(ToggleBtn, 8)
    AddOutline(ToggleBtn, 1)
    MakeDraggable(ToggleBtn)

    ToggleBtn.MouseButton1Click:Connect(function()
        Main.Visible = not Main.Visible
    end)

    -- 键盘快捷键 (Right Control)
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not gameProcessed and input.KeyCode == Enum.KeyCode.RightControl then
            Main.Visible = not Main.Visible
        end
    end)

    return window
end

return library
