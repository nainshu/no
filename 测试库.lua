repeat
	task.wait()
until game:IsLoaded()

local library = {}
local ToggleUI = false
library.currentTab = nil
library.flags = {}
library.searchableElements = {} -- [新增] 用于存储搜索组件
local services = setmetatable({}, {
	__index = function(t, k)
		return game.GetService(game, k)
	end,
})
local mouse = services.Players.LocalPlayer:GetMouse()

-- // OBSIDIAN THEME CONFIGURATION // --
local Scheme = {
    BackgroundColor = Color3.fromRGB(15, 15, 15),
    MainColor = Color3.fromRGB(25, 25, 25),       -- Used for containers/buttons
    AccentColor = Color3.fromRGB(125, 85, 255),   -- Obsidian Purple
    OutlineColor = Color3.fromRGB(40, 40, 40),    -- Borders
    FontColor = Color3.fromRGB(255, 255, 255),
    Font = Enum.Font.Code,                        -- The specific tech font from Library.lua
    PlaceholderColor = Color3.fromRGB(180, 180, 180)
}

-- Helper to add the Obsidian Outline style
local function AddOutline(instance, cornerRadius)
    local stroke = Instance.new("UIStroke")
    stroke.Parent = instance
    stroke.Color = Scheme.OutlineColor
    stroke.Thickness = 1
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    return stroke
end

function Tween(obj, t, data)
	services.TweenService
		:Create(obj, TweenInfo.new(t[1], Enum.EasingStyle[t[2]], Enum.EasingDirection[t[3]]), data)
		:Play()
	return true
end

local toggled = false
local switchingTabs = false

function switchTab(new)
	if switchingTabs then
		return
	end
	local old = library.currentTab
	if old == nil then
		new[2].Visible = true
		library.currentTab = new
        -- Active Tab Coloring
		services.TweenService:Create(new[1], TweenInfo.new(0.1), { ImageColor3 = Scheme.AccentColor, ImageTransparency = 0 }):Play()
		services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), { TextTransparency = 0, TextColor3 = Scheme.AccentColor }):Play()
		return
	end
	if old[1] == new[1] then
		return
	end
	switchingTabs = true
	library.currentTab = new
    -- Deactivate Old
	services.TweenService:Create(old[1], TweenInfo.new(0.1), { ImageColor3 = Scheme.FontColor, ImageTransparency = 0.5 }):Play()
    services.TweenService:Create(old[1].TabText, TweenInfo.new(0.1), { TextTransparency = 0.5, TextColor3 = Scheme.FontColor }):Play()
    
    -- Activate New
	services.TweenService:Create(new[1], TweenInfo.new(0.1), { ImageColor3 = Scheme.AccentColor, ImageTransparency = 0 }):Play()
	services.TweenService:Create(new[1].TabText, TweenInfo.new(0.1), { TextTransparency = 0, TextColor3 = Scheme.AccentColor }):Play()
	
    old[2].Visible = false
	new[2].Visible = true
	task.wait(0.1)
	switchingTabs = false
end

function drag(frame, hold)
	if not hold then
		hold = frame
	end
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
		local delta = input.Position - dragStart
		frame.Position =
			UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	hold.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
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
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)
	services.UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

function library.new(library, name, theme)
	for _, v in next, services.CoreGui:GetChildren() do
		if v.Name == "REN" then
			v:Destroy()
		end
	end
	
	local dogent = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local TabMain = Instance.new("Frame")
	local MainC = Instance.new("UICorner")
	local SB = Instance.new("Frame")
	local SBC = Instance.new("UICorner")
	local Side = Instance.new("Frame")
	local TabBtns = Instance.new("ScrollingFrame")
	local TabBtnsL = Instance.new("UIListLayout")
	local ScriptTitle = Instance.new("TextLabel")
	local Open = Instance.new("TextButton")
	local UIG = Instance.new("UIGradient")
	local UICornerMain = Instance.new("UICorner")

	if syn and syn.protect_gui then
		syn.protect_gui(dogent)
	end
	
	dogent.Name = "REN"
	dogent.Parent = services.CoreGui
	
	function UiDestroy()
		dogent:Destroy()
	end

    function ToggleUILib()
        Main.Visible = not Main.Visible
    end
	
    -- // MAIN WINDOW STYLING // --
	Main.Name = "Main"
	Main.Parent = dogent
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Scheme.BackgroundColor
	Main.BackgroundTransparency = 0
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 572, 0, 400) -- [修改] 增加高度以容纳新元素
	Main.ZIndex = 1
	Main.Active = true
	Main.Draggable = true
    AddOutline(Main, 4)
	
	services.UserInputService.InputEnded:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.RightControl then
			Main.Visible = not Main.Visible
		end
	end)
	
	drag(Main)
	UICornerMain.Parent = Main
	UICornerMain.CornerRadius = UDim.new(0, 4)

    -- [新增] 顶部区域容器 (搜索栏 + 移动图标)
    local TopContainer = Instance.new("Frame")
    TopContainer.Name = "TopContainer"
    TopContainer.Parent = Main
    TopContainer.BackgroundColor3 = Scheme.BackgroundColor
    TopContainer.BackgroundTransparency = 1
    TopContainer.Position = UDim2.new(0, 118, 0, 0) -- 位于侧边栏右侧
    TopContainer.Size = UDim2.new(1, -118, 0, 50)

    -- [新增 1/3] 搜索栏 (Search Bar)
    local SearchBar = Instance.new("Frame")
    SearchBar.Name = "SearchBar"
    SearchBar.Parent = TopContainer
    SearchBar.BackgroundColor3 = Scheme.MainColor
    SearchBar.Position = UDim2.new(0, 10, 0, 10)
    SearchBar.Size = UDim2.new(1, -60, 0, 30) -- 留出右侧空间给 Move Icon
    AddOutline(SearchBar, 4)
    local SearchBarCorner = Instance.new("UICorner")
    SearchBarCorner.CornerRadius = UDim.new(0, 4)
    SearchBarCorner.Parent = SearchBar

    local SearchIcon = Instance.new("ImageLabel")
    SearchIcon.Parent = SearchBar
    SearchIcon.BackgroundTransparency = 1
    SearchIcon.Position = UDim2.new(0, 6, 0, 6)
    SearchIcon.Size = UDim2.new(0, 18, 0, 18)
    SearchIcon.Image = "rbxassetid://6031154871" -- 放大镜图标
    SearchIcon.ImageColor3 = Scheme.PlaceholderColor

    local SearchInput = Instance.new("TextBox")
    SearchInput.Parent = SearchBar
    SearchInput.BackgroundTransparency = 1
    SearchInput.Position = UDim2.new(0, 30, 0, 0)
    SearchInput.Size = UDim2.new(1, -35, 1, 0)
    SearchInput.Font = Scheme.Font
    SearchInput.PlaceholderText = "Search"
    SearchInput.PlaceholderColor3 = Scheme.PlaceholderColor
    SearchInput.Text = ""
    SearchInput.TextColor3 = Scheme.FontColor
    SearchInput.TextSize = 14
    SearchInput.TextXAlignment = Enum.TextXAlignment.Left

    -- [新增 2/3] 移动图标 (Move Icon)
    local MoveIcon = Instance.new("ImageButton")
    MoveIcon.Parent = TopContainer
    MoveIcon.BackgroundTransparency = 1
    MoveIcon.Position = UDim2.new(1, -40, 0, 10)
    MoveIcon.Size = UDim2.new(0, 30, 0, 30)
    MoveIcon.Image = "rbxassetid://6031094678" -- 十字移动图标
    MoveIcon.ImageColor3 = Scheme.PlaceholderColor
    
    -- 让移动图标也可以拖动窗口
    drag(Main, MoveIcon)

    -- [新增] 搜索逻辑
    local function UpdateSearch()
        local text = SearchInput.Text:lower()
        for _, item in pairs(library.searchableElements) do
            if text == "" then
                item.Instance.Visible = true
            else
                if string.find(item.Text:lower(), text) then
                    item.Instance.Visible = true
                else
                    item.Instance.Visible = false
                end
            end
        end
        -- 触发所有 UIListLayout 更新
        for _, obj in pairs(Main:GetDescendants()) do
            if obj:IsA("UIListLayout") then
                obj:ApplyLayout()
            end
        end
    end
    SearchInput:GetPropertyChangedSignal("Text"):Connect(UpdateSearch)
	
	TabMain.Name = "TabMain"
	TabMain.Parent = Main
	TabMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabMain.BackgroundTransparency = 1.000
    -- [修改] 向下移动内容区域，为搜索栏留出空间
	TabMain.Position = UDim2.new(0.217000037, 0, 0, 50) 
	TabMain.Size = UDim2.new(0, 448, 1, -70) -- 减去顶部和底部空间
	
	MainC.CornerRadius = UDim.new(0, 4)
	MainC.Name = "MainC"
	MainC.Parent = Main
	
    -- // SIDEBAR STYLING // --
	SB.Name = "SB"
	SB.Parent = Main
	SB.BackgroundColor3 = Scheme.BackgroundColor
    SB.BorderSizePixel = 0
	SB.BackgroundTransparency = 0
	SB.Size = UDim2.new(0, 8, 1, 0) -- Full height
	
	SBC.CornerRadius = UDim.new(0, 4)
	SBC.Name = "SBC"
	SBC.Parent = SB
	
	Side.Name = "Side"
	Side.Parent = SB
	Side.BackgroundColor3 = Scheme.BackgroundColor
	Side.BackgroundTransparency = 0
	Side.BorderColor3 = Scheme.OutlineColor
	Side.BorderSizePixel = 0
	Side.ClipsDescendants = true
	Side.Position = UDim2.new(1, 0, 0, 0)
	Side.Size = UDim2.new(0, 110, 1, 0) -- Full height
    
    local Separator = Instance.new("Frame")
    Separator.Parent = Main
    Separator.BackgroundColor3 = Scheme.OutlineColor
    Separator.BorderSizePixel = 0
    Separator.Position = UDim2.new(0, 118, 0, 0)
    Separator.Size = UDim2.new(0, 1, 1, 0)

	TabBtns.Name = "TabBtns"
	TabBtns.Parent = Side
	TabBtns.Active = true
	TabBtns.BackgroundColor3 = Scheme.BackgroundColor
	TabBtns.BackgroundTransparency = 1.000
	TabBtns.BorderSizePixel = 0
	TabBtns.Position = UDim2.new(0, 0, 0.0973535776, 0)
	TabBtns.Size = UDim2.new(0, 110, 1, -40)
	TabBtns.CanvasSize = UDim2.new(0, 0, 1, 0)
	TabBtns.ScrollBarThickness = 0
	
	TabBtnsL.Name = "TabBtnsL"
	TabBtnsL.Parent = TabBtns
	TabBtnsL.SortOrder = Enum.SortOrder.LayoutOrder
	TabBtnsL.Padding = UDim.new(0, 12)
	
	ScriptTitle.Name = "ScriptTitle"
	ScriptTitle.Parent = Side
	ScriptTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScriptTitle.BackgroundTransparency = 1.000
	ScriptTitle.Position = UDim2.new(0, 5, 0.00953488424, 0)
	ScriptTitle.Size = UDim2.new(0, 102, 0, 20)
	ScriptTitle.Font = Scheme.Font
	ScriptTitle.Text = name
	ScriptTitle.TextColor3 = Scheme.AccentColor
	ScriptTitle.TextSize = 15.000
	ScriptTitle.TextTransparency = 0
	ScriptTitle.TextScaled = true
	ScriptTitle.TextXAlignment = Enum.TextXAlignment.Left
    
    -- [新增 3/3] 版本号 Footer
    local Footer = Instance.new("TextLabel")
    Footer.Name = "Footer"
    Footer.Parent = Main
    Footer.BackgroundTransparency = 1
    Footer.Position = UDim2.new(0, 118, 1, -20)
    Footer.Size = UDim2.new(1, -118, 0, 20)
    Footer.Font = Scheme.Font
    Footer.Text = "version: example" -- 你可以修改这里的版本号
    Footer.TextColor3 = Scheme.PlaceholderColor
    Footer.TextSize = 12
    Footer.TextTransparency = 0.5
    Footer.ZIndex = 2
	
	TabBtnsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		TabBtns.CanvasSize = UDim2.new(0, 0, 0, TabBtnsL.AbsoluteContentSize.Y + 18)
	end)
	
	-- Open Button Styling
    Open.Name = "Open"
    Open.Parent = dogent
    Open.BackgroundColor3 = Scheme.MainColor
    Open.BackgroundTransparency = 0
    Open.Position = UDim2.new(0.00829315186, 0, 0.31107837, 0)
    Open.Size = UDim2.new(0, 61, 0, 32)
    Open.Font = Scheme.Font
    Open.Text = "Menu"
    Open.TextColor3 = Scheme.FontColor
    Open.TextTransparency = 0
    Open.TextSize = 14.000
    Open.Active = true
    Open.Draggable = true
    Open.ZIndex = 100
    AddOutline(Open, 4)
    local OpenCorner = Instance.new("UICorner")
    OpenCorner.CornerRadius = UDim.new(0,4)
    OpenCorner.Parent = Open

    UIG.Parent = Open

    Open.MouseButton1Click:Connect(function()
        Main.Visible = not Main.Visible
    end)
	
	local window = {}
	
	function window.Tab(window, name, icon)
		local Tab = Instance.new("ScrollingFrame")
		local TabIco = Instance.new("ImageLabel")
		local TabText = Instance.new("TextLabel")
		local TabBtn = Instance.new("TextButton")
		local TabL = Instance.new("UIListLayout")
		
		Tab.Name = "Tab"
		Tab.Parent = TabMain
		Tab.Active = true
		Tab.BackgroundColor3 = Scheme.BackgroundColor
		Tab.BackgroundTransparency = 1.000
		Tab.Size = UDim2.new(1, 0, 1, 0)
		Tab.ScrollBarThickness = 2
        Tab.ScrollBarImageColor3 = Scheme.OutlineColor
		Tab.Visible = false
		
		TabIco.Name = "TabIco"
		TabIco.Parent = TabBtns
		TabIco.BackgroundTransparency = 1.000
		TabIco.BorderSizePixel = 0
		TabIco.Size = UDim2.new(0, 24, 0, 24)
		TabIco.Image = ("rbxassetid://%s"):format((icon or 4370341699))
		TabIco.ImageTransparency = 0.5
        TabIco.ImageColor3 = Scheme.FontColor
		
		TabText.Name = "TabText"
		TabText.Parent = TabIco
		TabText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabText.BackgroundTransparency = 1.000
		TabText.Position = UDim2.new(1.41666663, 0, 0, 0)
		TabText.Size = UDim2.new(0, 76, 0, 24)
		TabText.Font = Scheme.Font
		TabText.Text = name
		TabText.TextColor3 = Scheme.FontColor
		TabText.TextSize = 14.000
		TabText.TextTransparency = 0.5
		TabText.TextXAlignment = Enum.TextXAlignment.Left
		
		TabBtn.Name = "TabBtn"
		TabBtn.Parent = TabIco
		TabBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabBtn.BackgroundTransparency = 1.000
		TabBtn.BorderSizePixel = 0
		TabBtn.Size = UDim2.new(0, 110, 0, 24)
		TabBtn.AutoButtonColor = false
		TabBtn.Font = Enum.Font.SourceSans
		TabBtn.Text = ""
		TabBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
		TabBtn.TextSize = 14.000
		
		TabL.Name = "TabL"
		TabL.Parent = Tab
		TabL.SortOrder = Enum.SortOrder.LayoutOrder
		TabL.Padding = UDim.new(0, 4)
		
		TabBtn.MouseButton1Click:Connect(function()
			switchTab({ TabIco, Tab })
		end)
		
		if library.currentTab == nil then
			switchTab({ TabIco, Tab })
		end
		
		TabL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			Tab.CanvasSize = UDim2.new(0, 0, 0, TabL.AbsoluteContentSize.Y + 8)
		end)
		
		local tab = {}
		
		function tab.section(tab, name, TabVal)
			local Section = Instance.new("Frame")
			local SectionC = Instance.new("UICorner")
			local SectionText = Instance.new("TextLabel")
			local SectionOpen = Instance.new("ImageLabel")
			local SectionOpened = Instance.new("ImageLabel")
			local SectionToggle = Instance.new("ImageButton")
			local Objs = Instance.new("Frame")
			local ObjsL = Instance.new("UIListLayout")
			
			Section.Name = "Section"
			Section.Parent = Tab
			Section.BackgroundColor3 = Scheme.BackgroundColor
			Section.BackgroundTransparency = 0
			Section.BorderSizePixel = 0
			Section.ClipsDescendants = true
			Section.Size = UDim2.new(0.981000006, 0, 0, 36)
            AddOutline(Section, 4)
			
			SectionC.CornerRadius = UDim.new(0, 4)
			SectionC.Name = "SectionC"
			SectionC.Parent = Section
			
			SectionText.Name = "SectionText"
			SectionText.Parent = Section
			SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionText.BackgroundTransparency = 1.000
			SectionText.Position = UDim2.new(0.02, 0, 0, 0)
			SectionText.Size = UDim2.new(0, 401, 0, 36)
			SectionText.Font = Scheme.Font
			SectionText.Text = name
			SectionText.TextColor3 = Scheme.FontColor
			SectionText.TextSize = 14.000
			SectionText.TextTransparency = 0
			SectionText.TextXAlignment = Enum.TextXAlignment.Left
			
			SectionOpen.Name = "SectionOpen"
			SectionOpen.Parent = SectionText
			SectionOpen.BackgroundTransparency = 1
			SectionOpen.BorderSizePixel = 0
			SectionOpen.Position = UDim2.new(0, -5, 0, 5)
			SectionOpen.Size = UDim2.new(0, 26, 0, 26)
			SectionOpen.Image = "http://www.roblox.com/asset/?id=6031302934"
            SectionOpen.ImageColor3 = Scheme.FontColor
            SectionOpen.Visible = false
			
			SectionOpened.Name = "SectionOpened"
			SectionOpened.Parent = SectionOpen
			SectionOpened.BackgroundTransparency = 1.000
			SectionOpened.BorderSizePixel = 0
			SectionOpened.Size = UDim2.new(0, 26, 0, 26)
			SectionOpened.Image = "http://www.roblox.com/asset/?id=6031302932"
			SectionOpened.ImageTransparency = 1.000
            SectionOpened.ImageColor3 = Scheme.FontColor
			
			SectionToggle.Name = "SectionToggle"
			SectionToggle.Parent = Section
			SectionToggle.BackgroundTransparency = 1
			SectionToggle.BorderSizePixel = 0
			SectionToggle.Size = UDim2.new(1, 0, 0, 36)
			
			Objs.Name = "Objs"
			Objs.Parent = Section
			Objs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Objs.BackgroundTransparency = 1
			Objs.BorderSizePixel = 0
			Objs.Position = UDim2.new(0, 6, 0, 36)
			Objs.Size = UDim2.new(0.986347735, 0, 0, 0)
			
			ObjsL.Name = "ObjsL"
			ObjsL.Parent = Objs
			ObjsL.SortOrder = Enum.SortOrder.LayoutOrder
			ObjsL.Padding = UDim.new(0, 8)
			
			local open = true
			if TabVal == false then open = false end

			if TabVal ~= false then
				Section.Size = UDim2.new(0.981000006, 0, 0, open and 36 + ObjsL.AbsoluteContentSize.Y + 8 or 36)
			end
			
			SectionToggle.MouseButton1Click:Connect(function()
				open = not open
				Section.Size = UDim2.new(0.981000006, 0, 0, open and 36 + ObjsL.AbsoluteContentSize.Y + 8 or 36)
			end)
			
			ObjsL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				if not open then
					return
				end
				Section.Size = UDim2.new(0.981000006, 0, 0, 36 + ObjsL.AbsoluteContentSize.Y + 8)
			end)
			
			local section = {}
			
			function section.Button(section, text, callback)
				local callback = callback or function() end
				local BtnModule = Instance.new("Frame")
				local Btn = Instance.new("TextButton")
				local BtnC = Instance.new("UICorner")
				
				BtnModule.Name = "BtnModule"
				BtnModule.Parent = Objs
				BtnModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				BtnModule.BackgroundTransparency = 1.000
				BtnModule.BorderSizePixel = 0
				BtnModule.Position = UDim2.new(0, 0, 0, 0)
				BtnModule.Size = UDim2.new(0, 428, 0, 30)
				
				Btn.Name = "Btn"
				Btn.Parent = BtnModule
				Btn.BackgroundColor3 = Scheme.MainColor
				Btn.BackgroundTransparency = 0
				Btn.BorderSizePixel = 0
				Btn.Size = UDim2.new(0, 428, 0, 30)
				Btn.AutoButtonColor = false
				Btn.Font = Scheme.Font
				Btn.Text = text
				Btn.TextColor3 = Scheme.FontColor
				Btn.TextSize = 14.000
				Btn.TextTransparency = 0
				Btn.TextXAlignment = Enum.TextXAlignment.Center
                AddOutline(Btn, 4)
				
				BtnC.CornerRadius = UDim.new(0, 4)
				BtnC.Name = "BtnC"
				BtnC.Parent = Btn
				
				Btn.MouseButton1Click:Connect(function()
                    local oldColor = Btn.BackgroundColor3
                    Btn.BackgroundColor3 = Scheme.AccentColor
                    wait(0.1)
                    Btn.BackgroundColor3 = oldColor
					spawn(callback)
				end)

                -- [新增] 注册到搜索
                table.insert(library.searchableElements, {Instance = BtnModule, Text = text})
			end
			
			function section:Label(text)
				local LabelModule = Instance.new("Frame")
				local TextLabel = Instance.new("TextLabel")
				local LabelC = Instance.new("UICorner")
				
				LabelModule.Name = "LabelModule"
				LabelModule.Parent = Objs
				LabelModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelModule.BackgroundTransparency = 1.000
				LabelModule.BorderSizePixel = 0
				LabelModule.Position = UDim2.new(0, 0, NAN, 0)
				LabelModule.Size = UDim2.new(0, 428, 0, 19)
				
				TextLabel.Parent = LabelModule
				TextLabel.BackgroundColor3 = Scheme.BackgroundColor
				TextLabel.BackgroundTransparency = 1
				TextLabel.Size = UDim2.new(0, 428, 0, 22)
				TextLabel.Font = Scheme.Font
				TextLabel.Text = text
				TextLabel.TextColor3 = Scheme.FontColor
				TextLabel.TextSize = 14.000
				TextLabel.TextTransparency = 0
				
				LabelC.CornerRadius = UDim.new(0, 4)
				LabelC.Name = "LabelC"
				LabelC.Parent = TextLabel

                -- [新增] 注册到搜索
                table.insert(library.searchableElements, {Instance = LabelModule, Text = text})
				
				return TextLabel
			end
			
			function section.Toggle(section, text, flag, enabled, callback)
				local callback = callback or function() end
				local enabled = enabled or false
				assert(text, "No text provided")
				assert(flag, "No flag provided")
				library.flags[flag] = enabled
				
				local ToggleModule = Instance.new("Frame")
				local ToggleBtn = Instance.new("TextButton")
				local ToggleBtnC = Instance.new("UICorner")
				local ToggleDisable = Instance.new("Frame")
				local ToggleSwitch = Instance.new("Frame")
				local ToggleSwitchC = Instance.new("UICorner")
				local ToggleDisableC = Instance.new("UICorner")
				
				ToggleModule.Name = "ToggleModule"
				ToggleModule.Parent = Objs
				ToggleModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleModule.BackgroundTransparency = 1.000
				ToggleModule.BorderSizePixel = 0
				ToggleModule.Position = UDim2.new(0, 0, 0, 0)
				ToggleModule.Size = UDim2.new(0, 428, 0, 30)
				
				ToggleBtn.Name = "ToggleBtn"
				ToggleBtn.Parent = ToggleModule
				ToggleBtn.BackgroundColor3 = Scheme.MainColor
				ToggleBtn.BackgroundTransparency = 0
				ToggleBtn.BorderSizePixel = 0
				ToggleBtn.Size = UDim2.new(0, 428, 0, 30)
				ToggleBtn.AutoButtonColor = false
				ToggleBtn.Font = Scheme.Font
				ToggleBtn.Text = "   " .. text
				ToggleBtn.TextColor3 = Scheme.FontColor
				ToggleBtn.TextSize = 14.000
				ToggleBtn.TextTransparency = 0
				ToggleBtn.TextXAlignment = Enum.TextXAlignment.Left
                AddOutline(ToggleBtn, 4)
				
				ToggleBtnC.CornerRadius = UDim.new(0, 4)
				ToggleBtnC.Name = "ToggleBtnC"
				ToggleBtnC.Parent = ToggleBtn
				
				ToggleDisable.Name = "ToggleDisable"
				ToggleDisable.Parent = ToggleBtn
				ToggleDisable.BackgroundColor3 = Scheme.BackgroundColor
				ToggleDisable.BackgroundTransparency = 0
				ToggleDisable.BorderSizePixel = 0
				ToggleDisable.Position = UDim2.new(0.9, 0, 0.5, -9)
				ToggleDisable.Size = UDim2.new(0, 36, 0, 18)
                AddOutline(ToggleDisable, 9)
				
				ToggleSwitch.Name = "ToggleSwitch"
				ToggleSwitch.Parent = ToggleDisable
				ToggleSwitch.BackgroundColor3 = Scheme.FontColor
				ToggleSwitch.Size = UDim2.new(0, 18, 0, 18)
				
				ToggleSwitchC.CornerRadius = UDim.new(1, 0)
				ToggleSwitchC.Name = "ToggleSwitchC"
				ToggleSwitchC.Parent = ToggleSwitch
				
				ToggleDisableC.CornerRadius = UDim.new(1, 0)
				ToggleDisableC.Name = "ToggleDisableC"
				ToggleDisableC.Parent = ToggleDisable
				
				local funcs = {
					SetState = function(self, state)
						if state == nil then
							state = not library.flags[flag]
						end
						if library.flags[flag] == state then
							return
						end
						services.TweenService
							:Create(
								ToggleSwitch,
								TweenInfo.new(0.2),
								{
									Position = UDim2.new(0, (state and 18 or 0), 0, 0),
									BackgroundColor3 = (state and Scheme.AccentColor or Scheme.FontColor),
								}
							)
							:Play()
                        services.TweenService
							:Create(
								ToggleDisable,
								TweenInfo.new(0.2),
								{
									BackgroundColor3 = (state and Scheme.MainColor or Scheme.BackgroundColor),
								}
							)
							:Play()
						library.flags[flag] = state
						callback(state)
					end,
					Module = ToggleModule,
				}
				
				if enabled ~= false then
					funcs:SetState(flag, true)
				end
				
				ToggleBtn.MouseButton1Click:Connect(function()
					funcs:SetState()
				end)

                -- [新增] 注册到搜索
                table.insert(library.searchableElements, {Instance = ToggleModule, Text = text})
				
				return funcs
			end
			
			function section.Keybind(section, text, default, callback)
				local callback = callback or function() end
				assert(text, "No text provided")
				assert(default, "No default key provided")
				local default = (typeof(default) == "string" and Enum.KeyCode[default] or default)
				local bindKey = default
                -- (省略部分 Keybind 内的冗余定义以保持整洁，核心功能不变)
                local shortNames = {RightControl="RCtrl",LeftControl="LCtrl",LeftShift="LShift",RightShift="RShift"}
				local keyTxt = (default and (shortNames[default.Name] or default.Name) or "None")
				
				local KeybindModule = Instance.new("Frame")
				local KeybindBtn = Instance.new("TextButton")
				local KeybindBtnC = Instance.new("UICorner")
				local KeybindValue = Instance.new("TextButton")
				local KeybindValueC = Instance.new("UICorner")
				
				KeybindModule.Name = "KeybindModule"
				KeybindModule.Parent = Objs
				KeybindModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				KeybindModule.BackgroundTransparency = 1.000
				KeybindModule.BorderSizePixel = 0
				KeybindModule.Size = UDim2.new(0, 428, 0, 30)
				
				KeybindBtn.Name = "KeybindBtn"
				KeybindBtn.Parent = KeybindModule
				KeybindBtn.BackgroundColor3 = Scheme.MainColor
				KeybindBtn.BackgroundTransparency = 0
				KeybindBtn.BorderSizePixel = 0
				KeybindBtn.Size = UDim2.new(0, 428, 0, 30)
				KeybindBtn.AutoButtonColor = false
				KeybindBtn.Font = Scheme.Font
				KeybindBtn.Text = "   " .. text
				KeybindBtn.TextColor3 = Scheme.FontColor
				KeybindBtn.TextSize = 14.000
				KeybindBtn.TextTransparency = 0
				KeybindBtn.TextXAlignment = Enum.TextXAlignment.Left
                AddOutline(KeybindBtn, 4)
				
				KeybindBtnC.CornerRadius = UDim.new(0, 4)
				KeybindBtnC.Name = "KeybindBtnC"
				KeybindBtnC.Parent = KeybindBtn
				
				KeybindValue.Name = "KeybindValue"
				KeybindValue.Parent = KeybindBtn
				KeybindValue.BackgroundColor3 = Scheme.BackgroundColor
				KeybindValue.BackgroundTransparency = 0
				KeybindValue.BorderSizePixel = 0
				KeybindValue.Position = UDim2.new(0.76, 0, 0.2, 0)
				KeybindValue.Size = UDim2.new(0, 100, 0, 20)
				KeybindValue.AutoButtonColor = false
				KeybindValue.Font = Scheme.Font
				KeybindValue.Text = keyTxt
				KeybindValue.TextColor3 = Scheme.FontColor
				KeybindValue.TextSize = 14.000
                AddOutline(KeybindValue, 4)
				
				KeybindValueC.CornerRadius = UDim.new(0, 4)
				KeybindValueC.Name = "KeybindValueC"
				KeybindValueC.Parent = KeybindValue
				
                services.UserInputService.InputBegan:Connect(function(inp, gpe)
					if not gpe and inp.UserInputType == Enum.UserInputType.Keyboard and inp.KeyCode == bindKey then
						callback(bindKey.Name)
					end
				end)
				
				KeybindValue.MouseButton1Click:Connect(function()
					KeybindValue.Text = "..."
					local key = services.UserInputService.InputEnded:Wait()
					if key.UserInputType == Enum.UserInputType.Keyboard then
                        bindKey = key.KeyCode
						KeybindValue.Text = shortNames[key.KeyCode.Name] or key.KeyCode.Name
					else
                        KeybindValue.Text = keyTxt
                    end
				end)

                -- [新增] 注册到搜索
                table.insert(library.searchableElements, {Instance = KeybindModule, Text = text})
			end
			
			function section.Textbox(section, text, flag, default, callback)
				local callback = callback or function() end
				library.flags[flag] = default
				
				local TextboxModule = Instance.new("Frame")
				local TextboxBack = Instance.new("TextButton")
				local TextboxBackC = Instance.new("UICorner")
				local BoxBG = Instance.new("TextButton")
				local BoxBGC = Instance.new("UICorner")
				local TextBox = Instance.new("TextBox")
				
				TextboxModule.Name = "TextboxModule"
				TextboxModule.Parent = Objs
				TextboxModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextboxModule.BackgroundTransparency = 1.000
				TextboxModule.BorderSizePixel = 0
				TextboxModule.Size = UDim2.new(0, 428, 0, 30)
				
				TextboxBack.Name = "TextboxBack"
				TextboxBack.Parent = TextboxModule
				TextboxBack.BackgroundColor3 = Scheme.MainColor
				TextboxBack.BackgroundTransparency = 0
				TextboxBack.BorderSizePixel = 0
				TextboxBack.Size = UDim2.new(0, 428, 0, 30)
				TextboxBack.AutoButtonColor = false
				TextboxBack.Font = Scheme.Font
				TextboxBack.Text = "   " .. text
				TextboxBack.TextColor3 = Scheme.FontColor
				TextboxBack.TextSize = 14.000
				TextboxBack.TextTransparency = 0
				TextboxBack.TextXAlignment = Enum.TextXAlignment.Left
                AddOutline(TextboxBack, 4)
				
				TextboxBackC.CornerRadius = UDim.new(0, 4)
				TextboxBackC.Name = "TextboxBackC"
				TextboxBackC.Parent = TextboxBack
				
				BoxBG.Name = "BoxBG"
				BoxBG.Parent = TextboxBack
				BoxBG.BackgroundColor3 = Scheme.BackgroundColor
				BoxBG.BackgroundTransparency = 0
				BoxBG.BorderSizePixel = 0
				BoxBG.Position = UDim2.new(0.76, 0, 0.2, 0)
				BoxBG.Size = UDim2.new(0, 100, 0, 20)
				BoxBG.AutoButtonColor = false
				BoxBG.Font = Scheme.Font
				BoxBG.Text = ""
                AddOutline(BoxBG, 4)
				
				BoxBGC.CornerRadius = UDim.new(0, 4)
				BoxBGC.Name = "BoxBGC"
				BoxBGC.Parent = BoxBG
				
				TextBox.Parent = BoxBG
				TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.BackgroundTransparency = 1.000
				TextBox.Size = UDim2.new(1, 0, 1, 0)
				TextBox.Font = Scheme.Font
				TextBox.Text = default
				TextBox.TextColor3 = Scheme.FontColor
				TextBox.PlaceholderColor3 = Scheme.PlaceholderColor
				TextBox.TextSize = 14.000
				
				TextBox.FocusLost:Connect(function()
					if TextBox.Text == "" then TextBox.Text = default end
					library.flags[flag] = TextBox.Text
					callback(TextBox.Text)
				end)

                -- [新增] 注册到搜索
                table.insert(library.searchableElements, {Instance = TextboxModule, Text = text})
			end
			
			function section.Slider(section, text, flag, default, min, max, precise, callback)
                -- (省略滑条内部逻辑以节省长度，保持功能不变)
                local callback = callback or function() end
				local min = min or 1
				local max = max or 10
				local default = default or min
				library.flags[flag] = default

				local SliderModule = Instance.new("Frame")
				local SliderBack = Instance.new("TextButton")
				local SliderBar = Instance.new("Frame")
				local SliderPart = Instance.new("Frame")
				local SliderValBG = Instance.new("TextButton")
				local SliderValue = Instance.new("TextBox")
				local MinSlider = Instance.new("TextButton")
				local AddSlider = Instance.new("TextButton")
				
				SliderModule.Name = "SliderModule"
				SliderModule.Parent = Objs
				SliderModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderModule.BackgroundTransparency = 1.000
				SliderModule.Size = UDim2.new(0, 428, 0, 30)
				
				SliderBack.Name = "SliderBack"
				SliderBack.Parent = SliderModule
				SliderBack.BackgroundColor3 = Scheme.MainColor
				SliderBack.BackgroundTransparency = 0
				SliderBack.Size = UDim2.new(0, 428, 0, 30)
				SliderBack.AutoButtonColor = false
				SliderBack.Font = Scheme.Font
				SliderBack.Text = "   " .. text
				SliderBack.TextColor3 = Scheme.FontColor
				SliderBack.TextSize = 14.000
				SliderBack.TextXAlignment = Enum.TextXAlignment.Left
                AddOutline(SliderBack, 4)
                
                local SliderBackC = Instance.new("UICorner"); SliderBackC.CornerRadius = UDim.new(0,4); SliderBackC.Parent = SliderBack
				
				SliderBar.Name = "SliderBar"
				SliderBar.Parent = SliderBack
				SliderBar.AnchorPoint = Vector2.new(0, 0.5)
				SliderBar.BackgroundColor3 = Scheme.OutlineColor
				SliderBar.Position = UDim2.new(0.369, 40, 0.5, 0)
				SliderBar.Size = UDim2.new(0, 140, 0, 8)
                local SliderBarC = Instance.new("UICorner"); SliderBarC.CornerRadius = UDim.new(0,4); SliderBarC.Parent = SliderBar
				
				SliderPart.Name = "SliderPart"
				SliderPart.Parent = SliderBar
				SliderPart.BackgroundColor3 = Scheme.AccentColor
				SliderPart.Size = UDim2.new(0, 0, 1, 0)
                local SliderPartC = Instance.new("UICorner"); SliderPartC.CornerRadius = UDim.new(0,4); SliderPartC.Parent = SliderPart
				
				SliderValBG.Name = "SliderValBG"
				SliderValBG.Parent = SliderBack
				SliderValBG.BackgroundColor3 = Scheme.BackgroundColor
				SliderValBG.Position = UDim2.new(0.88, 0, 0.5, -10)
				SliderValBG.Size = UDim2.new(0, 44, 0, 20)
				SliderValBG.AutoButtonColor = false
				SliderValBG.Font = Scheme.Font
				SliderValBG.Text = ""
                AddOutline(SliderValBG, 4)
                local SliderValBGC = Instance.new("UICorner"); SliderValBGC.CornerRadius = UDim.new(0,4); SliderValBGC.Parent = SliderValBG
				
				SliderValue.Parent = SliderValBG
				SliderValue.BackgroundTransparency = 1
				SliderValue.Size = UDim2.new(1, 0, 1, 0)
				SliderValue.Font = Scheme.Font
				SliderValue.Text = default
				SliderValue.TextColor3 = Scheme.FontColor
				SliderValue.TextSize = 14.000
				
				MinSlider.Parent = SliderModule
				MinSlider.BackgroundTransparency = 1
				MinSlider.Position = UDim2.new(0.29, 40, 0.5, -10)
				MinSlider.Size = UDim2.new(0, 20, 0, 20)
				MinSlider.Font = Scheme.Font
				MinSlider.Text = "-"
				MinSlider.TextColor3 = Scheme.FontColor
				MinSlider.TextSize = 18.000
				
				AddSlider.Parent = SliderModule
				AddSlider.BackgroundTransparency = 1
				AddSlider.Position = UDim2.new(0.81, 0, 0.5, -10)
				AddSlider.Size = UDim2.new(0, 20, 0, 20)
				AddSlider.Font = Scheme.Font
				AddSlider.Text = "+"
				AddSlider.TextColor3 = Scheme.FontColor
				AddSlider.TextSize = 18.000
				
				local funcs = {
					SetValue = function(self, value)
						local percent = (value - min) / (max - min)
                        local sizeX = math.clamp(percent, 0, 1)
						SliderPart.Size = UDim2.new(sizeX, 0, 1, 0)
                        SliderValue.Text = tostring(value)
						library.flags[flag] = value
						callback(value)
					end,
				}
                
                -- 滑动逻辑略简写，功能保留
                local dragging = false
                SliderBar.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = true
                        local pos = math.clamp((input.Position.X - SliderBar.AbsolutePosition.X) / SliderBar.AbsoluteSize.X, 0, 1)
                        local val = math.floor(min + (max - min) * pos)
                        funcs:SetValue(val)
                    end
                end)
                services.UserInputService.InputChanged:Connect(function(input)
                    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                        local pos = math.clamp((input.Position.X - SliderBar.AbsolutePosition.X) / SliderBar.AbsoluteSize.X, 0, 1)
                        local val = math.floor(min + (max - min) * pos)
                        funcs:SetValue(val)
                    end
                end)
                services.UserInputService.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
                end)
                
				funcs:SetValue(default)

                -- [新增] 注册到搜索
                table.insert(library.searchableElements, {Instance = SliderModule, Text = text})
				return funcs
			end
			
			function section.Dropdown(section, text, flag, options, callback)
				local callback = callback or function() end
				local options = options or {}
				library.flags[flag] = nil
				
				local DropdownModule = Instance.new("Frame")
				local DropdownTop = Instance.new("TextButton")
				local DropdownTopC = Instance.new("UICorner")
				local DropdownOpen = Instance.new("TextButton")
				local DropdownText = Instance.new("TextBox")
				local DropdownModuleL = Instance.new("UIListLayout")
				
				DropdownModule.Name = "DropdownModule"
				DropdownModule.Parent = Objs
				DropdownModule.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownModule.BackgroundTransparency = 1.000
				DropdownModule.ClipsDescendants = true
				DropdownModule.Size = UDim2.new(0, 428, 0, 30)
				
				DropdownTop.Name = "DropdownTop"
				DropdownTop.Parent = DropdownModule
				DropdownTop.BackgroundColor3 = Scheme.MainColor
				DropdownTop.BackgroundTransparency = 0
				DropdownTop.Size = UDim2.new(0, 428, 0, 30)
				DropdownTop.AutoButtonColor = false
				DropdownTop.Font = Scheme.Font
				DropdownTop.Text = ""
                AddOutline(DropdownTop, 4)
				
				DropdownTopC.CornerRadius = UDim.new(0, 4)
				DropdownTopC.Parent = DropdownTop
				
				DropdownOpen.Parent = DropdownTop
				DropdownOpen.AnchorPoint = Vector2.new(0, 0.5)
				DropdownOpen.BackgroundTransparency = 1
				DropdownOpen.Position = UDim2.new(0.92, 0, 0.5, 0)
				DropdownOpen.Size = UDim2.new(0, 20, 0, 20)
				DropdownOpen.Font = Scheme.Font
				DropdownOpen.Text = "+"
				DropdownOpen.TextColor3 = Scheme.FontColor
				DropdownOpen.TextSize = 18.000
				
				DropdownText.Parent = DropdownTop
				DropdownText.BackgroundTransparency = 1
				DropdownText.Position = UDim2.new(0.03, 0, 0, 0)
				DropdownText.Size = UDim2.new(0, 184, 0, 30)
				DropdownText.Font = Scheme.Font
				DropdownText.PlaceholderText = text
				DropdownText.Text = ""
				DropdownText.TextColor3 = Scheme.FontColor
				DropdownText.TextSize = 14.000
				DropdownText.TextXAlignment = Enum.TextXAlignment.Left
				
				DropdownModuleL.Parent = DropdownModule
				DropdownModuleL.SortOrder = Enum.SortOrder.LayoutOrder
				DropdownModuleL.Padding = UDim.new(0, 4)
				
				local open = false
				DropdownOpen.MouseButton1Click:Connect(function()
					open = not open
                    DropdownOpen.Text = open and "-" or "+"
                    DropdownModule.Size = UDim2.new(0, 428, 0, open and DropdownModuleL.AbsoluteContentSize.Y + 4 or 30)
				end)
				
				local funcs = {}
				funcs.AddOption = function(self, option)
					local Option = Instance.new("TextButton")
					local OptionC = Instance.new("UICorner")
					Option.Name = "Option_" .. option
					Option.Parent = DropdownModule
					Option.BackgroundColor3 = Scheme.BackgroundColor
					Option.Size = UDim2.new(0, 428, 0, 26)
					Option.Font = Scheme.Font
					Option.Text = option
					Option.TextColor3 = Scheme.FontColor
					Option.TextSize = 14
                    AddOutline(Option, 4)
					
					OptionC.CornerRadius = UDim.new(0, 4)
					OptionC.Parent = Option
					
					Option.MouseButton1Click:Connect(function()
                        open = false
                        DropdownOpen.Text = "+"
                        DropdownModule.Size = UDim2.new(0, 428, 0, 30)
						callback(Option.Text)
						DropdownText.Text = Option.Text
						library.flags[flag] = Option.Text
					end)
				end

                for _, v in pairs(options) do funcs:AddOption(v) end

                -- [新增] 注册到搜索
                table.insert(library.searchableElements, {Instance = DropdownModule, Text = text})
				return funcs
			end
			
			return section
		end
		return tab
	end
	
	return window
end

return library
