
local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "你的脚本名称（3008透视|APT）",
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
local Window = OrionLib:MakeWindow({Name = "3008透视|APT", HidePremium = false, SaveConfig = true,IntroText = "3008透视", ConfigFolder = "3008透视"})
local about = Window:MakeTab({
    Name = "脚本名称",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("QQ群 : ","599298896")

local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = false
ESP.Tracers = false
ESP.Boxes = false
ESP.Names = false

local function teleportToItem(itemName)
   local donesearch = false
   for i,v in pairs(game:GetService("Workspace").GameObjects.Physical.Items:GetDescendants()) do
       if v.Name == "Root" and v.Parent.Name == itemName then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
           donesearch = true
           break
       end
   end
   if donesearch == false then
       notify("Item position not defined")
   end
end

ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Items, {
   Type = "Model",
   Color = Color3.fromRGB(0, 119, 255),
   IsEnabled = "itemESP"
})

ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Employees, {
   Type = "Model",
   CustomName = "怪物",
   Color = Color3.fromRGB(255, 0, 4),
   IsEnabled = "employeeToggle"
})

local Tab = Window:MakeTab({
  Name = "透视",
  Icon = "rbxassetid://94791368669385",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "第三人称",
	Callback = function()

game.Players.LocalPlayer.CameraMaxZoomDistance = 50
   game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic

end
})
Tab:AddToggle({
	Name = "透视盒子",
	Callback = function(Value)

ESP.Boxes = Value

end
})
Tab:AddToggle({
	Name = "透视追踪者",
	Callback = function(Value)

ESP.Tracers = Value

end
})
Tab:AddToggle({
	Name = "透视名字",
	Callback = function(Value)

ESP.Names = Value

end
})
Tab:AddToggle({
	Name = "透视玩家",
	Callback = function(Value)

ESP.Players = Value

end
})
Tab:AddToggle({
	Name = "透视怪物",
	Callback = function(Value)

ESP.employeeToggle = Value

end
})
Tab:AddToggle({
	Name = "透视物品",
	Callback = function(Value)

ESP.itemESP = Value

end
})
local Tab = Window:MakeTab({
  Name = "传送",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "传送到热狗",
	Callback = function()

teleportToItem("Hotdog")

end
})
Tab:AddButton({
	Name = "传送到披萨",
	Callback = function()

teleportToItem("Pizza")

end
})
Tab:AddButton({
	Name = "传送到汉堡包",
	Callback = function()

teleportToItem("Burger")

end
})
Tab:AddButton({
	Name = "传送到医疗包",
	Callback = function()

teleportToItem("Medkit")

end
})
