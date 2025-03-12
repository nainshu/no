local TweenService = game:GetService("TweenService")
local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- 检查是否已经存在UI实例
local existingUI = PlayerGui:FindFirstChild("CardSystemUI")
if existingUI then
    existingUI:Destroy() -- 删除旧的UI实例
end

-- 创建新的UI实例
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CardSystemUI"
ScreenGui.Parent = PlayerGui

-- 创建主框架，调整尺寸和位置
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0.6, 0, 0.4, 0)
Frame.Position = UDim2.new(0.2, 0, 0.3, 0)
Frame.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

-- 圆角效果
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.1, 0)
UICorner.Parent = Frame

-- 标题
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Text = "APT 秘钥系统"
TitleLabel.TextSize = 24
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.TextColor3 = Color3.fromRGB(50, 50, 50)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Position = UDim2.new(0.05, 0, 0.05, 0)
TitleLabel.Size = UDim2.new(0.9, 0, 0.2, 0)
TitleLabel.Parent = Frame

-- 在标题下方添加新的提示文字
local GetKeyHint = Instance.new("TextLabel")
GetKeyHint.Text = "获取卡密请加入Q群599298896"
GetKeyHint.TextSize = 18
GetKeyHint.Font = Enum.Font.SourceSans
GetKeyHint.TextColor3 = Color3.fromRGB(50, 50, 50)
GetKeyHint.BackgroundTransparency = 1
GetKeyHint.Position = UDim2.new(0.05, 0, 0.25, 0)
GetKeyHint.Size = UDim2.new(0.9, 0, 0.1, 0)
GetKeyHint.Parent = Frame

-- 输入框
local TextBox = Instance.new("TextBox")
TextBox.PlaceholderText = "输入卡密"
TextBox.TextSize = 20
TextBox.Font = Enum.Font.SourceSans
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.05, 0, 0.4, 0)
TextBox.Size = UDim2.new(0.9, 0, 0.2, 0)
TextBox.Parent = Frame

-- 输入框圆角
local TextBoxCorner = Instance.new("UICorner")
TextBoxCorner.CornerRadius = UDim.new(0.1, 0)
TextBoxCorner.Parent = TextBox

-- 提交按钮
local SubmitButton = Instance.new("TextButton")
SubmitButton.Text = "提交"
SubmitButton.TextSize = 20
SubmitButton.Font = Enum.Font.SourceSansBold
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitButton.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
SubmitButton.Position = UDim2.new(0.05, 0, 0.7, 0)
SubmitButton.Size = UDim2.new(0.9, 0, 0.2, 0)
SubmitButton.Parent = Frame

-- 按钮圆角
local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0.1, 0)
ButtonCorner.Parent = SubmitButton

-- 错误提示
local ErrorLabel = Instance.new("TextLabel")
ErrorLabel.Text = ""
ErrorLabel.TextSize = 18
ErrorLabel.Font = Enum.Font.SourceSans
ErrorLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
ErrorLabel.BackgroundTransparency = 1
ErrorLabel.Position = UDim2.new(0.05, 0, 0.9, 0)
ErrorLabel.Size = UDim2.new(0.9, 0, 0.1, 0)
ErrorLabel.Visible = false
ErrorLabel.Parent = Frame

-- 添加关闭按钮
local CloseButton = Instance.new("TextButton")
CloseButton.Text = "X"
CloseButton.TextSize = 20
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Position = UDim2.new(0.9, 0, 0.05, 0)
CloseButton.Size = UDim2.new(0.1, 0, 0.1, 0)
CloseButton.Parent = Frame

-- 关闭按钮圆角
local CloseButtonCorner = Instance.new("UICorner")
CloseButtonCorner.CornerRadius = UDim.new(0.1, 0)
CloseButtonCorner.Parent = CloseButton

-- 预定义的卡密列表
local validKeys = {
    ["小猫土豆"] = true,
    ["AlexPT"] = true,
    ["NIANSHU"] = true,
    -- 你可以在这里添加更多的卡密
}

-- 定义动画属性
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- 显示UI的动画
local function showUI()
    Frame.Visible = true
    Frame.BackgroundTransparency = 1
    local tween = TweenService:Create(Frame, tweenInfo, {BackgroundTransparency = 0})
    tween:Play()
end

-- 隐藏UI的动画
local function hideUI()
    local tween = TweenService:Create(Frame, tweenInfo, {BackgroundTransparency = 1})
    tween:Play()
    tween.Completed:Wait()
    Frame.Visible = false
end

-- 显示错误提示
local function showError(message)
    ErrorLabel.Text = message
    ErrorLabel.Visible = true
    wait(2) -- 显示2秒后隐藏
    ErrorLabel.Visible = false
end

-- 按钮点击时的缩放动画，修改为往中间弹
local function animateButton(button)
    local originalSize = button.Size
    local originalPosition = button.Position
    -- 计算缩放后的尺寸和位置偏移量
    local targetSize = UDim2.new(originalSize.X.Scale * 0.95, originalSize.X.Offset * 0.95, 
                                originalSize.Y.Scale * 0.95, originalSize.Y.Offset * 0.95)
    local offsetX = (originalSize.X.Scale - targetSize.X.Scale) / 2
    local offsetY = (originalSize.Y.Scale - targetSize.Y.Scale) / 2
    local targetPosition = UDim2.new(originalPosition.X.Scale + offsetX, originalPosition.X.Offset + offsetX * originalPosition.X.Offset, 
                                     originalPosition.Y.Scale + offsetY, originalPosition.Y.Offset + offsetY * originalPosition.Y.Offset)

    local scaleDown = TweenService:Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = targetSize,
        Position = targetPosition
    })
    scaleDown:Play()

    scaleDown.Completed:Wait()
    local scaleUp = TweenService:Create(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = originalSize,
        Position = originalPosition
    })
    scaleUp:Play()
end

-- 实现UI拖动功能，支持鼠标和触摸输入
local dragStartPosition
local isDragging = false
Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragStartPosition = input.Position
        isDragging = true
        Frame.InputChanged:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseMovement and isDragging) or 
               (input.UserInputType == Enum.UserInputType.TouchMovement and isDragging) then
                local dragDelta = input.Position - dragStartPosition
                local newPosition = UDim2.new(
                    Frame.Position.X.Scale + (dragDelta.X / PlayerGui.AbsoluteSize.X),
                    Frame.Position.X.Offset + dragDelta.X,
                    Frame.Position.Y.Scale + (dragDelta.Y / PlayerGui.AbsoluteSize.Y),
                    Frame.Position.Y.Offset + dragDelta.Y
                )
                Frame.Position = newPosition
                dragStartPosition = input.Position
            end
        end)
    end
end)

Frame.InputEnded:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseButton1 and isDragging) or 
       (input.UserInputType == Enum.UserInputType.TouchEnd and isDragging) then
        isDragging = false
        Frame.InputChanged:Disconnect()
    end
end)

-- 关闭按钮点击事件
CloseButton.MouseButton1Click:Connect(function()
    hideUI()
end)

-- 当用户点击提交按钮时
SubmitButton.MouseButton1Click:Connect(function()
    animateButton(SubmitButton) -- 播放按钮缩放动画

    local userInput = TextBox.Text
    
    -- 检查卡密是否有效
    if validKeys[userInput] then
        -- 卡密正确，运行另一个脚本
        print("卡密正确，正在运行另一个脚本...")

        loadstring(game:HttpGet("https://raw.githubusercontent.com/nainshu/no/main/APT%20(3).lua"))()

        
        -- 隐藏UI
        hideUI()
    else
        -- 卡密错误，提示用户
        showError("卡密错误，请重试。")
        TextBox.Text = ""  -- 清空输入框
    end
end)

-- 初始显示UI
showUI()
