
local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "你的脚本名称（链）",
    Text = "正在加载",
    Duration = 5, 
})
print("反挂机开启")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
local OrionLib = loadstring(game:HttpGet('https://pastebin.com/raw/SePpsSPZ'))()
local Window = OrionLib:MakeWindow({Name = "链脚本", HidePremium = false, SaveConfig = true,IntroText = "欢迎使用链脚本", ConfigFolder = "欢迎链脚本"})
local about = Window:MakeTab({
    Name = "脚本名称",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("您当前服务器的ID"," "..game.GameId.."")

local Tab = Window:MakeTab({
  Name = "链脚本",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "自动瞄准",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/BongCloudMaster/CHAIN/main/aimbot.lua"))()

end
})
Tab:AddButton({
	Name = "透视",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/BongCloudMaster/CHAIN/main/chain%20esp.lua"))()

end
})
Tab:AddButton({
	Name = "透视废料",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/BongCloudMaster/CHAIN/main/scrap%20esp.lua"))()

end
})
Tab:AddButton({
	Name = "一键收集所有废料",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/BongCloudMaster/CHAIN/main/scrapcollector.lua"))()

end
})
