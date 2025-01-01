local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui

-- 定义要复制到剪贴板的内容
local contentToCopy = "793336700"

-- 创建一个ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

-- 创建一个TextLabel用于在屏幕上显示文字
local textLabel = Instance.new("TextLabel")
textLabel.Parent = screenGui
textLabel.Size = UDim2.new(1, 0, 1, 0) -- 使文字标签大小占满整个屏幕
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.Text = "APT已删库，如要获得好玩的DOORS脚本及插件请添加793336700群聊[已复制到剪贴栏]"
textLabel.BackgroundColor3 = Color3.new(0, 0, 0) -- 设置黑色背景框，使文字更醒目
textLabel.BackgroundTransparency = 0.5 -- 背景框透明度设为0.5，可根据喜好调整
textLabel.TextColor3 = Color3.new(1, 1, 0) -- 设置文字颜色为黄色，更加醒目，可根据需要修改
textLabel.Font = Enum.Font.SourceSansBold
textLabel.TextSize = 200 -- 增大文字大小，可根据屏幕分辨率和实际效果调整
textLabel.TextWrapped = true -- 文字自动换行，防止超出屏幕范围时显示不全

-- 定义复制到剪贴板的函数
local function copyToClipboard()
    setclipboard(contentToCopy)
end

-- 调用函数来执行复制操作
copyToClipboard()
