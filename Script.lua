local lib = {}
local sections = {}
local workareas = {}
local visible = true
local dbcooper = false

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")

-- 动画工具函数
local function tp(ins, pos, time, easingStyle, easingDirection)
    easingStyle = easingStyle or Enum.EasingStyle.Quart
    easingDirection = easingDirection or Enum.EasingDirection.InOut
    TweenService:Create(ins, TweenInfo.new(time, easingStyle, easingDirection), {Position = pos}):Play()
end

-- 检测是否为移动设备
local function isMobile()
    return UserInputService.TouchEnabled and not UserInputService.MouseEnabled
end

function lib:init(ti, dosplash, visiblekey, deleteprevious)
    local scrgui
    local cg = game:GetService("CoreGui")

    -- 处理注入器环境
    local function setupScreenGui()
        if syn then
            scrgui = Instance.new("ScreenGui")
            syn.protect_gui(scrgui)
            scrgui.Parent = cg
        elseif gethui then
            scrgui = Instance.new("ScreenGui")
            scrgui.Parent = gethui()
        else
            scrgui = Instance.new("ScreenGui")
            scrgui.Parent = cg
        end
        scrgui.IgnoreGuiInset = true
        scrgui.DisplayOrder = 100
        return scrgui
    end

    -- 清除之前的 GUI
    if deleteprevious then
        local existingGui = cg:FindFirstChild("ScreenGui") or (gethui and gethui():FindFirstChild("ScreenGui"))
        if existingGui then
            tp(existingGui.main, existingGui.main.Position + UDim2.new(0, 0, 2, 0), 0.5)
            Debris:AddItem(existingGui, 1)
        end
    end

    scrgui = setupScreenGui()

    -- 适配移动端尺寸
    local baseSize = isMobile() and UDim2.new(0.9, 0, 0.8, 0) or UDim2.new(0, 721, 0, 584)
    local splashSize = isMobile() and UDim2.new(0.7, 0, 0.7, 0) or UDim2.new(0, 340, 0, 340)

    -- 启动画面
    if dosplash then
        local splash = Instance.new("Frame")
        splash.Name = "splash"
        splash.Parent = scrgui
        splash.AnchorPoint = Vector2.new(0.5, 0.5)
        splash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        splash.BackgroundTransparency = 0.6
        splash.Position = UDim2.new(0.5, 0, 2, 0)
        splash.Size = splashSize
        splash.Visible = true
        splash.ZIndex = 40

        local uc = Instance.new("UICorner", splash)
        uc.CornerRadius = UDim.new(0, 18)

        local sicon = Instance.new("ImageLabel", splash)
        sicon.Name = "sicon"
        sicon.AnchorPoint = Vector2.new(0.5, 0.5)
        sicon.BackgroundTransparency = 1
        sicon.Position = UDim2.new(0.5, 0, 0.5, 0)
        sicon.Size = UDim2.new(0.6, 0, 0.6, 0)
        sicon.ZIndex = 40
        sicon.Image = "rbxassetid://12621719043"
        sicon.ScaleType = Enum.ScaleType.Fit

        local ug = Instance.new("UIGradient", sicon)
        ug.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(0.01, Color3.fromRGB(61, 61, 61)),
            ColorSequenceKeypoint.new(0.47, Color3.fromRGB(41, 41, 41)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
        }
        ug.Rotation = 90

        local sshadow = Instance.new("ImageLabel", splash)
        sshadow.Name = "sshadow"
        sshadow.AnchorPoint = Vector2.new(0.5, 0.5)
        sshadow.BackgroundTransparency = 1
        sshadow.Position = UDim2.new(0.5, 0, 0.5, 0)
        sshadow.Size = UDim2.new(1.2, 0, 1.2, 0)
        sshadow.ZIndex = 39
        sshadow.Image = "rbxassetid://313486536"
        sshadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        sshadow.ImageTransparency = 0.4

        tp(splash, UDim2.new(0.5, 0, 0.5, 0), 1)
        task.wait(2)
        tp(splash, UDim2.new(0.5, 0, 2, 0), 1)
        Debris:AddItem(splash, 1)
    end

    -- 主框架
    local main = Instance.new("Frame")
    main.Name = "main"
    main.Parent = scrgui
    main.AnchorPoint = Vector2.new(0.5, 0.5)
    main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    main.BackgroundTransparency = 0.15
    main.Position = UDim2.new(0.5, 0, 2, 0)
    main.Size = baseSize
    main.ClipsDescendants = true

    local uc = Instance.new("UICorner", main)
    uc.CornerRadius = UDim.new(0, 18)

    -- 拖拽功能（PC 端）
    local dragging, dragInput, dragStart, startPos
    local function update(input)
        local delta = input.Position - dragStart
        main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    main.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not isMobile() then
            dragging = true
            dragStart = input.Position
            startPos = main.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    main.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    -- 工作区
    local workarea = Instance.new("Frame")
    workarea.Name = "workarea"
    workarea.Parent = main
    workarea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    workarea.Position = isMobile() and UDim2.new(0, 0, 0.15, 0) or UDim2.new(0.364, 0, 0, 0)
    workarea.Size = isMobile() and UDim2.new(1, 0, 0.85, 0) or UDim2.new(0, 458, 0, 584)
    local uc_2 = Instance.new("UICorner", workarea)
    uc_2.CornerRadius = UDim.new(0, 18)

    -- 搜索栏
    local search = Instance.new("Frame")
    search.Name = "search"
    search.Parent = main
    search.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
    search.Position = UDim2.new(0.026, 0, 0.096, 0)
    search.Size = isMobile() and UDim2.new(0.9, 0, 0, 34) or UDim2.new(0, 225, 0, 34)

    local uc_8 = Instance.new("UICorner", search)
    uc_8.CornerRadius = UDim.new(0, 9)

    local searchicon = Instance.new("ImageButton")
    searchicon.Name = "searchicon"
    searchicon.Parent = search
    searchicon.BackgroundTransparency = 1
    searchicon.Position = UDim2.new(0.038, -2, 0.139, 2)
    searchicon.Size = UDim2.new(0, 24, 0, 21)
    searchicon.Image = "rbxassetid://2804603863"
    searchicon.ImageColor3 = Color3.fromRGB(95, 95, 95)
    searchicon.ScaleType = Enum.ScaleType.Fit

    local searchtextbox = Instance.new("TextBox")
    searchtextbox.Name = "searchtextbox"
    searchtextbox.Parent = search
    searchtextbox.BackgroundTransparency = 1
    searchtextbox.ClipsDescendants = true
    searchtextbox.Position = UDim2.new(0.18, 0, -0.016, 0)
    searchtextbox.Size = isMobile() and UDim2.new(0.8, 0, 1, 0) or UDim2.new(0, 176, 0, 34)
    searchtextbox.Font = Enum.Font.Gotham
    searchtextbox.PlaceholderText = "搜索"
    searchtextbox.Text = ""
    searchtextbox.TextColor3 = Color3.fromRGB(95, 95, 95)
    searchtextbox.TextSize = isMobile() and 18 or 22
    searchtextbox.TextXAlignment = Enum.TextXAlignment.Left

    searchicon.Activated:Connect(function()
        searchtextbox:CaptureFocus()
    end)

    -- 侧边栏
    local sidebar = Instance.new("ScrollingFrame")
    sidebar.Name = "sidebar"
    sidebar.Parent = main
    sidebar.Active = true
    sidebar.BackgroundTransparency = 1
    sidebar.BorderSizePixel = 0
    sidebar.Position = isMobile() and UDim2.new(0, 0, 0, 0) or UDim2.new(0.025, 0, 0.182, 0)
    sidebar.Size = isMobile() and UDim2.new(1, 0, 0.15, 0) or UDim2.new(0, 233, 0, 463)
    sidebar.CanvasSize = UDim2.new(0, 0, 0, 0)
    sidebar.ScrollBarThickness = 2
    sidebar.Visible = not isMobile()

    local ull_2 = Instance.new("UIListLayout", sidebar)
    ull_2.SortOrder = Enum.SortOrder.LayoutOrder
    ull_2.Padding = UDim.new(0, 5)
    ull_2.FillDirection = isMobile() and Enum.FillDirection.Horizontal or Enum.FillDirection.Vertical

    -- 搜索功能
    RunService:BindToRenderStep("search", 1, function()
        if not searchtextbox:IsFocused() then 
            for _, v in ipairs(sidebar:GetChildren()) do
                if v:IsA("TextButton") then
                    v.Visible = true
                end
            end
            return
        end
        local inputText = string.upper(searchtextbox.Text)
        for _, button in ipairs(sidebar:GetChildren()) do
            if button:IsA("TextButton") then
                button.Visible = inputText == "" or string.find(string.upper(button.Text), inputText) ~= nil
            end
        end
    end)

    -- 窗口控制按钮
    local buttons = Instance.new("Frame")
    buttons.Name = "buttons"
    buttons.Parent = main
    buttons.BackgroundTransparency = 1
    buttons.Size = UDim2.new(0, 105, 0, 57)

    local ull_3 = Instance.new("UIListLayout", buttons)
    ull_3.FillDirection = Enum.FillDirection.Horizontal
    ull_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
    ull_3.VerticalAlignment = Enum.VerticalAlignment.Center
    ull_3.Padding = UDim.new(0, 10)

    local function createControlButton(name, color)
        local button = Instance.new("TextButton")
        button.Name = name
        button.Parent = buttons
        button.BackgroundColor3 = color
        button.Size = UDim2.new(0, 16, 0, 16)
        button.AutoButtonColor = false
        button.Text = ""
        local uc = Instance.new("UICorner", button)
        uc.CornerRadius = UDim.new(1, 0)
        return button
    end

    local close = createControlButton("close", Color3.fromRGB(254, 94, 86))
    local minimize = createControlButton("minimize", Color3.fromRGB(255, 189, 46))
    local resize = createControlButton("resize", Color3.fromRGB(39, 200, 63))

    close.Activated:Connect(function()
        scrgui:Destroy()
    end)

    -- 标题
    local title = Instance.new("TextLabel")
    title.Name = "title"
    title.Parent = main
    title.BackgroundTransparency = 1
    title.Position = UDim2.new(0.389, 0, 0.035, 0)
    title.Size = isMobile() and UDim2.new(0.6, 0, 0, 15) or UDim2.new(0, 400, 0, 15)
    title.Font = Enum.Font.Gotham
    title.TextColor3 = Color3.fromRGB(0, 0, 0)
    title.TextSize = isMobile() and 22 or 28
    title.TextWrapped = true
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Text = ti or ""

    local window = {}

    function window:ToggleVisible()
        if dbcooper then return end
        visible = not visible
        dbcooper = true
        local targetPos = visible and UDim2.new(0.5, 0, 0.5, 0) or main.Position + UDim2.new(0, 0, 2, 0)
        tp(main, targetPos, 0.5)
        task.wait(0.5)
        dbcooper = false
    end

    if visiblekey then
        minimize.Activated:Connect(window.ToggleVisible)
        UserInputService.InputBegan:Connect(function(input)
            if input.KeyCode == visiblekey and not isMobile() then
                window:ToggleVisible()
            end
        end)
        if isMobile() then
            UserInputService.TouchTap:Connect(function(touchPositions)
                if #touchPositions == 2 then
                    window:ToggleVisible()
                end
            end)
        end
    end

    function window:GreenButton(callback)
        if _G.gbutton_123123 then _G.gbutton_123123:Disconnect() end
        _G.gbutton_123123 = resize.Activated:Connect(callback)
    end

    function window:Section(name)
        local sidebar2 = Instance.new("TextButton")
        sidebar2.Name = "sidebar2"
        sidebar2.Parent = sidebar
        sidebar2.BackgroundColor3 = Color3.fromRGB(21, 103, 251)
        sidebar2.BackgroundTransparency = 1
        sidebar2.Size = isMobile() and UDim2.new(0.3, 0, 0.8, 0) or UDim2.new(0, 226, 0, 37)
        sidebar2.ZIndex = 2
        sidebar2.AutoButtonColor = false
        sidebar2.Font = Enum.Font.Gotham
        sidebar2.Text = name
        sidebar2.TextColor3 = Color3.fromRGB(0, 0, 0)
        sidebar2.TextSize = isMobile() and 16 or 21

        local uc_10 = Instance.new("UICorner", sidebar2)
        uc_10.CornerRadius = UDim.new(0, 9)

        local workareamain = Instance.new("ScrollingFrame")
        workareamain.Name = "workareamain"
        workareamain.Parent = workarea
        workareamain.Active = true
        workareamain.BackgroundTransparency = 1
        workareamain.BorderSizePixel = 0
        workareamain.Position = UDim2.new(0.039, 0, 0.096, 0)
        workareamain.Size = isMobile() and UDim2.new(0.95, 0, 0.9, 0) or UDim2.new(0, 422, 0, 512)
        workareamain.ZIndex = 3
        workareamain.CanvasSize = UDim2.new(0, 0, 0, 0)
        workareamain.ScrollBarThickness = 2
        workareamain.Visible = false

        local ull = Instance.new("UIListLayout", workareamain)
        ull.HorizontalAlignment = Enum.HorizontalAlignment.Center
        ull.SortOrder = Enum.SortOrder.LayoutOrder
        ull.Padding = UDim.new(0, 5)

        table.insert(sections, sidebar2)
        table.insert(workareas, workareamain)

        local sec = {}
        function sec:Select()
            for _, v in ipairs(sections) do
                v.BackgroundTransparency = 1
                v.TextColor3 = Color3.fromRGB(0, 0, 0)
            end
            sidebar2.BackgroundTransparency = 0
            sidebar2.TextColor3 = Color3.fromRGB(255, 255, 255)
            for _, v in ipairs(workareas) do
                v.Visible = false
            end
            workareamain.Visible = true
        end

        function sec:Button(name, callback)
            local button = Instance.new("TextButton")
            button.Name = "button"
            button.Text = name
            button.Parent = workareamain
            button.BackgroundColor3 = Color3.fromRGB(216, 216, 216)
            button.BackgroundTransparency = 1
            button.Size = isMobile() and UDim2.new(0.9, 0, 0, 37) or UDim2.new(0, 418, 0, 37)
            button.ZIndex = 2
            button.Font = Enum.Font.Gotham
            button.TextColor3 = Color3.fromRGB(21, 103, 251)
            button.TextSize = isMobile() and 18 or 21

            local uc_3 = Instance.new("UICorner", button)
            uc_3.CornerRadius = UDim.new(0, 9)

            local us = Instance.new("UIStroke", button)
            us.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            us.Color = Color3.fromRGB(21, 103, 251)
            us.Thickness = 1

            if callback then
                button.Activated:Connect(function()
                    coroutine.wrap(function()
                        button.TextSize = button.TextSize - 3
                        task.wait(0.06)
                        button.TextSize = button.TextSize + 3
                    end)()
                    callback()
                end)
            end
        end

        sidebar2.Activated:Connect(sec.Select)
        return sec
    end

    tp(main, UDim2.new(0.5, 0, 0.5, 0), 1)
    return window
end

return lib