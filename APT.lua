local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "你的脚本名称（APT）",
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
local Window = OrionLib:MakeWindow({Name = "APT脚本", HidePremium = false, SaveConfig = true,IntroText = "欢迎使用APT脚本", ConfigFolder = "欢迎APT脚本"})
local about = Window:MakeTab({
    Name = "脚本名称",
    Icon = "rbxassetid://11109742737",
    PremiumOnly = false
})

about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("QQ群 : ","599298896")

local Tab = Window:MakeTab({
  Name = "通用",
  Icon = "rbxassetid://12493754210",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "玩家控制",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/dfhj/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0.txt"))()

end
})
Tab:AddButton({
	Name = "飞行",
	Callback = function()

loadstring(game:HttpGet'https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt')()

end
})
Tab:AddButton({
	Name = "一拳",
	Callback = function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()

end
})
Tab:AddButton({
	Name = "无限跳",
	Callback = function()

loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()

end
})
local Tab = Window:MakeTab({
  Name = "DOORS脚本",
  Icon = "rbxassetid://10983763163",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "引导之光手电",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Matthew201322/Doors-Scriptee/refs/heads/main/Shakelight.lua"))()

end
})
Tab:AddButton({
	Name = "控制物品变大物品",
	Callback = function()

loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/f0178af2301ca90c09895f10f3e7bd4b/raw/46899ccc3626f3485d85f990012f7ef37ae52e5e/resizerDoorsRemake'))()

end
})
Tab:AddButton({
	Name = "MS中文[V3][来源XK][想加插件进群]",
	Callback = function()

getgenv().Spy="mspaint" loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoXuAnZang/XKscript/refs/heads/main/DOORS.txt"))()

end
})
Tab:AddButton({
	Name = "LX|DOORS中文",
	Callback = function()

loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\76\88\51\49\56\47\76\88\47\109\97\105\110\47\76\88\37\50\48\50\46\108\117\97\0"))()

end
})
Tab:AddButton({
	Name = "生成巨魔脸",
	Callback = function()

loadstring(game:HttpGet("https://api.hugebonus.xyz/scripts/TrollFaceSpawner.lua"))()

end
})
Tab:AddButton({
	Name = "杰夫毛绒玩具",
	Callback = function()

local tool = game:GetObjects("rbxassetid://13069619857")[1]
tool.Parent = game.Players.LocalPlayer.Backpack

end
})
Tab:AddButton({
	Name = "变成杰夫杀手",
	Callback = function()

_G.ThirdPerson = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/idkbutiampoggers/JeffTheKillerMorphV2/main/Source.lua"))()

end
})
Tab:AddButton({
	Name = "生成giggle",
	Callback = function()

getgenv().GIGGLE_SPAWN_CONFIG = {
     Damage = 6,
     AttackingTime = math.random(7, 10), -- The time giggle will be attacking for.
     FallSpeed = 3,        -- Speed for when giggle spawns, can be mininum 2 and how high you want
     
     Stunnable = true,    -- If set to true, Giggle will be stunnable with glowstick
     StunTime = 5, -- The time giggle will be stun for
     
     RagdollThrowForce = 50,    -- The Ragdoll's Force when its thrown
     RagdollDissapears = true,  -- If set to true the ragdoll will dissapear once giggle finishes attacking.
  
     RoomSpawning = {
          Enabled = true   -- If set to false, giggle will spawn around the player.
     },
     
     PlayerSpawning = { -- This table will be used if Room Spawning is Disabled
          MinRadius = -20,  -- The minimum distance giggle can spawn from the player.
          MaxRadius = 20.  --  The maximum distance giggle can spawn from the player.
     },
     
     SpawningKey = { -- Key for Spawning
          Enabled = false,  -- If enabled once the key is pressed, giggle will spawn.
          Key = "G"    -- Key that is used for spawning giggle
     }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/refs/heads/main/Doors/GiggleSpawn.lua"))()

end
})
Tab:AddButton({
	Name = "金色手摇",
	Callback = function()

loadstring(game:HttpGet(("https://raw.githubusercontent.com/aadyian9000/the-thing/main/GoldenGummyFlashlight.lua"),true))()

end
})
Tab:AddButton({
	Name = "召唤肘击王（快跑）",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/PandemoniumProtected.lua"))()

end
})
Tab:AddButton({
	Name = "小恶魔玩具",
	Callback = function()

local Players = game:GetService("Players")
local Equipped = false
local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local Root = Char:WaitForChild("HumanoidRootPart")
local RightArm = Char:WaitForChild("RightUpperArm")
local LeftArm = Char:WaitForChild("LeftUpperArm")
local RightC1 = RightArm.RightShoulder.C1
local LeftC1 = LeftArm.LeftShoulder.C1
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/MateiDaBest/Utilities/main/Doors/Custom%20Shop%20Items/Main.lua"))()
local Goblino = game:GetObjects("rbxassetid://12856605563")[1]

Goblino.Parent = game.Players.LocalPlayer.Backpack

CustomShop.CreateItem({
	Title = "El Goblino",
	Desc = "Door 52",
	Image = "https://cdn.discordapp.com/attachments/970078853127110677/1087774910706888824/12372522258.png",
	Price = 52,
	Stack = 1,
})

local function setupHands(tool)
	tool.Equipped:Connect(function()
		Equipped = true
		Char:SetAttribute("Hiding", true)
		for _, v in next, Hum:GetPlayingAnimationTracks() do
			v:Stop()
		end

		RightArm.Name = "R_Arm"
		LeftArm.Name = "L_Arm"

		RightArm.RightShoulder.C1 = RightC1
			* CFrame.Angles(math.rad(-90), math.rad(-10), 0)
		LeftArm.LeftShoulder.C1 = LeftC1
			* CFrame.new(-0.2, -0.4, -0.5)
			* CFrame.Angles(math.rad(-110), math.rad(30), math.rad(0))	
	end)

	tool.Unequipped:Connect(function()
		Equipped = false
		Char:SetAttribute("Hiding", nil)
		RightArm.Name = "RightUpperArm"
		LeftArm.Name = "LeftUpperArm"

		RightArm.RightShoulder.C1 = RightC1
		LeftArm.LeftShoulder.C1 = LeftC1
	end)
end

setupHands(Goblino)

end
})
Tab:AddButton({
	Name = "万圣节糖果透视",
	Callback = function()

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()

local OwO = library:Window("万圣节糖果透视🎃")

local candyEspEnabled = false
local showDistance = false
local connections = {}

OwO:Toggle("🍬糖果透视", false, function(enabled)
    candyEspEnabled = enabled

    local function addEspToCandy(candy)
        if not candy:FindFirstChild("🍬糖果透视") then
            -- Create BillboardGui
            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Name = "CandyESP"
            billboardGui.Size = UDim2.new(4, 0, 3, 0) -- Larger size for better visibility
            billboardGui.StudsOffset = Vector3.new(0, 3, 0)
            billboardGui.AlwaysOnTop = true
            billboardGui.Parent = candy

            -- Create "Candy Root" TextLabel
            local textLabel = Instance.new("TextLabel")
            textLabel.Text = "糖果"
            textLabel.Size = UDim2.new(1, 0, 0.5, 0)
            textLabel.TextColor3 = Color3.new(1, 0, 1) -- Pink color for "Candy Root"
            textLabel.BackgroundTransparency = 1
            textLabel.TextSize = 35 -- Font size
            textLabel.Font = Enum.Font.SourceSansBold
            textLabel.Parent = billboardGui

            -- Create Distance Label (positioned further below the "Candy Root" text)
            local distanceLabel = Instance.new("TextLabel")
            distanceLabel.Name = "距离"
            distanceLabel.Size = UDim2.new(1, 0, 0.3, 0)
            distanceLabel.Position = UDim2.new(0, 0, 0.7, 0) -- Positioned farther below the "Candy Root" label
            distanceLabel.TextColor3 = Color3.new(1, 1, 1) -- White color for distance
            distanceLabel.BackgroundTransparency = 1
            distanceLabel.TextSize = 25 -- Font size for distance
            distanceLabel.Font = Enum.Font.SourceSansBold
            distanceLabel.Parent = billboardGui

            -- Update the distance if showDistance is enabled
            game:GetService("RunService").RenderStepped:Connect(function()
                if candyEspEnabled and showDistance then
                    local player = game.Players.LocalPlayer
                    local distance = (candy.Position - player.Character.HumanoidRootPart.Position).Magnitude
                    distanceLabel.Text = string.format("距离: %.1f", distance)
                else
                    distanceLabel.Text = ""
                end
            end)
        end
    end

    local function findAllCandyRoots()
        -- Search all descendants in Workspace for parts named "CandyRoot"
        for _, descendant in ipairs(workspace:GetDescendants()) do
            if descendant:IsA("BasePart") and descendant.Name == "CandyRoot" then
                addEspToCandy(descendant)
            end
        end
    end

    if candyEspEnabled then
        findAllCandyRoots()

        -- Listen for new parts being added to Workspace
        connections.candyRootAdded = workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("BasePart") and descendant.Name == "CandyRoot" then
                addEspToCandy(descendant)
            end
        end)
    else
        -- Remove ESP from each candy root when the toggle is off
        for _, descendant in ipairs(workspace:GetDescendants()) do
            if descendant:IsA("BasePart") and descendant:FindFirstChild("糖果透视") then
                descendant.CandyESP:Destroy()
            end
        end

        -- Disconnect any connections to prevent memory leaks
        if connections.candyRootAdded then
            connections.candyRootAdded:Disconnect()
            connections.candyRootAdded = nil
        end
    end
end)

-- Second toggle: Show/Hide Distance
OwO:Toggle("糖果距离", false, function(enabled)
    showDistance = enabled
end)


OwO:Button("键盘", function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

OwO:Button("低画质", function()
       for _,v in pairs(workspace:GetDescendants()) do
if v.ClassName == "Part"
or v.ClassName == "SpawnLocation"
or v.ClassName == "WedgePart"
or v.ClassName == "Terrain"
or v.ClassName == "MeshPart" then
v.Material = "Plastic"
end
end
end)



OwO:Label("by:佐菲", Color3.fromRGB(255, 255, 255))

end
})
Tab:AddButton({
	Name = "DOORS旧版大厅",
	Callback = function()

local game_id = 110258689672367
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)

end
})
Tab:AddButton({
	Name = "APT|DOORS脚本",
	Callback = function()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "“门” 脚本 APT汉化",Name = "“门” APT汉化", HidePremium = false, SaveConfig = true, ConfigFolder = "DoorsSex"})
if game.PlaceId == 6516141723 then
    OrionLib:MakeNotification({
        Name = "错误",
        Content = "此脚本不能在大厅执行",
        Time = 5
    })
end
local VisualsTab = Window:MakeTab({
	Name = "透视",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CF = CFrame.new
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom

local KeyChams = {}
VisualsTab:AddToggle({
	Name = "钥匙透视",
	Default = false,
    Flag = "KeyToggle",
    Save = true,
	Callback = function(Value)
		for i,v in pairs(KeyChams) do
            v.Enabled = Value
        end
	end    
})

local function ApplyKeyChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(0.980392, 0.670588, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Adornee = inst
    Cham.Enabled = OrionLib.Flags["KeyToggle"].Value
    Cham.RobloxLocked = true
    return Cham
end

local KeyCoroutine = coroutine.create(function()
    workspace.CurrentRooms.DescendantAdded:Connect(function(inst)
        if inst.Name == "KeyObtain" then
            table.insert(KeyChams,ApplyKeyChams(inst))
        end
    end)
end)
for i,v in ipairs(workspace:GetDescendants()) do
    if v.Name == "KeyObtain" then
        table.insert(KeyChams,ApplyKeyChams(v))
    end
end
coroutine.resume(KeyCoroutine)

local BookChams = {}
VisualsTab:AddToggle({
	Name = "50关书透视",
	Default = false,
    Flag = "BookToggle",
    Save = true,
	Callback = function(Value)
		for i,v in pairs(BookChams) do
            v.Enabled = Value
        end
	end    
})

local FigureChams = {}
VisualsTab:AddToggle({
	Name = "50关Figure透视",
	Default = false,
    Flag = "FigureToggle",
    Save = true,
    Callback = function(Value)
        for i,v in pairs(FigureChams) do
            v.Enabled = Value
        end
    end
})

local function ApplyBookChams(inst)
    if inst:IsDescendantOf(game:GetService("Workspace").CurrentRooms:FindFirstChild("50")) and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value == 50 then
        wait()
        local Cham = Instance.new("Highlight")
        Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        Cham.FillColor = Color3.new(0, 1, 0.749019)
        Cham.FillTransparency = 0.5
        Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
        Cham.Parent = game:GetService("CoreGui")
        Cham.Enabled = OrionLib.Flags["BookToggle"].Value
        Cham.Adornee = inst
        Cham.RobloxLocked = true
        return Cham
    end
end

local function ApplyEntityChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(1, 0, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Enabled = OrionLib.Flags["FigureToggle"].Value
    Cham.Adornee = inst
    Cham.RobloxLocked = true
    return Cham
end

local BookCoroutine = coroutine.create(function()
    task.wait(1)
    for i,v in pairs(game:GetService("Workspace").CurrentRooms["50"].Assets:GetDescendants()) do
        if v.Name == "LiveHintBook" then
            table.insert(BookChams,ApplyBookChams(v))
        end
    end
end)
local EntityCoroutine = coroutine.create(function()
    local Entity = game:GetService("Workspace").CurrentRooms["50"].FigureSetup:WaitForChild("FigureRagdoll",5)
    Entity:WaitForChild("Torso",2.5)
    table.insert(FigureChams,ApplyEntityChams(Entity))
end)


local GameTab = Window:MakeTab({
	Name = "主要功能",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local CharTab = Window:MakeTab({
	Name = "其他",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TargetWalkspeed
CharTab:AddSlider({
	Name = "速度",
	Min = 0,
	Max = 50,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end    
})

local pcl = Instance.new("SpotLight")
pcl.Brightness = 1
pcl.Face = Enum.NormalId.Front
pcl.Range = 90
pcl.Parent = game.Players.LocalPlayer.Character.Head
pcl.Enabled = false


CharTab:AddToggle({
	Name = "灯光(别人看不见)",
	Default = false,
    Callback = function(Value)
        pcl.Enabled = Value
    end
})

GameTab:AddToggle({
	Name = "追逐无火",
	Default = false,
    Flag = "NoSeek",
    Save = true
})

GameTab:AddToggle({
	Name = "瞬间互动",
	Default = false,
    Flag = "InstantToggle",
    Save = true
})
GameTab:AddButton({
	Name = "过一道门",
	Callback = function()
        pcall(function()
            local HasKey = false
            local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
            for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                if v.Name == "KeyObtain" then
                    HasKey = v
                end
            end
            if HasKey then
                game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                wait(0.3)
                fireproximityprompt(HasKey.ModulePrompt,0)
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                wait(0.3)
                fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
            end
            if LatestRoom == 50 then
                CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
            end
            game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
            wait(0.3)
            CurrentDoor.ClientOpen:FireServer()
        end)
  	end    
})

GameTab:AddToggle({
	Name = "连续过门",
	Default = false,
    Save = false,
    Flag = "AutoSkip"
})

local AutoSkipCoro = coroutine.create(function()
        while true do
            task.wait()
            pcall(function()
            if OrionLib.Flags["AutoSkip"].Value == true and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value < 100 then
                local HasKey = false
                local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
                local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom)]:WaitForChild("Door")
                for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                    if v.Name == "KeyObtain" then
                        HasKey = v
                    end
                end
                if HasKey then
                    game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                    task.wait(0.3)
                    fireproximityprompt(HasKey.ModulePrompt,0)
                    game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                    task.wait(0.3)
                    fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
                end
                if LatestRoom == 50 then
                    CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
                end
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                task.wait(0.3)
                CurrentDoor.ClientOpen:FireServer()
            end
        end)
        end
end)
coroutine.resume(AutoSkipCoro)

GameTab:AddButton({
	Name = "没有跳杀",
	Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").Bricks.Jumpscare:Destroy()
        end)
  	end    
})
GameTab:AddToggle({
	Name = "自动躲避rush/ambush",
	Default = false,
    Flag = "AvoidRushToggle",
    Save = true
})
GameTab:AddToggle({
	Name = "取消Screech跳杀",
	Default = false,
    Flag = "ScreechToggle",
    Save = true
})

GameTab:AddToggle({
	Name = "取消心跳游戏",
	Default = false,
    Flag = "HeartbeatWin",
    Save = true
})

GameTab:AddToggle({
	Name = "跳过追逐战",
	Default = false,
    Flag = "PredictToggle" ,
    Save = true
})
GameTab:AddToggle({
	Name = "怪物通知",
	Default = false,
    Flag = "MobToggle" ,
    Save = true
})
GameTab:AddButton({
	Name = "无用",
	Callback = function()
        game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
  	end    
})
GameTab:AddButton({
	Name = "无用",
	Callback = function()
        local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
        game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
  	end    
})
GameTab:AddParagraph("警告","如果你按下没用那就开/关菜单几次")

--// ok actual code starts here

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/50)
        end
    end)
end)

game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(descendant)
    if OrionLib.Flags["NoSeek"].Value == true and descendant.Name == ("Seek_Arm" or "ChandelierObstruction") then
        task.spawn(function()
            wait()
            descendant:Destroy()
        end)
    end
end)

game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if OrionLib.Flags["InstantToggle"].Value == true then
        fireproximityprompt(prompt)
    end
end)

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    
    if tostring(self) == 'Screech' and method == "FireServer" and OrionLib.Flags["ScreechToggle"].Value == true then
        args[1] = true
        return old(self,unpack(args))
    end
    if tostring(self) == 'ClutchHeartbeat' and method == "FireServer" and OrionLib.Flags["HeartbeatWin"].Value == true then
        args[2] = true
        return old(self,unpack(args))
    end
    
    return old(self,...)
end))

workspace.CurrentCamera.ChildAdded:Connect(function(child)
    if child.Name == "Screech" and OrionLib.Flags["ScreechToggle"].Value == true then
        child:Destroy()
    end
end)

local NotificationCoroutine = coroutine.create(function()
    workspace.ChildAdded:Connect(function(inst)
        if inst.Name == "RushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            if OrionLib.Flags["AvoidRushToggle"].Value == true then
                OrionLib:MakeNotification({
                    Name = "警告",
                    Content = "躲避rush请稍等",
                    Time = 5
                })
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local con = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
                end)
                
                inst.Destroying:Wait()
                con:Disconnect()

                game.Players.LocalPlayer.Character:MoveTo(OldPos)
            else
                OrionLib:MakeNotification({
                    Name = "警告",
                    Content = "rush已刷新",
                    Time = 5
                })
            end
        elseif inst.Name == "AmbushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            if OrionLib.Flags["AvoidRushToggle"].Value == true then
                OrionLib:MakeNotification({
                    Name = "警告",
                    Content = "躲避ambush请稍等",
                    Time = 5
                })
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local con = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
                end)
                
                inst.Destroying:Wait()
                con:Disconnect()
                
                game.Players.LocalPlayer.Character:MoveTo(OldPos)
            else
                OrionLib:MakeNotification({
                    Name = "警告",
                    Content = "ambush刷新",
                    Time = 5
                })
            end
        end
    end)
end)

--// ok actual code ends here

local CreditsTab = Window:MakeTab({
	Name = "我的",
	Icon = "APT汉化",
	PremiumOnly = false
})

CreditsTab:AddParagraph("APT汉化")

coroutine.resume(NotificationCoroutine)

OrionLib:Init()

task.wait(2)

end
})
Tab:AddButton({
	Name = "一只坤哥",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Chicken%20Item.lua"))()

end
})
Tab:AddButton({
	Name = "backdoor中文脚本|APT汉化",
	Callback = function()

if _G.Executed then
	warn("Already executed!")
	return
end
_G.Executed = true

if game:GetService("ReplicatedStorage").GameData.Floor.Value ~= "Backdoor" then
	return
end

local screen_gui = Instance.new("ScreenGui")
screen_gui.DisplayOrder = 999999999
screen_gui.IgnoreGuiInset = false
screen_gui.ResetOnSpawn = false
screen_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screen_gui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0, 1)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 1
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0, 0, 1, 0)
frame.Size = UDim2.new(0.386924595, 0, 0.576817155, 0)
frame.Visible = true
frame.Parent = screen_gui

local uigrid_layout = Instance.new("UIGridLayout")
uigrid_layout.CellPadding = UDim2.new(0, 0, 0.0500000007, 0)
uigrid_layout.CellSize = UDim2.new(0.800000012, 0, 0.200000003, 0)
uigrid_layout.StartCorner = Enum.StartCorner.BottomLeft
uigrid_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uigrid_layout.SortOrder = Enum.SortOrder.LayoutOrder
uigrid_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uigrid_layout.Parent = frame

local uipadding = Instance.new("UIPadding")
uipadding.PaddingBottom = UDim.new(0.02500000037252903, 0)
uipadding.Parent = frame

local template = Instance.new("Frame")
template.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
template.BorderColor3 = Color3.new(0, 0, 0)
template.BorderSizePixel = 0
template.Position = UDim2.new(0, 0, 0.605726838, 0)
template.Size = UDim2.new(0, 231, 0, 286)
template.Visible = false
template.Name = "template"
template.Parent = frame

local uiscale = Instance.new("UIScale")
uiscale.Parent = template

local uicorner = Instance.new("UICorner")
uicorner.Parent = template

local uistroke = Instance.new("UIStroke")
uistroke.Color = Color3.new(0.588235, 0.588235, 0.588235)
uistroke.Thickness = 2.5
uistroke.Parent = template

local uigradient = Instance.new("UIGradient")
uigradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.996078, 0.0392157, 0)), ColorSequenceKeypoint.new(0.1599999964237213, Color3.new(1, 0.615686, 0)), ColorSequenceKeypoint.new(0.3199999928474426, Color3.new(1, 1, 0)), ColorSequenceKeypoint.new(0.47999998927116394, Color3.new(0, 1, 0)), ColorSequenceKeypoint.new(0.6399999856948853, Color3.new(0, 0.666667, 1)), ColorSequenceKeypoint.new(0.800000011920929, Color3.new(1, 0.333333, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.666667, 0, 1))})
uigradient.Parent = uistroke

local text_label = Instance.new("TextLabel")
text_label.Font = Enum.Font.GothamBold
text_label.Text = "实体已生成"
text_label.TextColor3 = Color3.new(1, 1, 1)
text_label.TextScaled = true
text_label.TextSize = 14
text_label.TextWrapped = true
text_label.BackgroundColor3 = Color3.new(1, 1, 1)
text_label.BackgroundTransparency = 1
text_label.BorderColor3 = Color3.new(0, 0, 0)
text_label.BorderSizePixel = 0
text_label.Size = UDim2.new(1, 0, 1, 0)
text_label.Visible = true
text_label.ZIndex = 3
text_label.Parent = template

local uistroke_2 = Instance.new("UIStroke")
uistroke_2.Thickness = 2.5
uistroke_2.Parent = text_label

local uipadding_2 = Instance.new("UIPadding")
uipadding_2.PaddingBottom = UDim.new(0.10000000149011612, 0)
uipadding_2.PaddingLeft = UDim.new(0.10000000149011612, 0)
uipadding_2.PaddingRight = UDim.new(0.10000000149011612, 0)
uipadding_2.PaddingTop = UDim.new(0.10000000149011612, 0)
uipadding_2.Parent = text_label

local uigradient_2 = Instance.new("UIGradient")
uigradient_2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.3799654543399811, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.580392, 0.580392, 0.580392)), ColorSequenceKeypoint.new(0.5336787700653076, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))})
uigradient_2.Offset = Vector2.new(-1, 0)
uigradient_2.Rotation = 45
uigradient_2.Parent = template

local shadow = Instance.new("ImageLabel")
shadow.Image = "rbxassetid://14001321443"
shadow.ImageColor3 = Color3.new(0, 0, 0)
shadow.ImageTransparency = 0.75
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(50, 50, 150, 150)
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.BackgroundColor3 = Color3.new(1, 1, 1)
shadow.BackgroundTransparency = 1
shadow.BorderColor3 = Color3.new(0, 0, 0)
shadow.BorderSizePixel = 0
shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
shadow.Size = UDim2.new(1, 35, 1, 35)
shadow.Visible = true
shadow.ZIndex = -1
shadow.Name = "shadow"
shadow.Parent = template

local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
uiaspect_ratio_constraint.AspectRatio = 1.107398509979248
uiaspect_ratio_constraint.Parent = frame

local timer = Instance.new("Frame")
timer.AnchorPoint = Vector2.new(1, 0.9700000286102295)
timer.BackgroundColor3 = Color3.new(1, 1, 1)
timer.BackgroundTransparency = 1
timer.BorderColor3 = Color3.new(0, 0, 0)
timer.BorderSizePixel = 0
timer.Position = UDim2.new(1, 0, 0.982205212, 0)
timer.Size = UDim2.new(1, 0, 0.112479456, 0)
timer.Visible = true
timer.Name = "Timer"
timer.Parent = screen_gui

local image_label = Instance.new("ImageLabel")
image_label.Image = "rbxassetid://16781696827"
image_label.BackgroundColor3 = Color3.new(1, 1, 1)
image_label.BackgroundTransparency = 1
image_label.BorderColor3 = Color3.new(0, 0, 0)
image_label.BorderSizePixel = 0
image_label.Position = UDim2.new(0.829316378, 0, 0, 0)
image_label.Size = UDim2.new(0.170516863, 0, 1, 0)
image_label.Visible = true
image_label.ZIndex = 0
image_label.Parent = timer

local timer_2 = Instance.new("TextLabel")
timer_2.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold)
timer_2.Text = "01:00"
timer_2.TextColor3 = Color3.new(1, 0.705882, 0.298039)
timer_2.TextScaled = true
timer_2.TextSize = 14
timer_2.TextWrapped = true
timer_2.TextXAlignment = Enum.TextXAlignment.Right
timer_2.AnchorPoint = Vector2.new(0.5, 0.5)
timer_2.BackgroundColor3 = Color3.new(1, 1, 1)
timer_2.BackgroundTransparency = 1
timer_2.BorderColor3 = Color3.new(0, 0, 0)
timer_2.BorderSizePixel = 0
timer_2.Position = UDim2.new(0.5, 0, 0.5, 0)
timer_2.Size = UDim2.new(0.999833286, 0, 1, 0)
timer_2.Visible = true
timer_2.Name = "Timer"
timer_2.Parent = image_label

local uipadding_3 = Instance.new("UIPadding")
uipadding_3.PaddingBottom = UDim.new(0.07999999821186066, 0)
uipadding_3.PaddingLeft = UDim.new(0.20000000298023224, 0)
uipadding_3.PaddingRight = UDim.new(0.20000000298023224, 0)
uipadding_3.Parent = timer_2

local uiaspect_ratio_constraint_2 = Instance.new("UIAspectRatioConstraint")
uiaspect_ratio_constraint_2.AspectRatio = 15.940258026123047
uiaspect_ratio_constraint_2.Parent = timer

function sound()
	local notification = Instance.new("Sound", workspace)
	notification.SoundId = "rbxassetid://5153734608"
	notification.Parent = workspace
	notification:Play()
end

function notify(entity, bypassed, other)
	sound()
	local tem = template:Clone()
	tem.Visible = true
	tem.TextLabel.Text = entity .. " 刚刚生成!"
	if bypassed then
		tem.TextLabel.Text = entity .. " 此功能正在修复!"
	end
	if other then
		tem.TextLabel.Text = other
	end
	tem.Parent = frame
	game:GetService("TweenService"):Create(tem.UIScale, TweenInfo.new(0.25, Enum.EasingStyle.Sine), { Scale = 1 }):Play()
	spawn(function()
		while true do
			task.wait(0.01)
			if not tem or not tem:FindFirstChild("UIStroke") or not tem:FindFirstChild("UIStroke"):FindFirstChild("UIGradient") then
				return
			end
			tem.UIStroke.UIGradient.Rotation += 1
		end
	end)

	spawn(function()
		while true do
			task.wait(0.01)
			if not tem or not tem:FindFirstChild("UIGradient") then
				return
			end
			if tem.UIGradient.Offset.X >= 1 then
				tem.UIGradient.Offset = Vector2.new(-1, 0)
			end
			tem.UIGradient.Offset += Vector2.new(0.01, 0)
		end
	end)
	spawn(function()
		task.wait(15)
		if tem and tem:FindFirstChild("UIScale") then
			game:GetService("TweenService"):Create(tem.UIScale, TweenInfo.new(0.25, Enum.EasingStyle.Sine), { Scale = 0 }):Play()
			task.wait(.25)
			tem:Destroy()
		end
	end)
end

function billboard(child, name)
	local billboard_gui = Instance.new("BillboardGui")
	billboard_gui.Active = true
	billboard_gui.AlwaysOnTop = true
	billboard_gui.ClipsDescendants = true
	billboard_gui.LightInfluence = 1
	billboard_gui.Size = UDim2.new(10, 0, 2, 0)
	billboard_gui.ResetOnSpawn = false
	billboard_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	billboard_gui.Parent = child

	local text_label = Instance.new("TextLabel")
	text_label.Font = Enum.Font.GothamBold
	text_label.Text = name
	text_label.TextColor3 = Color3.new(1, 1, 1)
	text_label.TextScaled = true
	text_label.TextSize = 14
	text_label.TextWrapped = true
	text_label.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label.BackgroundTransparency = 1
	text_label.BorderColor3 = Color3.new(0, 0, 0)
	text_label.BorderSizePixel = 0
	text_label.Size = UDim2.new(1, 0, 1, 0)
	text_label.Visible = true
	text_label.Parent = billboard_gui

	local uistroke = Instance.new("UIStroke")
	uistroke.Thickness = 2.5
	uistroke.Parent = text_label
	
	spawn(function()
		while task.wait() do
			local hue = tick() % 5 / 5
			local color = Color3.fromHSV(hue, 1, 1) 
			text_label.TextColor3 = color
		end
	end)
end

function selection(child, name)
	billboard(child, name)
	local hi = Instance.new("Highlight")
	hi.Parent = child
	hi.Adornee = child
	hi.OutlineColor = Color3.fromRGB(161, 0, 0)
	hi.FillColor = Color3.fromRGB(255, 0, 0)
	hi.FillTransparency = 0.75
	if child:IsA("Part") then
		child.Color = Color3.fromRGB(0, 0, 0)
		child.Transparency = 0
	end
	spawn(function()
		while task.wait() do
			local hue = tick() % 5 / 5
			local color = Color3.fromHSV(hue, 1, 1) 
			hi.OutlineColor = color
			hi.FillColor = color
		end
	end)
end

workspace.ChildAdded:Connect(function(child)
	if child.Name == "BackdoorLookman" then
		if child then
			task.wait()
			child.Parent = game:GetService("Debris")
			return
		end
		notify("👁️后门 Lookman")
		selection(child:WaitForChild("Core"), "👁️ Backdoor Lookman")
	elseif child.Name == "BackdoorRush" then
		notify("💨 闪电战(Backdoor Rush)")
		selection(child:WaitForChild("Main"), "💨 闪电战 (Backdoor Rush)")
	end
end)

function checkDistance(part)
	if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or not part then
		return false
	end
	local distanceToPart = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).magnitude
	if distanceToPart <= 10 then
		return true
	end
	return false
end

for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
	if v:IsA("BasePart") and v.Name == "Door" and v.Parent.Name == "Door" then
		selection(v, "🚪 门")
	elseif v.Name == "KeyObtain" then
		selection(v, "🔑 钥匙")
		spawn(function()
			while task.wait() do
				if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
					fireproximityprompt(v.ModulePrompt)
				end
			end
		end)
	elseif v.Name == "Backdoor_Wardrobe" then
		selection(v, "🗄️ 柜子")
	elseif v.Name == "TimerLever" then
		selection(v, "⏳ 时间拉杆")
		spawn(function()
			while task.wait() do
				if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
					fireproximityprompt(v.ActivateEventPrompt)
				end
			end
		end)
	elseif v.Name == "ActivateEventPrompt" and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "DrawerContainer" then
		spawn(function()
			while task.wait() do
				if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
					fireproximityprompt(v)
				end
			end
		end)
	elseif v.Name == "LootPrompt" and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "DrawerContainer" then
		spawn(function()
			while task.wait() do
				if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
					fireproximityprompt(v)
				end
			end
		end)
	end
end

workspace.CurrentRooms.ChildAdded:Connect(function(child)
	spawn(function()
		task.wait(5)
		if child.Assets:FindFirstChild("TimerLever") then
			selection(child.Assets.TimerLever, "⏳ 时间拉杆")
			spawn(function()
				while task.wait() do
					fireproximityprompt(child.Assets.TimerLever.ActivateEventPrompt)
				end
			end)
		end
	end)
	task.wait(1)
	for _, v in pairs(child:GetDescendants()) do
		if v:IsA("BasePart") and v.Name == "Door" and v.Parent.Name == "Door" then
			selection(v, "🚪 门")
		elseif v.Name == "KeyObtain" then
			selection(v, "🔑 钥匙")
			spawn(function()
				while task.wait() do
					if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
						fireproximityprompt(v.ModulePrompt)
					end
				end
			end)
		elseif v.Name == "Backdoor_Wardrobe" then
			selection(v, "🗄️ 柜子")
		elseif v.Name == "ActivateEventPrompt" and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "DrawerContainer" then
			spawn(function()
				while task.wait() do
					if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
						fireproximityprompt(v)
					end
				end
			end)
		elseif v.Name == "LootPrompt" and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "DrawerContainer" then
			spawn(function()
				while task.wait() do
					if checkDistance(v:FindFirstChildWhichIsA("BasePart")) then
						fireproximityprompt(v)
					end
				end
			end)
		end
	end
end)

notify("", nil, "脚本作者kiwib汉化APT ")
notify("👁️ 你现在看不见lookman", true)
notify("", nil, "⚡ 红色骷髅头现在是服务器端的，所以它不能被删除，讨厌的视觉效果被删除.")

if game:GetService("ReplicatedStorage").FloorClientStuff.ClientRemote:FindFirstChild("Haste") then
	game:GetService("ReplicatedStorage").FloorClientStuff.ClientRemote.Haste:Destroy()
end

local Notified = false

game:GetService("ReplicatedStorage").FloorClientStuff.DigitalTimer:GetPropertyChangedSignal("Value"):Connect(function()
	if game:GetService("ReplicatedStorage").FloorClientStuff.DigitalTimer.Value == 0 then
		if not Notified then
			Notified = true
			notify("", nil, "⚡ 红色骷髅头已经生成了，快去拉拉杆😡")
		end
	else
		Notified = false
	end
	local formattedTime = string.format("%02d:%02d", math.floor(game:GetService("ReplicatedStorage").FloorClientStuff.DigitalTimer.Value / 60), game:GetService("ReplicatedStorage").FloorClientStuff.DigitalTimer.Value % 60)
	timer_2.Text = formattedTime
end)

spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		workspace.CurrentCamera.FieldOfView = 120
		game:GetService("ReplicatedStorage").RemotesFolder.MotorReplication:FireServer(0, 90, 0, false)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 21
		game.Lighting.Brightness = 2
		game.Lighting.ClockTime = 14
		game.Lighting.FogEnd = 100000
		game.Lighting.GlobalShadows = false
		game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if child:IsA("BasePart") and child.CanCollide == true then
				child.CanCollide = false
			end
		end
	end)
end)

end
})
Tab:AddButton({
	Name = "A1000大药水",
	Callback = function()

loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\67\104\105\110\97\81\89\47\83\99\114\105\112\116\115\47\77\97\105\110\47\83\116\97\114\74\117\103"))()

end
})
Tab:AddButton({
	Name = "黑洞［不确定支持不支持其他服务器，小心使用］",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Black%20Hole.lua"))()

end
})
Tab:AddButton({
	Name = "可爱的无翼鸟",
	Callback = function()

loadstring(game:HttpGet("https://pastebin.com/raw/PFERptU5", true))()

end
})
Tab:AddButton({
	Name = "老外的体力值脚本",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/nervehammer1/stupidhc/refs/heads/main/JaysHardcore"))() 

end
})
Tab:AddButton({
	Name = "夜视仪",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ChinaQY/Scripts/Main/NVCS-3000"))()

end
})
Tab:AddButton({
	Name = "引导之光桶",
	Callback = function()

loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/04d7dd5e02688624b958b8c2604b924c/raw/9e86b34249f44ed2dd433176e67daaf3db30cde8/MoonBottle'))()

end
})
Tab:AddButton({
	Name = "可控制物品［不会用进群］",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/F3X.lua"))()

end
})
Tab:AddButton({
	Name = "恶作剧之光桶",
	Callback = function()

loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/8b05c837bea9effac2554340465b4be1/raw/3f3be0ee72e7f153db39a16a40fa63dce6cde72d/SpiralBottle'))()

end
})
Tab:AddButton({
	Name = "大举办",
	Callback = function()

-- settings
local SNAKE_LENGTH = 10
local SNAKE_SIZE = 1
local SNAKE_WOBBLINESS = 50








-- secript
local Character = game:GetService("Players").LocalPlayer.Character
local Root: BasePart = Character:WaitForChild("HumanoidRootPart")

local PpAttachment = Instance.new("Attachment")
PpAttachment.Name = "PpAttachment"
PpAttachment.Position = Vector3.new(0, -1, -0.5)
PpAttachment.Orientation = Vector3.new(0, 90, 0)
PpAttachment.Parent = Root

local PpHolder = Instance.new("Folder")
PpHolder.Name = "PpHolder"
PpHolder.Parent = workspace

local function MakeSnake(Length: number, Size: number, Wobbliness: number)
	PpHolder:ClearAllChildren()

	local LastSection
	local Sections = {}
	
	local PpRoot = Instance.new("Part")
	PpRoot.Transparency = 1
	PpRoot.CanCollide = false
	PpRoot.CanQuery = false
	PpRoot.CanTouch = false
	PpRoot.Massless = true
	PpRoot.Name = "NewPPRoot"
	PpRoot.Parent = PpHolder
	
	local NewPpAttachment = Instance.new("Attachment")
	NewPpAttachment.Parent = PpRoot
	
	local AlignPp = Instance.new("AlignPosition")
	AlignPp.RigidityEnabled = true
	AlignPp.Attachment0 = NewPpAttachment
	AlignPp.Attachment1 = PpAttachment
	AlignPp.Parent = PpRoot
	
	local AlignPpRotation = Instance.new("AlignOrientation")
	AlignPpRotation.RigidityEnabled = true
	AlignPpRotation.Attachment0 = NewPpAttachment
	AlignPpRotation.Attachment1 = PpAttachment
	AlignPpRotation.Parent = PpRoot
	
	local MinimumIndex = math.ceil(1 / Size) * 1
	
	for i = 1, Length do
		local PpSection = Instance.new("Part")
		PpSection.Shape = Enum.PartType.Cylinder
		PpSection.CanCollide = i > MinimumIndex
		PpSection.Massless = true
		PpSection.Material = Enum.Material.SmoothPlastic
		PpSection.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001)
		PpSection.Position = Root.Position
		PpSection.Size = Vector3.one * Size

		local BackAttachment = Instance.new("Attachment")
		BackAttachment.Position = Vector3.new(-Size / 2, 0, 0)
		BackAttachment.Parent = PpSection

		local FrontAttachment = Instance.new("Attachment")
		FrontAttachment.Position = Vector3.new(Size / 2, 0, 0)
		FrontAttachment.Name = "Important"
		FrontAttachment.Parent = PpSection

		local BallsConstraint = Instance.new("BallSocketConstraint")
		BallsConstraint.Attachment0 = LastSection and LastSection:FindFirstChild("Important") or NewPpAttachment
		BallsConstraint.Attachment1 = BackAttachment
		BallsConstraint.Parent = PpSection

		local AlignOrientation = Instance.new("AlignOrientation")
		AlignOrientation.Responsiveness = Wobbliness or 10
		AlignOrientation.Attachment0 = BackAttachment
		AlignOrientation.Attachment1 = LastSection and LastSection:FindFirstChild("Important") or NewPpAttachment
		AlignOrientation.Parent = PpSection

		local AlignPosition = Instance.new("AlignPosition")
		AlignPosition.Responsiveness = 10
		AlignPosition.Attachment0 = BackAttachment
		AlignPosition.Attachment1 = LastSection and LastSection:FindFirstChild("Important") or PpAttachment
		AlignPosition.Parent = PpSection

		PpSection.Parent = PpHolder
		LastSection = PpSection

		table.insert(Sections, PpSection)
	end

	for _, Section in pairs(Sections) do
		for _, OtherSection in pairs(Sections) do
			if Section == OtherSection then continue end

			local Constraint = Instance.new("NoCollisionConstraint")
			Constraint.Part0 = Section
			Constraint.Part1 = OtherSection
			Constraint.Parent = Section
		end
	end
end

MakeSnake(SNAKE_LENGTH, SNAKE_SIZE, SNAKE_WOBBLINESS)

end
})
Tab:AddButton({
	Name = "小地图",
	Callback = function()

-- settings
local MINIMAP_SIZE = 0.12
local MINIMAP_SCALE = 500
local MINIMAP_PADDING = 12

local ELEMENT_BORDER = 1
























-- script
local RunService = game:GetService("RunService")
local Player = game:GetService("Players").LocalPlayer
local CurrentRooms = workspace:WaitForChild("CurrentRooms")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Minimap"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
ScreenGui.Parent = Player.PlayerGui

local MinimapFrame = Instance.new("Frame")
MinimapFrame.Size = UDim2.fromScale(MINIMAP_SIZE, MINIMAP_SIZE)
MinimapFrame.SizeConstraint = Enum.SizeConstraint.RelativeXX
MinimapFrame.AnchorPoint = Vector2.new(0, 1)
MinimapFrame.Position = UDim2.new(0, MINIMAP_PADDING, 1, -MINIMAP_PADDING)
MinimapFrame.BackgroundColor3 = Color3.new()
MinimapFrame.ClipsDescendants = true
MinimapFrame.ZIndex = -1
MinimapFrame.Parent = ScreenGui

local ElementHolder = Instance.new("Frame")
ElementHolder.BackgroundTransparency = 1
ElementHolder.Size = UDim2.fromScale(1, 1)
ElementHolder.Position = UDim2.fromScale(0.5, 0.5)
ElementHolder.AnchorPoint = Vector2.new(0.5, 0.5)
ElementHolder.ZIndex = 0
ElementHolder.Parent = MinimapFrame

local Arrow = Instance.new("ImageLabel")
Arrow.Size = UDim2.fromScale(0.07, 0.09)
Arrow.Position = UDim2.fromScale(0.5, 0.5)
Arrow.AnchorPoint = Vector2.new(0.5, 0.5)
Arrow.BackgroundTransparency = 1
Arrow.Image = "rbxassetid://13069495837"
Arrow.ZIndex = 12345
Arrow.Parent = MinimapFrame

local function AddPartToMap(Part: BasePart, Color: Color3, ZIndex: number, SizeOverride: UDim2?)
	local Frame = Instance.new("Frame")
	Frame.Size = SizeOverride or UDim2.new(Part.Size.X / MINIMAP_SCALE, -ELEMENT_BORDER * 2, Part.Size.Z / MINIMAP_SCALE, -ELEMENT_BORDER * 2)
	Frame.Position = UDim2.fromScale(Part.Position.X / MINIMAP_SCALE + 0.5, Part.Position.Z / MINIMAP_SCALE + 0.5)
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.new()
	Frame.BorderColor3 = Color
	Frame.BorderSizePixel = ELEMENT_BORDER
	Frame.ZIndex = ZIndex + 2
	Frame.Rotation = Part.Rotation.Y
	Frame.Parent = ElementHolder
end

local function AddRoomToMap(Room: Model)
	for _, Part in pairs(Room:GetChildren()) do
		if not Part:IsA("BasePart") then continue end
		
		if Part.CollisionGroup == "BaseCheck" then
			AddPartToMap(Part, Color3.new(0, 0.85, 0), 0)
		elseif Part == Room.PrimaryPart then
			AddPartToMap(Part, Color3.new(0.85, 0, 0), 1, UDim2.fromScale(8 / MINIMAP_SCALE, 8 / MINIMAP_SCALE))
		end
	end
end

for _, Room in pairs(CurrentRooms:GetChildren()) do
	AddRoomToMap(Room)
end

CurrentRooms.ChildAdded:Connect(function(NewRoom)
	repeat
		task.wait()
	until NewRoom:FindFirstChild("RoomEntrance") and NewRoom:FindFirstChild(NewRoom.Name)
	
	AddRoomToMap(NewRoom)
end)

RunService.RenderStepped:Connect(function()
	local Character = Player.Character; if not Character then return end
	local Root = Character:FindFirstChild("Collision"); if not Root then return end
	local LookVector = workspace.CurrentCamera.CFrame.LookVector
	local Rotation = math.atan2(LookVector.X, LookVector.Z)
	
	ElementHolder.Position = UDim2.fromScale(0.5 - Root.Position.X / MINIMAP_SCALE, 0.5 - Root.Position.Z / MINIMAP_SCALE)
	Arrow.Rotation = -math.deg(Rotation) + 180
end)

end
})
Tab:AddButton({
	Name = "seek枪",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/seekgun.lua"))()

end
})
Tab:AddButton({
	Name = "中文DOORS最强脚本",
	Callback = function()

loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()

end
})
Tab:AddButton({
	Name = "紫色手电",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/munciseek/Other-script/main/Purple-flashlight"))()

end
})
Tab:AddButton({
	Name = "引导蜡烛",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/munciseek/Other-script/main/Guiding-Candle"))()

end
})
local Tab = Window:MakeTab({
  Name = "国王遗产",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "英文国王遗产脚本（因为没开源，所以没汉化）",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/upd7/refs/heads/main/Legacy"))()

end
})
Tab:AddButton({
	Name = "英文国外遗产（没汉化原因和上面那个一样）",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ChopLoris/ArcHub/main/main.lua"))()

end
})
local Tab = Window:MakeTab({
  Name = "后悔电梯",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "后悔电梯",
	Callback = function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/474375w/jgvjyfb/refs/heads/main/jhgbtfb.lua'))()

end
})
local Tab = Window:MakeTab({
  Name = "［NEW］鱼",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "全自动钓鱼",
	Callback = function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/474375w/jgvjyfb/refs/heads/main/fish%20auto'))()

end
})
Tab:AddButton({
	Name = "自动点摇晃",
	Callback = function()

local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local player = Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

local function clickButton(button)
    GuiService.SelectedObject = button
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
end

local function setupButtonListener()
    gui.DescendantAdded:Connect(function(descendant)
        if descendant.Name == "button" and 
           descendant.Parent and 
           descendant.Parent.Name == "safezone" and
           descendant.Parent.Parent and 
           descendant.Parent.Parent.Name == "shakeui" then
            task.spawn(function()
                while descendant and descendant.Parent do
                    clickButton(descendant)
                    task.wait()
                end
            end)
        end
    end)
    
    for _, descendant in ipairs(gui:GetDescendants()) do
        if descendant.Name == "button" and 
           descendant.Parent and 
           descendant.Parent.Name == "safezone" and
           descendant.Parent.Parent and 
           descendant.Parent.Parent.Name == "shakeui" then
            task.spawn(function()
                while descendant and descendant.Parent do
                    clickButton(descendant)
                    task.wait()
                end
            end)
        end
    end
end

setupButtonListener()

end
})
local Tab = Window:MakeTab({
  Name = "音响脚本",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "只能自己听见的音响",
	Callback = function()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(29,255,0)

Library:Notification({
	Text = "by:佐菲 :)",
	Duration = 6
})

wait (3)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(29,255,0)

Library:Notification({
	Text = "已经检测到你进入的服务器 ",
	Duration = 69
})

----------------------------
wait (3)
-- Song Player GUI
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Background Frame
local background = Instance.new("Frame")
background.Size = UDim2.new(0, 200, 0, 100)
background.BackgroundColor3 = Color3.new(0, 0, 1)
background.BorderColor3 = Color3.new(1, 1, 1)
background.BackgroundTransparency = 0.5
background.Position = UDim2.new(0.5, -100, 0.5, -50)
background.Active = true
background.Draggable = true
background.Parent = gui

-- Song ID Input Box
local idBox = Instance.new("TextBox")
idBox.Size = UDim2.new(0.5, 0, 0.2, 0)
idBox.Position = UDim2.new(0.25, 0, 0.2, 0)
idBox.Text = "音乐ID"
idBox.Parent = background

-- Play Button
local playButton = Instance.new("TextButton")
playButton.Size = UDim2.new(0.4, 0, 0.2, 0)
playButton.Position = UDim2.new(0.05, 0, 0.5, 0)
playButton.Text = "播放"
playButton.Parent = background

-- Stop Button
local stopButton = Instance.new("TextButton")
stopButton.Size = UDim2.new(0.4, 0, 0.2, 0)
stopButton.Position = UDim2.new(0.55, 0, 0.5, 0)
stopButton.Text = "停止"
stopButton.Parent = background

-- Audio Instance
local audio = Instance.new("Sound")
audio.Parent = game.Workspace

-- Side Notification
local notification = Instance.new("TextLabel")
notification.Size = UDim2.new(0, 200, 0, 20)
notification.Position = UDim2.new(1, 0, 0.5, -10)
notification.BackgroundColor3 = Color3.new(1, 1, 1)
notification.BackgroundTransparency = 0.5
notification.TextColor3 = Color3.new(0, 0, 0)
notification.Text = "Credits to SUPERSONIC GAMERZ"
notification.Parent = gui

-- Play Button Functionality
playButton.MouseButton1Click:Connect(function()
    local id = tonumber(idBox.Text)
    if id then
        audio.SoundId = "rbxassetid://"..id
        audio:Play()
    end
end)

-- Stop Button Functionality
stopButton.MouseButton1Click:Connect(function()
    audio:Stop()
end)

end
})
Tab:AddButton({
	Name = "天上掉下塔克饼",
	Callback = function()

local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://142376088"
    sound.Parent = game.Workspace
    sound:Play()

end
})
Tab:AddButton({
	Name = "压迫感的小曲",
	Callback = function()

local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://7023635858"
    sound.Parent = game.Workspace
    sound:Play()

end
})
local Tab = Window:MakeTab({
  Name = "情云脚本专区",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "情云内脏与黑火药",
	Callback = function()

loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\67\104\105\110\97\81\89\47\83\99\114\105\112\116\115\47\77\97\105\110\47\71\66"))()

end
})
Tab:AddButton({
	Name = "floor2脚本",
	Callback = function()

loadstring(game:HttpGet("https://github.com/DocYogurt/Main/raw/main/Scripts/DF2RW.lua"))()

end
})
Tab:AddButton({
	Name = "压力万圣节脚本",
	Callback = function()

loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\67\104\105\110\97\81\89\47\83\99\114\105\112\116\115\47\77\97\105\110\47\80\114\101\115\115\117\114\101"))()

end
})
Tab:AddButton({
	Name = "压力脚本",
	Callback = function()

loadstring(game:HttpGet(('https://github.com/DocYogurt/Main/raw/main/Scripts/Pressure')))()

end
})
Tab:AddButton({
	Name = "情云脚本",
	Callback = function()

loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()

end
})
local Tab = Window:MakeTab({
  Name = "落叶中心专区",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "落叶中心",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))()

end
})
local Tab = Window:MakeTab({
  Name = "模仿者",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "模仿者万圣节",
	Callback = function()

loadstring(game:HttpGet"https://raw.githubusercontent.com/Laelmano24/Rael-Hub/main/main.txt")()

end
})
local Tab = Window:MakeTab({
  Name = "战斗中的菜鸟",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "战斗中的菜鸟",
	Callback = function()

loadstring(game:HttpGet("https://github.com/474375w/djdbejxd/blob/main/%E8%8F%9C%E9%B8%9F%E6%A1%86%E6%9E%B6"))()

end
})
local Tab = Window:MakeTab({
  Name = "最强战场",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "自动躲避",
	Callback = function()

shared.BlockOrCounterKeycode = Enum.KeyCode.Four
shared.Range = 6

print("loaded")
if shared.DebugConnections ~= nil then
    for i,v in pairs(shared.DebugConnections) do
        v:Disconnect()
        v = nil
    end
end

-- services
local RunService = game:GetService("RunService")
local players = game:GetService("Players")

-- vars
local player = game.Players.LocalPlayer

-- tables
local validTargets = {}
-- "UsedDash"
local ignoreAccessories = {"FinalDeath","Ragdoll","RagdollSim","Small Debris","Freeze"}

-- functions
function stringstarts(String,Start)
    return string.sub(String,1,string.len(Start))==Start
end

-- keypress functions
local vim = game:GetService('VirtualInputManager')
input = {
    hold = function(key, time)
        vim:SendKeyEvent(true, key, false, nil)
        task.wait(time)
        vim:SendKeyEvent(false, key, false, nil)
    end,
    press = function(key)
        vim:SendKeyEvent(true, key, false, nil)
	task.wait(0.005)
        vim:SendKeyEvent(false, key, false, nil)
    end
}

shared.DebugConnections = {}

local debounce = false
shared.DebugConnections["RunService"] = RunService.RenderStepped:Connect(function()
    for i,v in pairs(players:GetPlayers()) do
        if v ~= player then
            local pos,playerPos
            if not v.Character or not player.Character then return end

            if v.Character:FindFirstChild("HumanoidRootPart") then 
                pos = v.Character.HumanoidRootPart.Position
            else
                pos = v.Character:GetPivot().Position
            end

            if player.Character:FindFirstChild("HumanoidRootPart") then
                playerPos = player.Character.HumanoidRootPart.Position
            else
                playerPos = player.Character:GetPivot().Position
            end
            if (pos - playerPos).Magnitude <= (shared.Range or 6) then
                if not table.find(validTargets,v) then
                    validTargets[#validTargets + 1] = v
                    
                    local connections = {}
                    connections["LeavePlayer"] = v.CharacterRemoving:Connect(function()
                        table.remove(validTargets,table.find(validTargets,v))

                        for i,connect in pairs(connections) do
                            if shared.DebugConnections[v.Name..i] then
                                shared.DebugConnections[v.Name..i]:Disconnect()
                                shared.DebugConnections[v.Name..i] = nil
                            end

                            if connect then
                                connect:Disconnect()
                                connect = nil
                            end
                        end
                    end)

                    connections["LeaveRange"] = RunService.Heartbeat:Connect(function()
                        local pos = v.Character.HumanoidRootPart.Position or v.Character:GetPivot().Position
                        if (pos - players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > (shared.Range or 6) then
                            print("leaving range "..v.Name)
                            table.remove(validTargets,table.find(validTargets,v))
                            for i,connect in pairs(connections) do
                                if shared.DebugConnections[v.Name..i] then
                                    shared.DebugConnections[v.Name..i]:Disconnect()
                                    shared.DebugConnections[v.Name..i] = nil
                                end

                                if connect then
                                    connect:Disconnect()
                                    connect = nil
                                end
                            end
                        end
                    end)

                    connections["newAbilityUsed"] = v.Character.ChildAdded:Connect(function(child)
                        print("new ability used")
                        if not child:IsA("Accessory") then return end
                        print("real1")
                        for a,b in pairs(ignoreAccessories) do if child.Name:lower():match(b:lower()) then return end end
                        print("real2")
                        if stringstarts(child.Name,"#ACCESSORY") or child.Name:lower():match("counter") then return end
                        print("real3")

                        if not debounce then
                            debounce = true
                            print(child.Name.." and path: "..child:GetFullName())
                            input.hold(shared.BlockOrCounterKeycode or Enum.KeyCode.Four,0.15)
                            debounce = false
                        end
                    end)

                    for i,connect in pairs(connections) do
                        shared.DebugConnections[v.Name..i] = connect
                    end
                end
            end
        end
    end
end)

shared.DebugConnections["PlayerLeave"] = players.PlayerDisconnecting:Connect(function(player)
    if table.find(validTargets,player) then
        table.remove(validTargets,table.find(validTargets,player))
    end
end)

shared.DebugConnections["HumanoidDied"] = player.Character:FindFirstChildOfClass("Humanoid").Died:Connect(function()
    for i,v in pairs(validTargets) do
        table.remove(validTargets,i)
    end
end)

shared.DebugConnections["PlayerRespawn"] = player.CharacterAdded:Connect(function(char)
    for i,v in pairs(validTargets) do
        table.remove(validTargets,i)
    end
    
    task.spawn(function()
        char:WaitForChild("Humanoid",math.huge)

        shared.DebugConnections["HumanoidDied"]:Disconnect()
        shared.DebugConnections["HumanoidDied"] = player.Character:FindFirstChildOfClass("Humanoid").Died:Connect(function()
            for i,v in pairs(validTargets) do
                table.remove(validTargets,i)
            end

            for i,v in pairs(shared.DebugConnections) do
                if i:match("newAbilityUsed") or i:match("LeaveRange") or i:match("LeavePlayer") then
                    v:Disconnect()
                    v = nil
                end
            end
        end)
    end) 
end)

end
})
Tab:AddButton({
	Name = "米诺斯动作集",
	Callback = function()

loadstring(game:HttpGet("https://pastebin.com/raw/faQfsu6N"))()

end
})
Tab:AddButton({
	Name = "一把枪",
	Callback = function()

loadstring(game:HttpGet("https://pastebin.com/raw/Er5cfTr3"))()

end
})
Tab:AddButton({
	Name = "KJ英文脚本",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Gokou300/Gokou300/refs/heads/main/KJ%20XSuriryuHub"))()

end
})
Tab:AddButton({
	Name = "索尼克",
	Callback = function()

_G.HackedWalkSpeed = 100

local Plrs = game:GetService("Players")

local MyPlr = Plrs.LocalPlayer
local MyChar = MyPlr.Character

if MyChar then
local Hum = MyChar.Humanoid
Hum.Changed:connect(function()
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
Hum.WalkSpeed = _G.HackedWalkSpeed
end


MyPlr.CharacterAdded:connect(function(Char)
MyChar = Char
repeat wait() until Char:FindFirstChild("Humanoid")
local Hum = Char.Humanoid
Hum.Changed:connect(function()
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
local plr = game.Players.LocalPlayer
local gui = plr.PlayerGui
local ulttext = gui.ScreenGui.MagicHealth.TextLabel

ulttext.Text = "赛博精神病"

local windtrail2 = game.ReplicatedStorage.Resources.HeadFirst["CharFX"].WindTrail:Clone()
windtrail2.Parent = game.Players.LocalPlayer.Character["Right Arm"]
    for _, child in ipairs(windtrail2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end

local windtrail2 = game.ReplicatedStorage.Resources.HeadFirst["CharFX"].WindTrail:Clone()
windtrail2.Parent = game.Players.LocalPlayer.Character["Left Arm"]
    for _, child in ipairs(windtrail2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end

local windtrail2 = game.ReplicatedStorage.Resources.HeadFirst["CharFX"].WindTrail:Clone()
windtrail2.Parent = game.Players.LocalPlayer.Character["Right Leg"]
    for _, child in ipairs(windtrail2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end

local windtrail2 = game.ReplicatedStorage.Resources.HeadFirst["CharFX"].WindTrail:Clone()
windtrail2.Parent = game.Players.LocalPlayer.Character["Left Leg"]
    for _, child in ipairs(windtrail2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end

local spin1 = game.ReplicatedStorage.Resources.WhirlwindDrop["CharFX"].Spin:Clone()
spin1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(spin1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end
local wow1 = game.ReplicatedStorage.Resources.Dragon["Complete"].Part.Debri:Clone()
wow1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(wow1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end
local wind1 = game.ReplicatedStorage.Resources.Dragon["Stretch"].Part.Attachment:Clone()
wind1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(wind1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

-- Wait for the player to load
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Find the "Right Arm" part inside the player's character
local rightArm = character:WaitForChild("Right Arm")
if not rightArm then
    error("Right Arm part not found in player character")
end

-- Check for Resources folder in ReplicatedStorage
local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")

-- Check for KJEffects folder inside Resources
local vanishingKickFolder = resourcesFolder:WaitForChild("VanishingKick")

-- Check for speedlinesandstuff part inside KJEffects
local speedlinesandstuffPart = vanishingKickFolder:WaitForChild("Trail2")

-- Duplicate the speedlinesandstuff part
local speedlinesandstuffClone = speedlinesandstuffPart:Clone()

-- Put the duplicate in Workspace
speedlinesandstuffClone.Parent = Workspace

-- Set the position to the Right Arm initially
speedlinesandstuffClone.CFrame = rightArm.CFrame

-- Function to enable all ParticleEmitters
local function enableParticleEmitters(parent)
    for _, descendant in ipairs(parent:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            descendant.Enabled = true
        end
    end
end

-- Update the clone's position every frame
RunService.RenderStepped:Connect(function()
    if character and rightArm then
        speedlinesandstuffClone.CFrame = rightArm.CFrame
    end
end)

-- Example usage after your dash effect completes
spawn(function()
    -- Simulating end of dash effect
    wait(0)  -- Adjust the wait time as needed

    -- Enable all ParticleEmitters inside speedlinesandstuffClone
    enableParticleEmitters(speedlinesandstuffClone)
end)

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

-- Wait for the player to load
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Find the "Right Arm" part inside the player's character
local rightArm = character:WaitForChild("Left Arm")
if not rightArm then
    error("Right Arm part not found in player character")
end

-- Check for Resources folder in ReplicatedStorage
local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")

-- Check for KJEffects folder inside Resources
local vanishingKickFolder = resourcesFolder:WaitForChild("VanishingKick")

-- Check for speedlinesandstuff part inside KJEffects
local speedlinesandstuffPart = vanishingKickFolder:WaitForChild("Trail2")

-- Duplicate the speedlinesandstuff part
local speedlinesandstuffClone = speedlinesandstuffPart:Clone()

-- Put the duplicate in Workspace
speedlinesandstuffClone.Parent = Workspace

-- Set the position to the Right Arm initially
speedlinesandstuffClone.CFrame = rightArm.CFrame

-- Function to enable all ParticleEmitters
local function enableParticleEmitters(parent)
    for _, descendant in ipairs(parent:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            descendant.Enabled = true
        end
    end
end

-- Update the clone's position every frame
RunService.RenderStepped:Connect(function()
    if character and rightArm then
        speedlinesandstuffClone.CFrame = rightArm.CFrame
    end
end)

-- Example usage after your dash effect completes
spawn(function()
    -- Simulating end of dash effect
    wait(0)  -- Adjust the wait time as needed

    -- Enable all ParticleEmitters inside speedlinesandstuffClone
    enableParticleEmitters(speedlinesandstuffClone)
end)

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

-- Wait for the player to load
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Find the "Right Arm" part inside the player's character
local rightArm = character:WaitForChild("Right Leg")
if not rightArm then
    error("Right Arm part not found in player character")
end

-- Check for Resources folder in ReplicatedStorage
local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")

-- Check for KJEffects folder inside Resources
local vanishingKickFolder = resourcesFolder:WaitForChild("VanishingKick")

-- Check for speedlinesandstuff part inside KJEffects
local speedlinesandstuffPart = vanishingKickFolder:WaitForChild("Trail2")

-- Duplicate the speedlinesandstuff part
local speedlinesandstuffClone = speedlinesandstuffPart:Clone()

-- Put the duplicate in Workspace
speedlinesandstuffClone.Parent = Workspace

-- Set the position to the Right Arm initially
speedlinesandstuffClone.CFrame = rightArm.CFrame

-- Function to enable all ParticleEmitters
local function enableParticleEmitters(parent)
    for _, descendant in ipairs(parent:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            descendant.Enabled = true
        end
    end
end

-- Update the clone's position every frame
RunService.RenderStepped:Connect(function()
    if character and rightArm then
        speedlinesandstuffClone.CFrame = rightArm.CFrame
    end
end)

-- Example usage after your dash effect completes
spawn(function()
    -- Simulating end of dash effect
    wait(0)  -- Adjust the wait time as needed

    -- Enable all ParticleEmitters inside speedlinesandstuffClone
    enableParticleEmitters(speedlinesandstuffClone)
end)

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

-- Wait for the player to load
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Find the "Right Arm" part inside the player's character
local rightArm = character:WaitForChild("Left Leg")
if not rightArm then
    error("Right Arm part not found in player character")
end

-- Check for Resources folder in ReplicatedStorage
local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")

-- Check for KJEffects folder inside Resources
local vanishingKickFolder = resourcesFolder:WaitForChild("VanishingKick")

-- Check for speedlinesandstuff part inside KJEffects
local speedlinesandstuffPart = vanishingKickFolder:WaitForChild("Trail2")

-- Duplicate the speedlinesandstuff part
local speedlinesandstuffClone = speedlinesandstuffPart:Clone()

-- Put the duplicate in Workspace
speedlinesandstuffClone.Parent = Workspace

-- Set the position to the Right Arm initially
speedlinesandstuffClone.CFrame = rightArm.CFrame

-- Function to enable all ParticleEmitters
local function enableParticleEmitters(parent)
    for _, descendant in ipairs(parent:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            descendant.Enabled = true
        end
    end
end

-- Update the clone's position every frame
RunService.RenderStepped:Connect(function()
    if character and rightArm then
        speedlinesandstuffClone.CFrame = rightArm.CFrame
    end
end)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local animationId = "rbxassetid://18897115785"
local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end
    
    if not isMoving then
        isMoving = true
        animationTrack:Play()
    end
end

local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end

local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)

-- Initial check
onHumanoidChanged()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local animationId = "rbxassetid://18897115785"
local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end
    
    if not isMoving then
        isMoving = true
        animationTrack:Play()
    end
end

local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end

local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)

-- Initial check
onHumanoidChanged()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local animationId = "rbxassetid://18897115785"
local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end
    
    if not isMoving then
        isMoving = true
        animationTrack:Play()
    end
end

local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end

local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)

-- Initial check
onHumanoidChanged()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local animationId = "rbxassetid://18897115785"
local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end
    
    if not isMoving then
        isMoving = true
        animationTrack:Play()
    end
end

local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end

local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)

-- Initial check
onHumanoidChanged()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local animationId = "rbxassetid://18897115785"
local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end
    
    if not isMoving then
        isMoving = true
        animationTrack:Play()
    end
end

local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end

local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)

-- Initial check
onHumanoidChanged()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local animationId = "rbxassetid://18897115785"
local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end
    
    if not isMoving then
        isMoving = true
        animationTrack:Play()
    end
end

local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end

local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)

-- Initial check
onHumanoidChanged()

local function addTrailToCharacter(character)
    local leftArm = character:FindFirstChild("Left Arm") or character:FindFirstChild("LeftHand")
    local rightArm = character:FindFirstChild("Right Arm") or character:FindFirstChild("RightHand")

    if not leftArm or not rightArm then
        return
    end

    local trail = Instance.new("Trail")
    trail.Color = ColorSequence.new(Color3.new(0, 0, 1), Color3.new(0, 1, 1))
    trail.Transparency = NumberSequence.new(0, 1)
    trail.Lifetime = 1
    trail.LightEmission = 1
    trail.Attachment0 = Instance.new("Attachment", leftArm)
    trail.Attachment1 = Instance.new("Attachment", rightArm)
    trail.Parent = character
end

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

addTrailToCharacter(character)

local tool = Instance.new("Tool")
tool.Name = "超速前进"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"
 
tool.Parent = game.Players.LocalPlayer.Backpack
 
local function onActivated()
  loadstring(game:HttpGet("https://pastebin.com/raw/FrGmJDSk"))()
end
 
tool.Activated:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack

local tool = Instance.new("Tool")
tool.Name = "放逐冲刺"
tool.RequiresHandle = false
tool.ToolTip = "ooh kick yes yes baby"
 
tool.Parent = game.Players.LocalPlayer.Backpack
 
local function onActivated()
  loadstring(game:HttpGet("https://pastebin.com/raw/NS3kWW3B"))()
end
 
tool.Activated:Connect(onActivated)

tool.Parent = game.Players.LocalPlayer.Backpack

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animationIdsToStop = {
    [13532562418] = true,
    [13532600125] = true,
    [13532604085] = true,
    [13294471966] = true,
}

local replacementAnimations = {
    [13532562418] = "rbxassetid://17889458563",
    [13532600125] = "rbxassetid://17889461810",
    [13532604085] = "rbxassetid://17889471098",
    [13294471966] = "rbxassetid://17889290569",
}

local queue = {}
local isAnimating = false

local function playReplacementAnimation(animationId)
    if isAnimating then
        table.insert(queue, animationId)
        return
    end

    isAnimating = true
    local replacementAnimationId = replacementAnimations[animationId]
    
    if replacementAnimationId then
        local animAnim = Instance.new("Animation")
        animAnim.AnimationId = replacementAnimationId
        local anim = humanoid:LoadAnimation(animAnim)
        anim:Play()

        anim.Stopped:Connect(function()
            isAnimating = false
            if #queue > 0 then
                local nextAnimationId = table.remove(queue, 1)
                playReplacementAnimation(nextAnimationId)
            end
        end)
    else
        isAnimating = false
    end
end

local function stopSpecificAnimations()
    for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
        local animationId = tonumber(track.Animation.AnimationId:match("%d+"))
        if animationIdsToStop[animationId] then
            track:Stop()
        end
    end
end

local function onAnimationPlayed(animationTrack)
    local animationId = tonumber(animationTrack.Animation.AnimationId:match("%d+"))
    if animationIdsToStop[animationId] then
        stopSpecificAnimations()
        animationTrack:Stop()

        local replacementAnimationId = replacementAnimations[animationId]
        if replacementAnimationId then
            playReplacementAnimation(animationId)
        end
    end
end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local function onBodyVelocityAdded(bodyVelocity)
    if bodyVelocity:IsA("BodyVelocity") then
        bodyVelocity.Velocity = Vector3.new(bodyVelocity.Velocity.X, 0, bodyVelocity.Velocity.Z)
    end
end

character.DescendantAdded:Connect(onBodyVelocityAdded)

for _, descendant in pairs(character:GetDescendants()) do
    onBodyVelocityAdded(descendant)
end

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    humanoid = character:WaitForChild("Humanoid")
    
    character.DescendantAdded:Connect(onBodyVelocityAdded)

    for _, descendant in pairs(character:GetDescendants()) do
        onBodyVelocityAdded(descendant)
    end
end)

game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100 -- change it

local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local ScreenGui = Instance.new("ScreenGui", PlayerGui)

-- Create the first image button
local imageButton1 = Instance.new("ImageButton")
imageButton1.Size = UDim2.new(0, 50, 0, 50)
imageButton1.Position = UDim2.new(0.5, 250, 0.5, -25) -- Adjusted to be left of the jump button
imageButton1.Image = "rbxassetid://14488863746"
imageButton1.BackgroundTransparency = 1
imageButton1.Parent = ScreenGui

-- Create the second image button
local imageButton2 = Instance.new("ImageButton")
imageButton2.Size = UDim2.new(0, 50, 0, 50)
imageButton2.Position = UDim2.new(0.5, 250, 0.5, -25) -- Adjusted to be right of the first image button
imageButton2.Image = "rbxassetid://6256840888"
imageButton2.BackgroundTransparency = 1
imageButton2.Parent = ScreenGui

-- Functionality for the first image button
imageButton1.MouseButton1Click:Connect(function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

-- Load animations
local anim4 = Instance.new("Animation")
anim4.AnimationId = "rbxassetid://18897119503"
local playAnim4 = humanoid:LoadAnimation(anim4)
playAnim4:Play()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://18871106251"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1
wait(0.6)

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://18897116845"
local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://18871224865"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1

local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local hrp = c:WaitForChild("HumanoidRootPart")
local rs = game:GetService("ReplicatedStorage")
local ws = game:GetService("Workspace")

local r = rs.Resources
local k = r.KJEffects
local s = k.speedlinesandstuff

local t = ws:FindFirstChild("Thrown") or Instance.new("Folder", ws)
t.Name = "Thrown"

local n = s:Clone()
n.Parent = t
n.Anchored = false
n.CFrame = hrp.CFrame + Vector3.new(0, 15, 0) + hrp.CFrame.LookVector * 167

local w = Instance.new("WeldConstraint")
w.Part0 = n
w.Part1 = hrp
w.Parent = n

for _, descendant in ipairs(n:GetDescendants()) do
    if descendant:IsA("ParticleEmitter") then
        descendant.Rate = 101020228
    end
end

local sp = s:FindFirstChild("thespeedthingunderultik")
if sp then
    local d = sp:Clone()
    d.Parent = t
    d.Anchored = false
    d.CFrame = hrp.CFrame

    local wl = Instance.new("WeldConstraint")
    wl.Part0 = d
    wl.Part1 = hrp
    wl.Parent = d

    for _, descendant in ipairs(d:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            descendant.Rate = 1010192929292939
        end
    end
end

-- Function to destroy everything after 1 second
task.delay(1, function()
    if n then
        n:Destroy()  -- Destroy the cloned speedlinesandstuff
    end

    if t then
        t:Destroy()  -- Destroy the Thrown folder
    end

    -- Destroy other effects, if any
    for _, obj in ipairs(ws:GetChildren()) do
        if obj:IsA("Folder") and obj.Name == "Thrown" then
            obj:Destroy()
        end
        -- Add more conditions here if needed to destroy other specific objects
    end
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Function to make the player walk forward in the direction they are looking
local function walkForwardByFiveFeet()
    -- Set the Humanoid's WalkSpeed to 13
    local oldWalkSpeed = humanoid.WalkSpeed
    humanoid.WalkSpeed = 500

    -- Get the current position and look vector
    local currentPosition = humanoidRootPart.Position
    local forwardVector = humanoidRootPart.CFrame.LookVector * (20 * 4.3048) -- 5 feet converted to meters
    local targetPosition = currentPosition + forwardVector

    -- Use Humanoid to move to the target position
    humanoid:MoveTo(targetPosition)

    -- Optionally, wait for the move to complete
    humanoid.MoveToFinished:Wait()

    -- Reset the Humanoid's WalkSpeed to its original value
    humanoid.WalkSpeed = oldWalkSpeed
end

-- Call the function to make the player walk forward in the direction they are looking
walkForwardByFiveFeet()
    print("Image Button 1 clicked - custom action executed")
end)

-- Functionality for the second image button
imageButton2.MouseButton1Click:Connect(function()
message = "你累了?"
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")

local players = game:GetService("Players")
local erm = players.LocalPlayer
local bar = erm.PlayerGui.ScreenGui.MagicHealth.Health.Bar.Bar
bar.ImageColor3 = Color3.fromRGB(255, 255, 0)

local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

-- Load animations
local anim4 = Instance.new("Animation")
anim4.AnimationId = "rbxassetid://18897119503"
local playAnim4 = humanoid:LoadAnimation(anim4)
playAnim4:Play()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://18871106251"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1
wait(0.6)

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://18897116845"
local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://18871224865"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1

local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local hrp = c:WaitForChild("HumanoidRootPart")
local rs = game:GetService("ReplicatedStorage")
local ws = game:GetService("Workspace")

local r = rs.Resources
local k = r.KJEffects
local s = k.speedlinesandstuff

local t = ws:FindFirstChild("Thrown") or Instance.new("Folder", ws)
t.Name = "Thrown"

local n = s:Clone()
n.Parent = t
n.Anchored = false
n.CFrame = hrp.CFrame + Vector3.new(0, 15, 0) + hrp.CFrame.LookVector * 167

local w = Instance.new("WeldConstraint")
w.Part0 = n
w.Part1 = hrp
w.Parent = n

for _, descendant in ipairs(n:GetDescendants()) do
    if descendant:IsA("ParticleEmitter") then
        descendant.Rate = 101020228
    end
end

local sp = s:FindFirstChild("thespeedthingunderultik")
if sp then
    local d = sp:Clone()
    d.Parent = t
    d.Anchored = false
    d.CFrame = hrp.CFrame

    local wl = Instance.new("WeldConstraint")
    wl.Part0 = d
    wl.Part1 = hrp
    wl.Parent = d

    for _, descendant in ipairs(d:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            descendant.Rate = 1010192929292939
        end
    end
end

-- Function to destroy everything after 1 second
task.delay(1, function()
    if n then
        n:Destroy()  -- Destroy the cloned speedlinesandstuff
    end

    if t then
        t:Destroy()  -- Destroy the Thrown folder
    end

    -- Destroy other effects, if any
    for _, obj in ipairs(ws:GetChildren()) do
        if obj:IsA("Folder") and obj.Name == "Thrown" then
            obj:Destroy()
        end
        -- Add more conditions here if needed to destroy other specific objects
    end
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Function to make the player walk forward in the direction they are looking
local function walkForwardByFiveFeet()
    -- Set the Humanoid's WalkSpeed to 13
    local oldWalkSpeed = humanoid.WalkSpeed
    humanoid.WalkSpeed = 500

    -- Get the current position and look vector
    local currentPosition = humanoidRootPart.Position
    local forwardVector = humanoidRootPart.CFrame.LookVector * (20 * 4.3048) -- 5 feet converted to meters
    local targetPosition = currentPosition + forwardVector

    -- Use Humanoid to move to the target position
    humanoid:MoveTo(targetPosition)

    -- Optionally, wait for the move to complete
    humanoid.MoveToFinished:Wait()

    -- Reset the Humanoid's WalkSpeed to its original value
    humanoid.WalkSpeed = oldWalkSpeed
end

-- Call the function to make the player walk forward in the direction they are looking
walkForwardByFiveFeet()
    print("Image Button 2 clicked - custom action executed")
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target and replacement animation IDs
local oldAnimID = "12342141464"
local newAnimID = "18181589384"

-- Function to create an image with fade and move effects
message = "你还没有准备好迎接这个吧!"
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")

local function createImage(assetId, position)
    local playerGui = player:WaitForChild("PlayerGui")
    local screenGui = playerGui:FindFirstChild("ScreenGui") or Instance.new("ScreenGui", playerGui)

    -- Create a Frame for the image
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 70, 0, 70) -- Set size as needed
    frame.Position = position
    frame.BackgroundTransparency = 1 -- Make it transparent

    -- Create an ImageLabel for the image
    local image = Instance.new("ImageLabel", frame)
    image.Size = UDim2.new(1, 0, 1, 0)
    image.Image = "rbxassetid://" .. assetId

    -- Add the frame to the ScreenGui
    frame.Parent = screenGui

    -- Tweening to move down and fade out
    local tweenService = game:GetService("TweenService")
    local moveDown = UDim2.new(position.X.Scale, position.X.Offset, position.Y.Scale + 0.1, position.Y.Offset)

    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
    local tweenMove = tweenService:Create(frame, tweenInfo, {Position = moveDown})
    local tweenFade = tweenService:Create(image, tweenInfo, {BackgroundTransparency = 1})

    tweenMove:Play()
    tweenFade:Play()

    tweenMove.Completed:Connect(function()
        frame:Destroy() -- Clean up after animation
    end)
end

-- Function to replace animation and play the new animation
local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    -- Hook into AnimationPlayed event
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the old animation ID
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            anim:Play()

            -- Create images after the animation is replaced
            createImage("93849000272981", UDim2.new(0, 280, 0.5, -50)) -- Left image
            createImage("107742899109645", UDim2.new(1, -350, 0.5, -50)) -- Right image

            -- Stop the old animation
            animationTrack:Stop()
        end
    end)
end

-- Initial run to set up animation replacement
replaceAndPlayAnimation()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target and replacement animation IDs
local oldAnimID = "12351854556"
local newAnimID = "17861844708"

-- Function to replace animation and play the new animation
local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    -- Hook into AnimationPlayed event
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the old animation ID
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            anim:Play()

            -- Stop the old animation
            animationTrack:Stop()
        end
    end)
end

-- Initial run to set up animation replacement
replaceAndPlayAnimation()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target and replacement animation IDs
local oldAnimID = "12272894215"
local newAnimID = "17889458563"

-- Function to replace animation and play the new animation
local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    -- Hook into AnimationPlayed event
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the old animation ID
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            anim:Play()

            -- Stop the old animation
            animationTrack:Stop()
        end
    end)
end

-- Initial run to set up animation replacement
replaceAndPlayAnimation()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target and replacement animation IDs
local oldAnimID = "12273188754"
local newAnimID = "17799224866"

-- Function to replace animation and play the new animation
local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    -- Hook into AnimationPlayed event
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the old animation ID
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            anim:Play()

            -- Stop the old animation
            animationTrack:Stop()
        end
    end)
end

-- Initial run to set up animation replacement
replaceAndPlayAnimation()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target and replacement animation IDs
local oldAnimID = "12296113986"
local newAnimID = "18182425133"

-- Function to replace animation and play the new animation
local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    -- Hook into AnimationPlayed event
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the old animation ID
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            anim:Play()

            -- Stop the old animation
            animationTrack:Stop()
        end
    end)
end

-- Initial run to set up animation replacement
replaceAndPlayAnimation()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target and replacement animation IDs
local oldAnimID = "13630786846"
local newAnimID = "17838006839"

-- Function to replace animation and play the new animation
local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    -- Hook into AnimationPlayed event
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the old animation ID
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            anim:Play()

            -- Stop the old animation
            animationTrack:Stop()
        end
    end)
end

-- Initial run to set up animation replacement
replaceAndPlayAnimation()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target and replacement animation IDs
local oldAnimID = "13630786846"
local newAnimID = "12447247483"

-- Function to replace animation and play the new animation
local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    -- Hook into AnimationPlayed event
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the old animation ID
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            anim:Play()

            -- Stop the old animation
            animationTrack:Stop()
        end
    end)
end

-- Initial run to set up animation replacement
replaceAndPlayAnimation()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

 local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target and replacement animation IDs
local oldAnimID = "13716964686"
local newAnimID = "17292549897"
local soundEffectId = "rbxassetid://17292555531"

-- Function to replace animation and play the new animation
local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    -- Hook into AnimationPlayed event
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the old animation ID
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            anim:Play()

            -- Play the sound effect
            local soundEffect = Instance.new("Sound")
            soundEffect.SoundId = soundEffectId
            soundEffect.Parent = character:WaitForChild("Torso")
            soundEffect.Volume = 1
            soundEffect:Play()

            -- Stop the old animation
            animationTrack:Stop()
        end
    end)
end

-- Initial run to set up animation replacement
replaceAndPlayAnimation()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local TweenService = game:GetService("TweenService")

-- Define the target and replacement animation IDs
local oldAnimID = "16310343179"
local newAnimID = "18903642853"

-- Sound IDs
local soundIds = {
    "15865495323",
    "18846960753",
    "18846960425"
}

-- Function to play a sound
local function playSound(soundId)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Volume = 5
    sound.Parent = character
    sound:Play()

    sound.Ended:Connect(function()
        sound:Destroy()
    end)
end

-- Function to play both sounds sequentially
local function playSoundsSequentially()
    playSound(soundIds[1])
    
    local sound2 = Instance.new("Sound")
    sound2.SoundId = "rbxassetid://" .. soundIds[2]
    sound2.Volume = 5
    sound2.Parent = character

    sound2.Ended:Connect(function()
        sound2:Destroy()
    end)

    sound2:Play()
    wait(sound2.TimeLength + 1.2)

    local sound3 = Instance.new("Sound")
    sound3.SoundId = "rbxassetid://" .. soundIds[3]
    sound3.Volume = 5
    sound3.Parent = character

    sound3.Ended:Connect(function()
        sound3:Destroy()
    end)

    sound3:Play()
end

-- Function to create particle effects
local function createParticleEffect()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local head = character:FindFirstChild("Head")
    local torso = character:FindFirstChild("Torso")

    if head and torso then
        local final1 = ReplicatedStorage.Resources.Sorcerer["WallFX"].Final.At:Clone()
        final1.Parent = head
        for _, child in ipairs(final1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1)
            end
        end

        local final4 = ReplicatedStorage.Resources.Sorcerer["WallFX"].Final.Attachment:Clone()
        final4.Parent = torso
        for _, child in ipairs(final4:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(3)
            end
        end
    end
end

-- Function to execute additional effects immediately after animation replacement
local function executeAdditionalEffects()
    local wallFX = game.ReplicatedStorage.Resources.Sorcerer.WallFX:Clone()
    wallFX:PivotTo(workspace.Live["Weakest Dummy"].HumanoidRootPart.CFrame * CFrame.new(0, 0, 1))
    wallFX.Parent = workspace.Thrown

    local barrier = game.ReplicatedStorage.Resources.Sorcerer.LimitlessBarrier:Clone()
    barrier:PivotTo(character.HumanoidRootPart.CFrame)
    barrier.Parent = workspace.Thrown

    task.delay(10, function()
        barrier:Destroy()
    end)

    local sphere = barrier.Sphere

    -- Emit particles after a short delay
    task.delay(0, function()
        for _, child in ipairs(wallFX.FirstSlam:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(child:GetAttribute("EmitCount")) 
            end
        end
    end)

    task.delay(0.2, function()
        local colorCorrection = Instance.new("ColorCorrectionEffect")
        colorCorrection.Name = "cloned"
        colorCorrection.Parent = game.Lighting

        local barrierScreen = game.ReplicatedStorage.Resources.Sorcerer.Lighting.BarrierScreen

        TweenService:Create(colorCorrection, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Brightness = barrierScreen.Brightness,
            Contrast = barrierScreen.Contrast,
            Saturation = barrierScreen.Saturation,
            TintColor = barrierScreen.TintColor
        }):Play()

        task.wait(0.2)

        TweenService:Create(colorCorrection, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
            Brightness = 0,
            Contrast = 0,
            Saturation = 0
        }):Play()

        task.wait(0.3)
        colorCorrection:Destroy()
    end)

    task.delay(0.8, function()
        for _, child in ipairs(barrier.Core.EndEmit:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(child:GetAttribute("EmitCount")) 
            end
        end

        for _, child in ipairs(wallFX.Final:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(child:GetAttribute("EmitCount")) 
            end
        end
    end)
end

-- Function to replace animation and play the new animation
local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    humanoid.AnimationPlayed:Connect(function(animationTrack)
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            if anim then
                anim:Play()
                anim:AdjustSpeed(1)  -- Set playback speed to 1.5x

                playSoundsSequentially()
                executeAdditionalEffects()  -- Call the new effects function

                -- Wait for 3 seconds before creating particle effects
                wait(1.5)
                createParticleEffect()
            end

            -- Stop the old animation
            animationTrack:Stop()
        end
    end)
end

-- Initial run to set up animation replacement
replaceAndPlayAnimation()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target and replacement animation IDs
local oldAnimID = "16310343179"
local newAnimID = "18846960753"

-- Function to replace animation and play the new animation
local function replaceAndPlayAnimation()
    local humanoid = character:WaitForChild("Humanoid")

    -- Hook into AnimationPlayed event
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        -- Check if the played animation has the old animation ID
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
            local animAnim = Instance.new("Animation")
            animAnim.AnimationId = "rbxassetid://" .. newAnimID
            
            local anim = humanoid:LoadAnimation(animAnim)
            anim:Play()

            -- Stop the old animation
            animationTrack:Stop()
        end
    end)
end

-- Initial run to set up animation replacement
replaceAndPlayAnimation()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    replaceAndPlayAnimation()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Create the tool
local tool = Instance.new("Tool")
tool.Name = "死亡使者"
tool.RequiresHandle = false  -- No handle needed for this tool
tool.Parent = player.Backpack

-- Function to teleport the player up and back down
local function teleportUpAndDown()
local currentHeight = humanoidRootPart.Position.Y
local targetHeight = currentHeight + 100  -- teleport 100 studs up
local originalCFrame = humanoidRootPart.CFrame

-- Move player up instantly
humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position + Vector3.new(0, 100, 0))

-- Wait for 9.4 seconds
wait(9.4)

-- Move player back to the original position
humanoidRootPart.CFrame = originalCFrame
end

-- Connect the tool's activation event to the teleport function
tool.Activated:Connect(teleportUpAndDown)

end
})
Tab:AddButton({
	Name = "贝利亚",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/TAEKWADO/Blaster-Moveset/refs/heads/main/Blast%20Moveset"))()

end
})
Tab:AddButton({
	Name = "五条悟",
	Callback = function()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local TweenService = game:GetService("TweenService")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local lastHitTime = {} 

local soundIds = {
	"rbxassetid://13064223399",
	"rbxassetid://13064223291",
	"rbxassetid://13064223483"
}

local colorCorrection = Instance.new("ColorCorrectionEffect")
colorCorrection.Parent = game.Lighting
colorCorrection.TintColor = Color3.new(1, 1, 1) 
colorCorrection.Brightness = 0






local redTintColor = Color3.new(1, 0, 0) 
local flashDuration = 0.5  
local recoveryDuration = 1  

local function flashRed()
	coroutine.wrap(function()
		local redFlashTween = TweenService:Create(
			colorCorrection, 
			TweenInfo.new(flashDuration, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
			{ TintColor = redTintColor, Brightness = 0.2 }
		)

		local recoveryTween = TweenService:Create(
			colorCorrection, 
			TweenInfo.new(recoveryDuration, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
			{ TintColor = Color3.new(1, 1, 1), Brightness = 0 }
		)

		-- Play the tweens
		redFlashTween:Play()
		redFlashTween.Completed:Wait()  
		recoveryTween:Play()
	end)()
end

workspace.Thrown.ChildAdded:Connect(function(child)
	task.defer(function()
		if child.Name == "Clone_Rig" then
			if child:FindFirstChild("Shirt") then
				if child.Shirt.ShirtTemplate == game.Players.LocalPlayer.Character.Shirt.ShirtTemplate then
					child:Destroy()
				end
			end
		end
	end)
end)

local function playRandomSound(targetCharacter)
	local randomIndex = math.random(1, #soundIds)
	local sound = Instance.new("Sound")
	sound.SoundId = soundIds[randomIndex]
	sound.Volume = 1
	sound.Parent = targetCharacter.HumanoidRootPart
	sound:Play()

	sound.Ended:Connect(function()
		sound:Destroy()
	end)
end

local lastHealth = {}

local function onHealthChanged(targetCharacter, humanoid)
	humanoid.HealthChanged:Connect(function(newHealth)
		local oldHealth = lastHealth[targetCharacter] or humanoid.MaxHealth 

		if newHealth < oldHealth then 
			if newHealth < humanoid.MaxHealth then
				if targetCharacter:GetAttribute("LastHit") == LocalPlayer.Name then
					local currentTime = tick()
					local lastTime = lastHitTime[targetCharacter] or 0
					if currentTime - lastTime >= 0.25 then
						local Module_Scripts = {}

						local StrongMone = Instance.new("Attachment")
						game.Debris:AddItem(StrongMone, 3)
						local Shockwaves2 = Instance.new("ParticleEmitter")
						local Shockwaves3 = Instance.new("ParticleEmitter")
						local DustShockwaves = Instance.new("ParticleEmitter")
						local RedDust2 = Instance.new("ParticleEmitter")
						local Push = Instance.new("ParticleEmitter")

						StrongMone.Name = [[StrongMone]]
						StrongMone.Parent = targetCharacter.HumanoidRootPart

						Shockwaves2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.466667,0.470588,0.470588),0),ColorSequenceKeypoint.new(0.495,Color3.new(0,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(0,0,0),0)})
						Shockwaves2.Drag = 5
						Shockwaves2.EmissionDirection = Enum.NormalId.Back
						Shockwaves2.Enabled = false
						Shockwaves2:Emit(15)
						Shockwaves2.FlipbookFramerate = NumberRange.new(18,20)
						Shockwaves2.Lifetime = NumberRange.new(1,3)
						Shockwaves2.LightEmission = 1
						Shockwaves2.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
						Shockwaves2.Rate = 40
						Shockwaves2.RotSpeed = NumberRange.new(100,400)
						Shockwaves2.Rotation = NumberRange.new(0,360)
						Shockwaves2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.1,5.11184,1.94737),NumberSequenceKeypoint.new(0.2,8.93842,3.89474),NumberSequenceKeypoint.new(0.3,11.1292,7.78947),NumberSequenceKeypoint.new(0.517,15.7153,11.6842),NumberSequenceKeypoint.new(1,20.4474,11.6842)})
						Shockwaves2.Speed = NumberRange.new(0.0146053,0.0146053)
						Shockwaves2.SpreadAngle = Vector2.new(2, 2)
						Shockwaves2.Texture = [[http://www.roblox.com/asset/?id=11703233149]]
						Shockwaves2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0.2),NumberSequenceKeypoint.new(1,1,0)})
						Shockwaves2.Name = [[Shockwaves2]]
						Shockwaves2.Parent = StrongMone

						Shockwaves3.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.466667,0.470588,0.470588),0),ColorSequenceKeypoint.new(0.495,Color3.new(0,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(0,0,0),0)})
						Shockwaves3.Drag = 5
						Shockwaves3.EmissionDirection = Enum.NormalId.Back
						Shockwaves3.Enabled = false
						Shockwaves3.FlipbookFramerate = NumberRange.new(18,20)
						Shockwaves3.Lifetime = NumberRange.new(0.5,0.5)
						Shockwaves3.LightEmission = 1
						Shockwaves3.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
						Shockwaves3.Rate = 55
						Shockwaves3:Emit(15)

						Shockwaves3.RotSpeed = NumberRange.new(100,400)
						Shockwaves3.Rotation = NumberRange.new(0,360)
						Shockwaves3.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.1,10.2237,3.89474),NumberSequenceKeypoint.new(0.2,17.8768,7.78947),NumberSequenceKeypoint.new(0.3,22.2584,15.5789),NumberSequenceKeypoint.new(0.517,31.4305,23.3684),NumberSequenceKeypoint.new(1,40.8947,23.3684)})
						Shockwaves3.Speed = NumberRange.new(0.0146053,0.0146053)
						Shockwaves3.Texture = [[http://www.roblox.com/asset/?id=11703233149]]
						Shockwaves3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.8,0.2),NumberSequenceKeypoint.new(1,1,0)})
						Shockwaves3.Name = [[Shockwaves3]]
						Shockwaves3.Parent = StrongMone

						DustShockwaves.Brightness = 5
						DustShockwaves.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.988312,0.991241,1),0),ColorSequenceKeypoint.new(1,Color3.new(0,0,0),0)})
						DustShockwaves.Drag = 5
						DustShockwaves.EmissionDirection = Enum.NormalId.Back
						DustShockwaves.Enabled = false
						DustShockwaves.FlipbookFramerate = NumberRange.new(18,20)
						DustShockwaves.Lifetime = NumberRange.new(0.2,1.05)
						DustShockwaves.LightEmission = 1
						DustShockwaves.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
						DustShockwaves.Rate = 25

						DustShockwaves.Rotation = NumberRange.new(0,360)
						DustShockwaves.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,58.421,0)})
						DustShockwaves.Speed = NumberRange.new(0.0146053,0.0146053)
						DustShockwaves.SpreadAngle = Vector2.new(10, 10)
						DustShockwaves.Texture = [[http://www.roblox.com/asset/?id=11703216487]]
						DustShockwaves.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.96,0.04),NumberSequenceKeypoint.new(1,1,0)})
						DustShockwaves.Name = [[DustShockwaves]]
						DustShockwaves.Parent = StrongMone
						DustShockwaves:Emit(15)

						RedDust2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.988235,0.988235,0.988235),0),ColorSequenceKeypoint.new(1,Color3.new(0.988235,0.988235,0.988235),0)})
						RedDust2.Drag = 4
						RedDust2.EmissionDirection = Enum.NormalId.Back
						RedDust2.Enabled = false
						RedDust2.Lifetime = NumberRange.new(0.1,1)
						RedDust2.LightEmission = 0.800000011920929
						RedDust2.Orientation = Enum.ParticleOrientation.VelocityParallel
						RedDust2.Rate = 40
						RedDust2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.281,2.91889,2.74074),NumberSequenceKeypoint.new(1,7.30263,3.89474)})
						RedDust2.Speed = NumberRange.new(18.75,90)
						RedDust2.SpreadAngle = Vector2.new(25, 25)
						RedDust2.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,-0.5,0.5),NumberSequenceKeypoint.new(1,-1,1)})
						RedDust2.Texture = [[rbxassetid://7216854921]]
						RedDust2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.339323,0,0),NumberSequenceKeypoint.new(0.80798,0.3625,0),NumberSequenceKeypoint.new(1,1,0)})
						RedDust2.Name = [[RedDust2]]
						RedDust2.Parent = StrongMone
						RedDust2:Emit(15)

						Push.Brightness = 2
						Push.Drag = 10
						Push.EmissionDirection = Enum.NormalId.Back
						Push.Enabled = false
						Push.FlipbookFramerate = NumberRange.new(30,30)
						Push.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
						Push.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
						Push.Lifetime = NumberRange.new(0.1,0.5)
						Push.Rate = 115
						Push.RotSpeed = NumberRange.new(-35,35)
						Push.Rotation = NumberRange.new(-25,25)
						Push.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.36514,0.8125),NumberSequenceKeypoint.new(0.632135,12.9375,0),NumberSequenceKeypoint.new(1,12.9375,0)})
						Push.Speed = NumberRange.new(0,375)
						Push.SpreadAngle = Vector2.new(-15, 15)
						Push.Texture = [[http://www.roblox.com/asset/?id=9160490836]]
						Push.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0.9375,0.0625)})
						Push.ZOffset = 1
						Push.Name = [[Push]]
						Push.Parent = StrongMone
						Push:Emit(15)

						playRandomSound(targetCharacter)
						lastHitTime[targetCharacter] = currentTime
					end
				end
			end
		end

		lastHealth[targetCharacter] = newHealth
	end)
end


for i, v in workspace.Live:GetChildren() do
	if v:IsA("Model") then
		local humanoid = v:FindFirstChild("Humanoid")
		if humanoid then
			onHealthChanged(v, humanoid)
		end
	end
end

workspace.Live.ChildAdded:Connect(function(instance)
	instance:WaitForChild("Humanoid")
	onHealthChanged(instance, instance.Humanoid)
end)


local httpservice = game:GetService("HttpService")

local http_request = syn and syn.request or http and http.request or http_request or request or httprequest

local suMessage = "Has Been Made!"

local function downloadSoundFile(sn, url)
	if not isfile(sn) then
		if url:find("https://cdn.discordapp.com/attachments/") then
			local response = request({Url = url, Method = "GET"}).Body
			writefile(sn, response)
			print("Downloaded: " .. sn .. " " .. suMessage)
		else
			error("Invalid URL")
		end
	end
	return getcustomasset(sn)
end



local SFXFileName = "copy_B1855918-9588-4416-AF40-8C5B9A0B79B1 (3).mp3"
local SFXUrl = "https://cdn.discordapp.com/attachments/1293648959465853058/1296169198078398464/copy_B1855918-9588-4416-AF40-8C5B9A0B79B1_3.mp3?ex=67114f22&is=670ffda2&hm=3875f096cd16e04ce68cd87b8616ffcc4465545a7646a0040024e2301c21ac1f&"

local AkaFileName = "Everytime Gojo uses Red (mp3cut.net).mp3"
local AkaURL = "https://cdn.discordapp.com/attachments/1293648959465853058/1293652134335614976/Everytime_Gojo_uses_Red_mp3cut.net.mp3?ex=670b72af&is=670a212f&hm=b195d124703faf1771c1123c678ee13e7ae6f271f9038dca6e65c55808d706d0&"

local AkasfxFileName = "copy_FB659449-49A1-4E38-84C7-23A0442CA346 (2)-[AudioTrimmer.com].mp3"
local AkasfxURL = "https://cdn.discordapp.com/attachments/1128036348591349973/1294666669242712196/copy_FB659449-49A1-4E38-84C7-23A0442CA346_2-AudioTrimmer.com.mp3?ex=670bd7cb&is=670a864b&hm=a4433358f0882c81caf2b842470431cffd6b283bdc2c66c5534780109e77bcfa&"

local AoFileName = "Ao.mp3"
local AoURL = "https://cdn.discordapp.com/attachments/1128036348591349973/1294641819472363540/Ao.mp3?ex=670bc0a7&is=670a6f27&hm=547088f771d2e263d8daa402b44798dec519088af4be6f05b771cb5d8dd4170d&"

local PurpleSongFileName = "Purple.mp3"
local PurpleSongURL = "https://cdn.discordapp.com/attachments/1293648959465853058/1294693949696380959/youtube_eHX5CTRhuAo_audio_1.mp3?ex=670bf133&is=670a9fb3&hm=716c97a21c16d24355c0d69fb4ca774a8ac4d00c180c113f367ca69de8ef1a91&"

local HollowPurpleFileName = "HollowPurple.mp3"
local HollowPurpleUrl = "https://cdn.discordapp.com/attachments/1293648959465853058/1294714776710156339/youtube_zcQvAy3oi0E_audio_1.mp3?ex=670c0499&is=670ab319&hm=60e14445126e18610ea030f1021158d2a8fc5c9465cb168d0a7109bb2611c277&"

downloadSoundFile(AoFileName, AoURL)
downloadSoundFile(AkaFileName, AkaURL)
downloadSoundFile(AkasfxFileName, AkasfxURL)
downloadSoundFile(PurpleSongFileName, PurpleSongURL)
downloadSoundFile(HollowPurpleFileName, HollowPurpleUrl)
downloadSoundFile(SFXFileName, SFXUrl)

local KokusenFileName = "Kokusen.mp3"
local KokusenURL = "https://cdn.discordapp.com/attachments/1128036348591349973/1294577581625966662/Kokusen.mp3?ex=670b84d3&is=670a3353&hm=7a028bb581afb5b90d2f1ed6dcfb2c6fc73e56105586909c2e79d9ddbaaf2308&"
local Kokusen3FileName = "videoplayback-1-online-video-cuttercom_FKCenFoR.mp3"
local Kokusen3URL = "https://cdn.discordapp.com/attachments/1293648959465853058/1295078795446845514/videoplayback-1-online-video-cuttercom_FKCenFoR.mp3?ex=670d579e&is=670c061e&hm=97ece26320818e6fb24b73c8e2fc3592449664448c56c8d15f8fe22b72f78f4a&"

downloadSoundFile(KokusenFileName, KokusenURL)
downloadSoundFile(Kokusen3FileName, Kokusen3URL)


local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local ts = game:GetService("TweenService")

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TextChatService = game:GetService("TextChatService")
local AnimationId = "rbxassetid://14056379526"
local soundid = "rbxassetid://6892830182"
local db = false
local ts = game:GetService("TweenService")




local function tweenProperty(object, properties, duration)
	local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
	local tween = ts:Create(object, tweenInfo, properties)
	tween:Play()
end


local animationReplacements = {
	["rbxassetid://12272894215"] = {"rbxassetid://18897695481", 1.2}, -- flowing startup
	["rbxassetid://12273188754"] = {"rbxassetid://13560306510", 1}, -- flowing hit
	--["rbxassetid://12296113986"] = {"rbxassetid://12296113986", 1}, -- whirlwind stream
	--["rbxassetid://12309835105"] = {"rbxassetid://12309835105", 1}, -- hunters grasp
	["rbxassetid://10479335397"] = {"rbxassetid://13365849295", 1}, -- dash
	["rbxassetid://12342141464"] = {"rbxassetid://17464923657", 0.5}, -- ult
	["rbxassetid://12463072679"] = {"rbxassetid://16139402582", 1}, -- final hunt



}

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:FindFirstChildOfClass("Animator")



local function playsound(soundid, volume, parent)
	coroutine.wrap(function()

		local sound = Instance.new("Sound")
		sound.SoundId = "rbxassetid://"..soundid
		sound.Volume = volume
		sound.Parent = parent
		sound:Play()
		sound.Ended:Wait()
		sound:Destroy()
	end)()
end



local function resetHotbarText()
	LocalPlayer.PlayerGui.ScreenGui:WaitForChild("MagicHealth").Health.Bar.Bar.ImageColor3 = Color3.fromRGB(49, 210, 255)
	LocalPlayer.PlayerGui.ScreenGui.MagicHealth.TextLabel.Text = "无下限术式"
	LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar:WaitForChild("1").Base.ToolName.Text = "Repulse Assault"
	LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar["2"].Base.ToolName.Text = "Attracting Drag"
	LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar["3"].Base.ToolName.Text = "Black Flash"
	LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar["4"].Base.ToolName.Text = "Limitless Counter"
end


local function ultmoves()
	LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar:WaitForChild("1").Base.ToolName.Text = "Infinity Barrage"
	LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar["2"].Base.ToolName.Text = "Limitless Slam"
	LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar["3"].Base.ToolName.Text = "Limitless Infusion"
	LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar["4"].Base.ToolName.Text = "Rib Breaker"
end



local function onUltedChanged()
	local ulted = character:GetAttribute("Ulted")

	if ulted == false then
		coroutine.wrap(function()
			repeat wait() until LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar["1"].Base.ToolName.Text == "Flowing Water"
			game.Players.LocalPlayer.Character.Head:FindFirstChild("PurpleSong"):Destroy()
			character.Head:FindFirstChild("Eye1"):Destroy()
			character.Head:FindFirstChild("Eye2"):Destroy()

			resetHotbarText()
		end)()
	else
		repeat wait() until LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar:WaitForChild("2").Base.ToolName.Text == "The Final Hunt"
		ultmoves()
	end

end

character:GetAttributeChangedSignal("Ulted"):Connect(onUltedChanged)

local function setupAnimationReplacement(animator)
	local BufferTrack = nil

	local function onAnimationPlayed(animationTrack)
		local animationId = animationTrack.Animation.AnimationId


		if animationId == "rbxassetid://12460977270" then
			coroutine.wrap(function()
				local Attachment = Instance.new("Attachment")
				local ParticleEmitter = Instance.new("ParticleEmitter")

				Attachment.Name = "UltBarrage"
				Attachment.Parent = game.Players.LocalPlayer.Character["Left Arm"]

				ParticleEmitter.Brightness = 5
				ParticleEmitter.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.341176, 0.933333, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.341176, 0.933333, 1))})
				ParticleEmitter.Drag = 3
				ParticleEmitter.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
				ParticleEmitter.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
				ParticleEmitter.Lifetime = NumberRange.new(0.5,0.5)
				ParticleEmitter.LightEmission = -1
				ParticleEmitter.LockedToPart = true
				ParticleEmitter.Rate = 2.5
				ParticleEmitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(1,2,0)})
				ParticleEmitter.Speed = NumberRange.new(0,0)
				ParticleEmitter.Texture = [[http://www.roblox.com/asset/?id=14904853757]]
				ParticleEmitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.198684,0.491803,0),NumberSequenceKeypoint.new(0.501316,0.513661,0),NumberSequenceKeypoint.new(0.798684,0.497268,0),NumberSequenceKeypoint.new(1,1,0)})
				ParticleEmitter.ZOffset = -1
				ParticleEmitter.Parent = Attachment



				local Attachment2 = Instance.new("Attachment")
				local ParticleEmitter2 = Instance.new("ParticleEmitter")

				Attachment2.Name = "UltBarrage"
				Attachment2.Parent = game.Players.LocalPlayer.Character["Right Arm"]

				ParticleEmitter2.Brightness = 5
				ParticleEmitter2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.341176, 0.933333, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.341176, 0.933333, 1))})

				ParticleEmitter2.Drag = 3
				ParticleEmitter2.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
				ParticleEmitter2.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
				ParticleEmitter2.Lifetime = NumberRange.new(0.5,0.5)
				ParticleEmitter2.LightEmission = -1
				ParticleEmitter2.LockedToPart = true
				ParticleEmitter2.Rate = 2.5
				ParticleEmitter2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(1,2,0)})
				ParticleEmitter2.Speed = NumberRange.new(0,0)
				ParticleEmitter2.Texture = [[http://www.roblox.com/asset/?id=14904853757]]
				ParticleEmitter2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.198684,0.491803,0),NumberSequenceKeypoint.new(0.501316,0.513661,0),NumberSequenceKeypoint.new(0.798684,0.497268,0),NumberSequenceKeypoint.new(1,1,0)})
				ParticleEmitter2.ZOffset = -1
				ParticleEmitter2.Parent = Attachment2
				task.wait(1)
				ParticleEmitter.Enabled = false
				ParticleEmitter2.Enabled = false
				task.wait(3)
				Attachment:Destroy()
				Attachment2:Destroy()
			end)()
		end
		if animationId == "rbxassetid://14057231976" then
			coroutine.wrap(function()
				task.wait(1.4)

				local BlackFlashHit = Instance.new("Part")
				game.Debris:AddItem(BlackFlashHit, 5)
				BlackFlashHit.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
				local Sparks2 = Instance.new("ParticleEmitter")
				local Blast = Instance.new("ParticleEmitter")
				local Lightning = Instance.new("ParticleEmitter")
				local Wind2 = Instance.new("ParticleEmitter")
				local Sparks = Instance.new("ParticleEmitter")
				-- Properties --

				BlackFlashHit.Anchored = true
				BlackFlashHit.BottomSurface = Enum.SurfaceType.Smooth
				BlackFlashHit.CanCollide = false
				BlackFlashHit.EnableFluidForces = false
				BlackFlashHit.Size = Vector3.new(1, 1, 1)
				BlackFlashHit.TopSurface = Enum.SurfaceType.Smooth
				BlackFlashHit.Transparency = 1
				BlackFlashHit.Name = [[BlackFlashHit]]
				BlackFlashHit.Parent = workspace

				Sparks2.Acceleration = Vector3.new(0, 5, 0)
				Sparks2.Brightness = 15
				Sparks2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Sparks2.Drag = 7
				Sparks2.EmissionDirection = Enum.NormalId.Front
				Sparks2.Enabled = false
				Sparks2.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
				Sparks2.Lifetime = NumberRange.new(1,2)
				Sparks2.Orientation = Enum.ParticleOrientation.VelocityParallel
				Sparks2.Rate = 400
				Sparks2:Emit(20)
				Sparks2.RotSpeed = NumberRange.new(-300,300)
				Sparks2.Rotation = NumberRange.new(0,360)
				Sparks2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4,2),NumberSequenceKeypoint.new(1,0,0)})
				Sparks2.Speed = NumberRange.new(20,150)
				Sparks2.SpreadAngle = Vector2.new(360, 360)
				Sparks2.Texture = [[rbxassetid://17547405831]]
				Sparks2.Name = [[Sparks2]]
				Sparks2.Parent = BlackFlashHit

				Blast.Brightness = 10
				Blast.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Blast.EmissionDirection = Enum.NormalId.Front
				Blast.Enabled = false
				Blast.Lifetime = NumberRange.new(0.05,0.05)
				Blast.Orientation = Enum.ParticleOrientation.VelocityParallel
				Blast.Rate = 200
				Blast:Emit(20)
				Blast.Rotation = NumberRange.new(-360,360)
				Blast.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(1,62.2016,0)})
				Blast.Speed = NumberRange.new(0.1,0.1)
				Blast.SpreadAngle = Vector2.new(360, 360)
				Blast.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,-3,0),NumberSequenceKeypoint.new(1,2.5125,0)})
				Blast.Texture = [[rbxassetid://7994629137]]
				Blast.Name = [[Blast]]
				Blast.Parent = BlackFlashHit

				Lightning.Brightness = 5
				Lightning.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Lightning.Drag = 3
				Lightning.Enabled = false
				Lightning.FlipbookFramerate = NumberRange.new(20,40)
				Lightning.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
				Lightning.FlipbookStartRandom = true
				Lightning.Lifetime = NumberRange.new(0.2,1.3)
				Lightning.LockedToPart = true
				Lightning.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				Lightning.Rate = 100
				Lightning:Emit(20)
				Lightning.Rotation = NumberRange.new(0,360)
				Lightning.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.033642,12.5435,11.3034),NumberSequenceKeypoint.new(0.075642,16.0988,11.5298),NumberSequenceKeypoint.new(0.109642,9.43785,12.5917),NumberSequenceKeypoint.new(0.177642,14.175,13.7364),NumberSequenceKeypoint.new(1,13.9192,13.4744)})
				Lightning.Speed = NumberRange.new(0.001,10)
				Lightning.SpreadAngle = Vector2.new(360, 360)
				Lightning.Texture = [[rbxassetid://14255829980]]
				Lightning.ZOffset = 2
				Lightning.Name = [[Lightning]]
				Lightning.Parent = BlackFlashHit

				Wind2.Brightness = 3
				Wind2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Wind2.Enabled = false
				Wind2.Lifetime = NumberRange.new(0.1,0.1)
				Wind2.LightEmission = 1
				Wind2.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				Wind2.Rate = 100
				Wind2:Emit(20)
				Wind2.Rotation = NumberRange.new(-360,360)
				Wind2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,80,0),NumberSequenceKeypoint.new(1,80,0)})
				Wind2.Speed = NumberRange.new(0.01,0.01)
				Wind2.SpreadAngle = Vector2.new(360, 360)
				Wind2.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,-3,0),NumberSequenceKeypoint.new(1,0,0)})
				Wind2.Texture = [[rbxassetid://1053548563]]
				Wind2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
				Wind2.Name = [[Wind2]]
				Wind2.Parent = BlackFlashHit

				Sparks.Brightness = 15
				Sparks.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Sparks.Drag = 7
				Sparks.EmissionDirection = Enum.NormalId.Front
				Sparks.Enabled = false
				Sparks.Lifetime = NumberRange.new(0.8,1.3)
				Sparks.Orientation = Enum.ParticleOrientation.VelocityParallel
				Sparks.Rate = 400
				Sparks:Emit(20)
				Sparks.Rotation = NumberRange.new(90,90)
				Sparks.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4.02858,3.04993),NumberSequenceKeypoint.new(0.205642,1.84193,1.74011),NumberSequenceKeypoint.new(1,0,0)})
				Sparks.Speed = NumberRange.new(40,200)
				Sparks.SpreadAngle = Vector2.new(360, 360)
				Sparks.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.231642,5.1956,0),NumberSequenceKeypoint.new(0.32206,0.844828,0),NumberSequenceKeypoint.new(0.46806,4.5586,0),NumberSequenceKeypoint.new(0.49206,0.000789245,0),NumberSequenceKeypoint.new(0.51806,3.78691,0),NumberSequenceKeypoint.new(0.56206,1.97825,0),NumberSequenceKeypoint.new(0.64006,2.28498,0),NumberSequenceKeypoint.new(0.72006,0.104659,0),NumberSequenceKeypoint.new(1,-1.15485,0)})
				Sparks.Texture = [[rbxassetid://15407518755]]
				Sparks.Name = [[Sparks]]
				Sparks.Parent = BlackFlashHit


				local music = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

				music.Name = "Kokusen"

				music.SoundId = getcustomasset(KokusenFileName)

				music.TimePosition = 0.2

				music.Looped = false

				music.Volume = 10

				music:Play()
				game.Debris:AddItem(music, 60)

				local music3 = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

				music3.Name = "Kokusen3"

				music3.SoundId = getcustomasset(Kokusen3FileName)

				music3.TimePosition = 0.2

				music3.Looped = false

				music3.Volume = 0

				music3:Play()

				tweenProperty(music3, {Volume = 5}, 1)

				game.Debris:AddItem(music3, 60)
			end)()
		end

		if animationId == "rbxassetid://12463072679" then
			local Red = game.Players.LocalPlayer.Character["Right Arm"]
			local music = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

			music.Name = "Ao"

			music.SoundId = getcustomasset(AoFileName)

			music.Looped = false

			music.Volume = 4
			music:Play()
			game.Debris:AddItem(music, 60)

			coroutine.wrap(function()


				local Sparks = Instance.new("ParticleEmitter")
				local Mid = Instance.new("Attachment")
				local Charge = Instance.new("ParticleEmitter")
				local Smoke = Instance.new("ParticleEmitter")
				local Stars = Instance.new("ParticleEmitter")
				local Start = Instance.new("Attachment")
				local End = Instance.new("Attachment")
				local Beam2 = Instance.new("Beam")

				game.Debris:AddItem(Sparks, 5)
				game.Debris:AddItem(Mid, 5)
				game.Debris:AddItem(Charge, 5)
				game.Debris:AddItem(Smoke, 5)
				game.Debris:AddItem(Stars, 5)
				game.Debris:AddItem(Start, 5)
				game.Debris:AddItem(End, 5)
				game.Debris:AddItem(Beam2, 5)



				Sparks.Brightness = 15
				Sparks.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.0980392, 0.835294, 0.772549),0),ColorSequenceKeypoint.new(1,Color3.new(0.0196078, 0.54902, 0.901961),0)})
				Sparks.Drag = 5
				Sparks.EmissionDirection = Enum.NormalId.Right
				Sparks.Lifetime = NumberRange.new(0.5,1)
				Sparks.LockedToPart = true
				Sparks.Rate = 400
				Sparks.RotSpeed = NumberRange.new(-100,100)
				Sparks.Rotation = NumberRange.new(-360,360)
				Sparks.ShapeStyle = Enum.ParticleEmitterShapeStyle.Surface
				Sparks.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.6,0),NumberSequenceKeypoint.new(0.439759,0.625,0),NumberSequenceKeypoint.new(0.775904,0.375,0),NumberSequenceKeypoint.new(1,0,0)})
				Sparks.Speed = NumberRange.new(-40,0)
				Sparks.SpreadAngle = Vector2.new(20, 20)
				Sparks.Texture = [[rbxassetid://8221815526]]
				Sparks.ZOffset = 3
				Sparks.Name = [[Sparks]]
				Sparks.Parent = Red

				Mid.Name = [[Mid]]
				Mid.Parent = Red

				Charge.Brightness = 3
				Charge.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.0980392, 0.835294, 0.772549),0),ColorSequenceKeypoint.new(1,Color3.new(0.0196078, 0.54902, 0.901961),0)})
				Charge.Lifetime = NumberRange.new(0.25,0.25)
				Charge.LightEmission = 1
				Charge.LockedToPart = true
				Charge.Rate = 50
				Charge.RotSpeed = NumberRange.new(500,500)
				Charge.Rotation = NumberRange.new(0,360)
				Charge.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(0.273006,8.98219,0),NumberSequenceKeypoint.new(0.748466,5.6743,0),NumberSequenceKeypoint.new(1,0,0)})
				Charge.Speed = NumberRange.new(0.1,0.1)
				Charge.SpreadAngle = Vector2.new(360, 360)
				Charge.Texture = [[rbxassetid://1084969997]]
				Charge.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
				Charge.Name = [[Charge]]
				Charge.Parent = Mid

				Smoke.Brightness = 3
				Smoke.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.0980392, 0.835294, 0.772549),0),ColorSequenceKeypoint.new(1,Color3.new(0.0196078, 0.54902, 0.901961),0)})
				Smoke.Drag = 1
				Smoke.EmissionDirection = Enum.NormalId.Left
				Smoke.FlipbookFramerate = NumberRange.new(1,10)
				Smoke.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
				Smoke.FlipbookStartRandom = true
				Smoke.Lifetime = NumberRange.new(0.5,0.75)
				Smoke.LightEmission = 1
				Smoke.LockedToPart = true
				Smoke.Rate = 100
				Smoke.Rotation = NumberRange.new(-360,360)
				Smoke.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.5,0),NumberSequenceKeypoint.new(1,2.5,0)})
				Smoke.Speed = NumberRange.new(0,5)
				Smoke.SpreadAngle = Vector2.new(360, 360)
				Smoke.Texture = [[rbxassetid://14607280547]]
				Smoke.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.25058,0.8625,0),NumberSequenceKeypoint.new(0.49768,0.825,0),NumberSequenceKeypoint.new(0.834107,0.89375,0),NumberSequenceKeypoint.new(1,1,0)})
				Smoke.ZOffset = -1
				Smoke.Name = [[Smoke]]
				Smoke.Parent = Mid

				Stars.Brightness = 15
				Stars.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.0980392, 0.835294, 0.772549),0),ColorSequenceKeypoint.new(1,Color3.new(0.0196078, 0.54902, 0.901961),0)})
				Stars.Lifetime = NumberRange.new(0.3,0.3)
				Stars.LockedToPart = true
				Stars.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.228916,2,0),NumberSequenceKeypoint.new(0.49759,3.1875,0),NumberSequenceKeypoint.new(0.801205,2.3125,0),NumberSequenceKeypoint.new(1,0,0)})
				Stars.Speed = NumberRange.new(0,0)
				Stars.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,-3,0),NumberSequenceKeypoint.new(1,-3,0)})
				Stars.Texture = [[http://www.roblox.com/asset/?id=5192965045]]
				Stars.ZOffset = 3
				Stars.Name = [[Stars]]
				Stars.Parent = Red

				Start.CFrame = CFrame.new(3, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

				Start.Name = [[Start]]
				Start.Parent = Red

				End.CFrame = CFrame.new(-12, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				End.Name = [[End]]
				End.Parent = Red

				Beam2.Attachment0 = Start
				Beam2.Attachment1 = End
				Beam2.Brightness = 15
				Beam2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.0980392, 0.835294, 0.772549),0),ColorSequenceKeypoint.new(1,Color3.new(0.0196078, 0.54902, 0.901961),0)})
				Beam2.FaceCamera = true
				Beam2.Texture = [[rbxassetid://7071778278]]
				Beam2.TextureLength = 40
				Beam2.TextureMode = Enum.TextureMode.Static
				Beam2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.104839,0.788889,0),NumberSequenceKeypoint.new(0.333871,0,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(0.633871,0.161111,0),NumberSequenceKeypoint.new(0.775806,0.744444,0),NumberSequenceKeypoint.new(1,1,0)})
				Beam2.Width0 = 5
				Beam2.Width1 = 40
				Beam2.ZOffset = 2.200000047683716
				Beam2.Name = [[Beam2]]
				Beam2.Parent = Red

				task.wait(0.4)
				Beam2.Enabled = false
				Stars.Enabled = false
				Sparks.Enabled = false
				Smoke.Enabled = false
				Charge.Enabled = false

			end)()
		end

		if animationId == "rbxassetid://12342141464" then


			coroutine.wrap(function()
				repeat wait() until game.Players.LocalPlayer.Character.Head:FindFirstChild("MainWind")

				task.wait(1)
				local function changeToBlue(instance)
					if instance:IsA("ParticleEmitter") then
						instance.Color = ColorSequence.new(Color3.fromRGB(49, 210, 255))
					end
					if instance:IsA("Beam") then
						instance.Color = ColorSequence.new(Color3.fromRGB(49, 210, 255)) 
					end
				end

				for _, descendant in pairs(character:GetDescendants()) do
					changeToBlue(descendant)
				end
			end)()
			local music = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

			music.Name = "PurpleSong"

			music.SoundId = getcustomasset(PurpleSongFileName)
			music.TimePosition = 18
			music.Looped = true

			music.Volume = 3

			music:Play()


			local Module_Scripts = {}
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
			local head = character:WaitForChild("Head")
			local EyeGlow = character:WaitForChild("Head")
			local Eye2 = Instance.new("Attachment")
			local Glow = Instance.new("ParticleEmitter")
			local Eye1 = Instance.new("Attachment")
			local Glow_1 = Instance.new("ParticleEmitter")


			Eye2.CFrame = CFrame.new(0.129, 0.235, -0.6)
			Eye2.Name = [[Eye2]]
			Eye2.Parent = EyeGlow

			Glow.Brightness = 15
			Glow.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.341176, 0.933333, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.341176, 0.933333, 1))})
			Glow.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
			Glow.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
			Glow.Lifetime = NumberRange.new(0.9, 0.9)
			Glow.LockedToPart = true
			Glow.Rate = 5
			Glow.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(0.5, 0.25), NumberSequenceKeypoint.new(1, 0.1)})
			Glow.Speed = NumberRange.new(0.01, 0.01)
			Glow.Texture = [[rbxassetid://11676151428]]
			Glow.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)})
			Glow.ZOffset = 0.5
			Glow.Name = [[Glow]]
			Glow.Parent = Eye2

			Eye1.CFrame = CFrame.new(-0.1, 0.236, -0.6)
			Eye1.Name = [[Eye1]]
			Eye1.Parent = EyeGlow

			Glow_1.Brightness = 15
			Glow_1.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.341176, 0.933333, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.341176, 0.933333, 1))})
			Glow_1.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
			Glow_1.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
			Glow_1.Lifetime = NumberRange.new(0.9, 0.9)
			Glow_1.LockedToPart = true
			Glow_1.Rate = 5
			Glow_1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(0.5, 0.25), NumberSequenceKeypoint.new(1, 0.1)})
			Glow_1.Speed = NumberRange.new(0.01, 0.01)
			Glow_1.Texture = [[rbxassetid://11676151428]]
			Glow_1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)})
			Glow_1.ZOffset = 0.5
			Glow_1.Name = [[Glow]]
			Glow_1.Parent = Eye1


			-- Thank for using --


			coroutine.wrap(function()
				local Attachment1 = Instance.new("Attachment")
				local Attachment2 = Instance.new("Attachment")
				local ParticleEmitter = Instance.new("ParticleEmitter")
				local ParticleEmitter2 = Instance.new("ParticleEmitter")

				game.Debris:AddItem(Attachment2, 12)
				game.Debris:AddItem(Attachment1, 12)

				Attachment2.Parent = game.Players.LocalPlayer.Character["Right Arm"]
				Attachment2.Name = "CursedEnergy"

				ParticleEmitter.Brightness = 5
				ParticleEmitter.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.new(0.192157, 0.823529, 1)),
					ColorSequenceKeypoint.new(1, Color3.new(0.192157, 0.823529, 1))
				})
				ParticleEmitter.Drag = 3
				ParticleEmitter.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
				ParticleEmitter.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
				ParticleEmitter.Lifetime = NumberRange.new(0.25, 0.25)
				ParticleEmitter.LightEmission = -1
				ParticleEmitter.LockedToPart = true
				ParticleEmitter.Rate = 5
				ParticleEmitter.Size = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 2),
					NumberSequenceKeypoint.new(1, 2)
				})
				ParticleEmitter.Speed = NumberRange.new(0, 0)
				ParticleEmitter.Texture = [[http://www.roblox.com/asset/?id=14904853757]]
				ParticleEmitter.Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1),
					NumberSequenceKeypoint.new(0.198684, 0.491803),
					NumberSequenceKeypoint.new(0.501316, 0.513661),
					NumberSequenceKeypoint.new(0.798684, 0.497268),
					NumberSequenceKeypoint.new(1, 1)
				})
				ParticleEmitter.ZOffset = -1
				ParticleEmitter.Parent = Attachment2

				---
				Attachment1.Parent = game.Players.LocalPlayer.Character["Left Arm"]
				Attachment1.Name = "CursedEnergy"

				ParticleEmitter2.Brightness = 5
				ParticleEmitter2.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.new(0.192157, 0.823529, 1)),
					ColorSequenceKeypoint.new(1, Color3.new(0.192157, 0.823529, 1))
				})
				ParticleEmitter2.Drag = 3
				ParticleEmitter2.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
				ParticleEmitter2.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
				ParticleEmitter2.Lifetime = NumberRange.new(0.25, 0.25)
				ParticleEmitter2.LightEmission = -1
				ParticleEmitter2.LockedToPart = true
				ParticleEmitter2.Rate = 5
				ParticleEmitter2.Size = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 2),
					NumberSequenceKeypoint.new(1, 2)
				})
				ParticleEmitter2.Speed = NumberRange.new(0, 0)
				ParticleEmitter2.Texture = [[http://www.roblox.com/asset/?id=14904853757]]
				ParticleEmitter2.Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1),
					NumberSequenceKeypoint.new(0.198684, 0.491803),
					NumberSequenceKeypoint.new(0.501316, 0.513661),
					NumberSequenceKeypoint.new(0.798684, 0.497268),
					NumberSequenceKeypoint.new(1, 1)
				})
				ParticleEmitter2.ZOffset = -1
				ParticleEmitter2.Parent = Attachment1

				task.wait(8)
				ParticleEmitter.Enabled = false
				ParticleEmitter2.Enabled = false
			end)()

			coroutine.wrap(function()


				local ts = game:GetService("TweenService")
				local Dialogue = Instance.new("BillboardGui")
				local Chat1 = Instance.new("Frame")
				local Sub = Instance.new("TextLabel")
				local Chat2 = Instance.new("Frame")
				local Sub_1 = Instance.new("TextLabel")


				local player = game.Players.LocalPlayer
				local character = player.Character or player.CharacterAdded:Wait()
				local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

				Dialogue.Active = true
				Dialogue.Size = UDim2.new(15, 0, 15, 0)
				Dialogue.StudsOffset = Vector3.new(0, 0, 2)
				Dialogue.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				Dialogue.Name = [[Dialogue]]
				Dialogue.Parent = humanoidRootPart

				Chat1.AnchorPoint = Vector2.new(0.5, 0.5)
				Chat1.BackgroundColor3 = Color3.new(1, 1, 1)
				Chat1.BorderColor3 = Color3.new(0, 0, 0)
				Chat1.BorderSizePixel = 2
				Chat1.Position = UDim2.new(0.600000024, 0, -0.2, 0) 
				Chat1.Size = UDim2.new(0.100000001, 0, 0.200000003, 0)
				Chat1.Name = [[Chat1]]
				Chat1.BackgroundTransparency = 1
				Chat1.Parent = Dialogue

				Sub.FontFace = Font.new("rbxassetid://12187375716", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
				Sub.Text = [[LET'S GET]]
				Sub.TextColor3 = Color3.new(0, 0, 0)
				Sub.TextScaled = true
				Sub.TextSize = 14
				Sub.TextWrapped = true
				Sub.AnchorPoint = Vector2.new(0.5, 0.5)
				Sub.BackgroundColor3 = Color3.new(1, 1, 1)
				Sub.TextTransparency = 1
				Sub.BorderColor3 = Color3.new(0, 0, 0)
				Sub.BorderSizePixel = 0
				Sub.Position = UDim2.new(0.5, 0, 0.5, 0)
				Sub.Size = UDim2.new(0.850000024, 0, 0.349999994, 0)
				Sub.Name = [[Sub]]
				Sub.Parent = Chat1
				Sub.BackgroundTransparency = 1

				Chat2.AnchorPoint = Vector2.new(0.5, 0.5)
				Chat2.BackgroundColor3 = Color3.new(1, 1, 1)
				Chat2.BorderColor3 = Color3.new(0, 0, 0)
				Chat2.BorderSizePixel = 2
				Chat2.Position = UDim2.new(0.349999994, 0, 1.2, 0) 
				Chat2.Size = UDim2.new(0.100000001, 0, 0.200000003, 0)
				Chat2.Name = [[Chat2]]
				Chat2.Parent = Dialogue
				Chat2.BackgroundTransparency = 1

				Sub_1.FontFace = Font.new("rbxassetid://12187375716", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
				Sub_1.Text = [[...A LITTLE CRAZY.]]
				Sub_1.TextColor3 = Color3.new(0, 0, 0)
				Sub_1.TextScaled = true
				Sub_1.TextSize = 14
				Sub_1.TextWrapped = true
				Sub_1.AnchorPoint = Vector2.new(0.5, 0.5)
				Sub_1.BackgroundColor3 = Color3.new(1, 1, 1)
				Sub_1.BackgroundTransparency = 1
				Sub_1.TextTransparency = 1
				Sub_1.BorderColor3 = Color3.new(0, 0, 0)
				Sub_1.BorderSizePixel = 0
				Sub_1.Position = UDim2.new(0.5, 0, 0.5, 0)
				Sub_1.Size = UDim2.new(0.850000024, 0, 0.5, 0)
				Sub_1.Name = [[Sub_1]]
				Sub_1.Parent = Chat2



				game.Debris:AddItem(Chat1, 25)
				game.Debris:AddItem(Chat2, 25)
				game.Debris:AddItem(Sub, 25)
				game.Debris:AddItem(Sub_1, 25)

				local duration = 0.6 

				tweenProperty(Chat1, {BackgroundTransparency = 0}, duration)
				tweenProperty(Sub, {TextTransparency = 0}, duration)
				tweenProperty(Chat2, {BackgroundTransparency = 0}, duration)
				tweenProperty(Sub_1, {TextTransparency = 0}, duration)

				tweenProperty(Chat1, {Position = UDim2.new(0.6, 0, 0.4, 0)}, 0.6)
				tweenProperty(Chat2, {Position = UDim2.new(0.35, 0, 0.5, 0)}, 0.6)
				task.wait(4)
				tweenProperty(Chat1, {BackgroundTransparency = 1}, 5)
				tweenProperty(Sub, {TextTransparency = 1}, 5)
				tweenProperty(Chat2, {BackgroundTransparency = 1}, 5)
				tweenProperty(Sub_1, {TextTransparency = 1}, 5)

			end)()
		end
		if animationId == "rbxassetid://12296882427" then
			coroutine.wrap(function()
				local Red = game.Players.LocalPlayer.Character["Right Arm"]
				local music = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

				music.Name = "Ao"

				music.SoundId = getcustomasset(AoFileName)

				music.Looped = false

				music.Volume = 10

				music:Play()
				game.Debris:AddItem(music, 60)
				local Sparks = Instance.new("ParticleEmitter")
				local Mid = Instance.new("Attachment")
				local Charge = Instance.new("ParticleEmitter")
				local Smoke = Instance.new("ParticleEmitter")
				local Stars = Instance.new("ParticleEmitter")
				local Start = Instance.new("Attachment")
				local End = Instance.new("Attachment")
				local Beam2 = Instance.new("Beam")

				game.Debris:AddItem(Sparks, 5)
				game.Debris:AddItem(Mid, 5)
				game.Debris:AddItem(Charge, 5)
				game.Debris:AddItem(Smoke, 5)
				game.Debris:AddItem(Stars, 5)
				game.Debris:AddItem(Start, 5)
				game.Debris:AddItem(End, 5)
				game.Debris:AddItem(Beam2, 5)



				Sparks.Brightness = 15
				Sparks.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.0980392, 0.835294, 0.772549),0),ColorSequenceKeypoint.new(1,Color3.new(0.0196078, 0.54902, 0.901961),0)})
				Sparks.Drag = 5
				Sparks.EmissionDirection = Enum.NormalId.Right
				Sparks.Lifetime = NumberRange.new(0.5,1)
				Sparks.LockedToPart = true
				Sparks.Rate = 400
				Sparks.RotSpeed = NumberRange.new(-100,100)
				Sparks.Rotation = NumberRange.new(-360,360)
				Sparks.ShapeStyle = Enum.ParticleEmitterShapeStyle.Surface
				Sparks.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.6,0),NumberSequenceKeypoint.new(0.439759,0.625,0),NumberSequenceKeypoint.new(0.775904,0.375,0),NumberSequenceKeypoint.new(1,0,0)})
				Sparks.Speed = NumberRange.new(-40,0)
				Sparks.SpreadAngle = Vector2.new(20, 20)
				Sparks.Texture = [[rbxassetid://8221815526]]
				Sparks.ZOffset = 3
				Sparks.Name = [[Sparks]]
				Sparks.Parent = Red

				Mid.Name = [[Mid]]
				Mid.Parent = Red

				Charge.Brightness = 3
				Charge.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.0980392, 0.835294, 0.772549),0),ColorSequenceKeypoint.new(1,Color3.new(0.0196078, 0.54902, 0.901961),0)})
				Charge.Lifetime = NumberRange.new(0.25,0.25)
				Charge.LightEmission = 1
				Charge.LockedToPart = true
				Charge.Rate = 50
				Charge.RotSpeed = NumberRange.new(500,500)
				Charge.Rotation = NumberRange.new(0,360)
				Charge.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(0.273006,8.98219,0),NumberSequenceKeypoint.new(0.748466,5.6743,0),NumberSequenceKeypoint.new(1,0,0)})
				Charge.Speed = NumberRange.new(0.1,0.1)
				Charge.SpreadAngle = Vector2.new(360, 360)
				Charge.Texture = [[rbxassetid://1084969997]]
				Charge.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
				Charge.Name = [[Charge]]
				Charge.Parent = Mid

				Smoke.Brightness = 3
				Smoke.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.0980392, 0.835294, 0.772549),0),ColorSequenceKeypoint.new(1,Color3.new(0.0196078, 0.54902, 0.901961),0)})
				Smoke.Drag = 1
				Smoke.EmissionDirection = Enum.NormalId.Left
				Smoke.FlipbookFramerate = NumberRange.new(1,10)
				Smoke.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
				Smoke.FlipbookStartRandom = true
				Smoke.Lifetime = NumberRange.new(0.5,0.75)
				Smoke.LightEmission = 1
				Smoke.LockedToPart = true
				Smoke.Rate = 100
				Smoke.Rotation = NumberRange.new(-360,360)
				Smoke.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.5,0),NumberSequenceKeypoint.new(1,2.5,0)})
				Smoke.Speed = NumberRange.new(0,5)
				Smoke.SpreadAngle = Vector2.new(360, 360)
				Smoke.Texture = [[rbxassetid://14607280547]]
				Smoke.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.25058,0.8625,0),NumberSequenceKeypoint.new(0.49768,0.825,0),NumberSequenceKeypoint.new(0.834107,0.89375,0),NumberSequenceKeypoint.new(1,1,0)})
				Smoke.ZOffset = -1
				Smoke.Name = [[Smoke]]
				Smoke.Parent = Mid

				Stars.Brightness = 15
				Stars.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.0980392, 0.835294, 0.772549),0),ColorSequenceKeypoint.new(1,Color3.new(0.0196078, 0.54902, 0.901961),0)})
				Stars.Lifetime = NumberRange.new(0.3,0.3)
				Stars.LockedToPart = true
				Stars.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.228916,2,0),NumberSequenceKeypoint.new(0.49759,3.1875,0),NumberSequenceKeypoint.new(0.801205,2.3125,0),NumberSequenceKeypoint.new(1,0,0)})
				Stars.Speed = NumberRange.new(0,0)
				Stars.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,-3,0),NumberSequenceKeypoint.new(1,-3,0)})
				Stars.Texture = [[http://www.roblox.com/asset/?id=5192965045]]
				Stars.ZOffset = 3
				Stars.Name = [[Stars]]
				Stars.Parent = Red

				Start.CFrame = CFrame.new(3, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

				Start.Name = [[Start]]
				Start.Parent = Red

				End.CFrame = CFrame.new(-12, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				End.Name = [[End]]
				End.Parent = Red

				Beam2.Attachment0 = Start
				Beam2.Attachment1 = End
				Beam2.Brightness = 15
				Beam2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.0980392, 0.835294, 0.772549),0),ColorSequenceKeypoint.new(1,Color3.new(0.0196078, 0.54902, 0.901961),0)})
				Beam2.FaceCamera = true
				Beam2.Texture = [[rbxassetid://7071778278]]
				Beam2.TextureLength = 40
				Beam2.TextureMode = Enum.TextureMode.Static
				Beam2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.104839,0.788889,0),NumberSequenceKeypoint.new(0.333871,0,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(0.633871,0.161111,0),NumberSequenceKeypoint.new(0.775806,0.744444,0),NumberSequenceKeypoint.new(1,1,0)})
				Beam2.Width0 = 5
				Beam2.Width1 = 40
				Beam2.ZOffset = 2.200000047683716
				Beam2.Name = [[Beam2]]
				Beam2.Parent = Red

				task.wait(0.4)
				Beam2.Enabled = false
				Stars.Enabled = false
				Sparks.Enabled = false
				Smoke.Enabled = false
				Charge.Enabled = false

			end)()
		end
		if animationId == "rbxassetid://12296113986" then
			coroutine.wrap(function()

				local function launch()
					local c = math.random(1, 3)

					if c <= 2 then
						local player = game.Players.LocalPlayer
						local character = player.Character or player.CharacterAdded:Wait()
						local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
						local forwardDirection = humanoidRootPart.CFrame.LookVector
						local launchVector = forwardDirection * 250
						humanoidRootPart.Velocity = humanoidRootPart.Velocity + launchVector
					else
						coroutine.wrap(function()
							local player = game.Players.LocalPlayer
							local character = player.Character or player.CharacterAdded:Wait()
							local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
							local TweenService = game:GetService("TweenService")
							humanoidRootPart.Anchored = true

							local lookVector = humanoidRootPart.CFrame.LookVector

							local moveForward = lookVector * 15 
							local moveUp = Vector3.new(0, 8, 0) 
							local targetPosition = humanoidRootPart.Position + moveForward + moveUp

							local tweenInfo = TweenInfo.new(
								0.9, 
								Enum.EasingStyle.Linear,
								Enum.EasingDirection.Out 
							)

							local tween = TweenService:Create(humanoidRootPart, tweenInfo, {CFrame = CFrame.new(targetPosition)})

							tween:Play()

							tween.Completed:Wait()

							wait(3)
							humanoidRootPart.Anchored = false
						end)()
					end
				end
				launch()
				wait(1)


				animationTrack:Stop()
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				local animtrack = Instance.new("Animation")
				animtrack.AnimationId = "rbxassetid://13073745835"
				local redanim = player.Character.Humanoid:LoadAnimation(animtrack)
				redanim:Play()

				local music = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

				music.Name = "Aka"

				music.SoundId = getcustomasset(AkaFileName)

				music.Looped = false

				music.Volume = 10
				local music2 = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

				music2.Name = "AkaSFX"

				music2.SoundId = getcustomasset(AkasfxFileName)

				music2.Looped = false

				music2.Volume = 4

				music2:Play()

				music:Play()
				
				local objects2 = game:GetObjects(133512260861191)

				local parent = character["Right Arm"]

				for _, obj in pairs(objects2) do
					if obj:IsA("BasePart") then
						for _, attachment in pairs(obj:GetChildren()) do
							if attachment:IsA("Attachment") then
								attachment.Parent = parent
								for _, emitter in pairs(attachment:GetChildren()) do
									if emitter:IsA("ParticleEmitter") then
										emitter.Enabled = true

										coroutine.wrap(function()
											task.wait(0.5)
											emitter.Enabled = false
										end)()
										game.Debris:AddItem(attachment, 5)
									end
								end
							end
						end
						obj:Destroy()
					end
				end
				flashRed()
				game.Debris:AddItem(music, 60)
				game.Debris:AddItem(music2, 60)

				playsound(3059775624, 3, game.Players.LocalPlayer.Character["Right Arm"])

				local RedExplode = game.Players.LocalPlayer.Character["Right Arm"]
				local Sparks = Instance.new("ParticleEmitter")
				local Wind = Instance.new("ParticleEmitter")
				local Burst = Instance.new("ParticleEmitter")
				local Dust = Instance.new("ParticleEmitter")

				Sparks.Brightness = 5
				Sparks.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Sparks.Drag = 10
				Sparks:Emit(10)
				Sparks.EmissionDirection = Enum.NormalId.Front
				Sparks.Enabled = false
				Sparks.FlipbookFramerate = NumberRange.new(1,40)
				Sparks.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
				Sparks.FlipbookStartRandom = true
				Sparks.Lifetime = NumberRange.new(0.3,0.6)
				Sparks.Rate = 400
				Sparks.RotSpeed = NumberRange.new(-200,200)
				Sparks.Rotation = NumberRange.new(-360,360)
				Sparks.ShapeStyle = Enum.ParticleEmitterShapeStyle.Surface
				Sparks.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4.30025,0),NumberSequenceKeypoint.new(0.1,9.97,0),NumberSequenceKeypoint.new(0.179448,3.86768,0),NumberSequenceKeypoint.new(0.325153,1.37405,0),NumberSequenceKeypoint.new(1,0,0)})
				Sparks.Speed = NumberRange.new(10,150)
				Sparks.SpreadAngle = Vector2.new(360, 360)
				Sparks.Texture = [[rbxassetid://11817592243]]
				Sparks.ZOffset = 3
				Sparks.Name = [[Sparks]]
				Sparks.Parent = RedExplode

				Wind.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,1,1),0)})
				Wind.Enabled = false
				Wind.Lifetime = NumberRange.new(0.1,0.1)
				Wind.LightEmission = 1
				Wind.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				Wind.Rate = 40
				Wind:Emit(10)
				Wind.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.132316,6.03,5.45805),NumberSequenceKeypoint.new(0.288316,9.79667,7.24584),NumberSequenceKeypoint.new(0.508316,11.7137,6.85207),NumberSequenceKeypoint.new(1,13.6162,4.67232)})
				Wind.Speed = NumberRange.new(0.1,0.1)
				Wind.SpreadAngle = Vector2.new(360, 360)
				Wind.Texture = [[rbxassetid://10365550581]]
				Wind.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0.4),NumberSequenceKeypoint.new(1,1,0)})
				Wind.Name = [[Wind]]
				Wind.Parent = RedExplode

				Burst.Brightness = 5
				Burst.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Burst.Enabled = false
				Burst.Lifetime = NumberRange.new(0.2,0.2)
				Burst.LightEmission = 1
				Burst.Rate = 1
				Burst:Emit(10)
				Burst.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.134316,6.13,0),NumberSequenceKeypoint.new(0.328316,9.63,0),NumberSequenceKeypoint.new(0.592316,12.8682,0),NumberSequenceKeypoint.new(1,13.8062,0)})
				Burst.Speed = NumberRange.new(0,0)
				Burst.Texture = [[rbxassetid://10365553480]]
				Burst.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
				Burst.Name = [[Burst]]
				Burst.Parent = RedExplode

				Dust.Drag = 8
				Dust.EmissionDirection = Enum.NormalId.Front
				Dust.Enabled = false
				Dust:Emit(10)
				Dust.FlipbookFramerate = NumberRange.new(10,30)
				Dust.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
				Dust.FlipbookStartRandom = true
				Dust.Lifetime = NumberRange.new(0.5,1.25)
				Dust.LightInfluence = 1
				Dust.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				Dust.Rate = 10
				Dust.RotSpeed = NumberRange.new(-10,10)
				Dust.Rotation = NumberRange.new(-360,360)
				Dust.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.046342,8.86716,6.60436),NumberSequenceKeypoint.new(0.146342,12.3189,6.13319),NumberSequenceKeypoint.new(0.396342,15.8451,7.30852),NumberSequenceKeypoint.new(0.672342,17.0183,6.24101),NumberSequenceKeypoint.new(1,17.2114,6.12861)})
				Dust.Speed = NumberRange.new(0.1,15)
				Dust.SpreadAngle = Vector2.new(360, 360)
				Dust.Texture = [[rbxassetid://13026594575]]
				Dust.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.5,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
				Dust.Name = [[Dust]]
				Dust.Parent = RedExplode

				game.Debris:AddItem(Dust, 5)
				game.Debris:AddItem(Wind, 5)
				game.Debris:AddItem(Sparks, 5)
				game.Debris:AddItem(Burst, 5)

				task.wait(0.6)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			end)()
		end

		if animationId == "rbxassetid://10470389827" then
			if animationId == "rbxassetid://10470389827" then
				local newanim = Instance.new("Animation")
				newanim.AnimationId = "rbxassetid://18459183268"
				local void = character.Humanoid:LoadAnimation(newanim)
				void.Priority = Enum.AnimationPriority.Action4
				void:Play()
				workspace.Gravity = 50

				animationTrack.Stopped:Connect(function()
					void:Stop()
					workspace.Gravity = 196.2
				end)
			end
		end


		if animationId == "rbxassetid://13560306510" then -- Flowing hit animation ID
			animationTrack.TimePosition = 2.8
			local music3 = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

			music3.Name = "PunchingSFX"

			music3.SoundId = getcustomasset(SFXFileName)

			music3.Looped = false

			music3.Volume = 4
			

			music3:Play()
			
			music3.TimePosition = 2

			game.Debris:AddItem(music3, 60)
			coroutine.wrap(function()
				task.wait(1)
				player.Character.HumanoidRootPart.Anchored = true
				animationTrack:Stop()
				local animtrack = Instance.new("Animation")
				animtrack.AnimationId = "rbxassetid://13073745835"
				local redanim = player.Character.Humanoid:LoadAnimation(animtrack)
				redanim:Play()

				local Red = game.Players.LocalPlayer.Character["Right Arm"]

				local Sparks = Instance.new("ParticleEmitter")
				local Mid = Instance.new("Attachment")
				local Charge = Instance.new("ParticleEmitter")
				local Smoke = Instance.new("ParticleEmitter")
				local Stars = Instance.new("ParticleEmitter")
				local Start = Instance.new("Attachment")
				local End = Instance.new("Attachment")
				local Beam2 = Instance.new("Beam")

				game.Debris:AddItem(Sparks, 5)
				game.Debris:AddItem(Mid, 5)
				game.Debris:AddItem(Charge, 5)
				game.Debris:AddItem(Smoke, 5)
				game.Debris:AddItem(Stars, 5)
				game.Debris:AddItem(Start, 5)
				game.Debris:AddItem(End, 5)
				game.Debris:AddItem(Beam2, 5)


				local music = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

				music.Name = "Aka"

				music.SoundId = getcustomasset(AkaFileName)

				music.Looped = false

				music.Volume = 10

				music:Play()

				local music2 = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

				music2.Name = "AkaSFX"

				music2.SoundId = getcustomasset(AkasfxFileName)

				music2.Looped = false

				music2.Volume = 4

				music2:Play()
				

				local objects2 = game:GetObjects(133512260861191)

				local parent = character["Right Arm"]

				for _, obj in pairs(objects2) do
					if obj:IsA("BasePart") then
						for _, attachment in pairs(obj:GetChildren()) do
							if attachment:IsA("Attachment") then
								attachment.Parent = parent
								for _, emitter in pairs(attachment:GetChildren()) do
									if emitter:IsA("ParticleEmitter") then
										emitter.Enabled = true

										coroutine.wrap(function()
											task.wait(0.5)
											emitter.Enabled = false
										end)()
										game.Debris:AddItem(attachment, 5)
									end
								end
							end
						end
						obj:Destroy()
					end
				end
				flashRed()

				game.Debris:AddItem(music, 60)

				Sparks.Brightness = 15
				Sparks.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.588235,0.0901961,0.0901961),0),ColorSequenceKeypoint.new(1,Color3.new(0.588235,0.0901961,0.0901961),0)})
				Sparks.Drag = 5
				Sparks.EmissionDirection = Enum.NormalId.Right
				Sparks.Lifetime = NumberRange.new(0.5,1)
				Sparks.LockedToPart = true
				Sparks.Rate = 400
				Sparks.RotSpeed = NumberRange.new(-100,100)
				Sparks.Rotation = NumberRange.new(-360,360)
				Sparks.ShapeStyle = Enum.ParticleEmitterShapeStyle.Surface
				Sparks.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.6,0),NumberSequenceKeypoint.new(0.439759,0.625,0),NumberSequenceKeypoint.new(0.775904,0.375,0),NumberSequenceKeypoint.new(1,0,0)})
				Sparks.Speed = NumberRange.new(-40,0)
				Sparks.SpreadAngle = Vector2.new(20, 20)
				Sparks.Texture = [[rbxassetid://8221815526]]
				Sparks.ZOffset = 3
				Sparks.Name = [[Sparks]]
				Sparks.Parent = Red

				Mid.Name = [[Mid]]
				Mid.Parent = Red

				Charge.Brightness = 3
				Charge.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Charge.Lifetime = NumberRange.new(0.25,0.25)
				Charge.LightEmission = 1
				Charge.LockedToPart = true
				Charge.Rate = 50
				Charge.RotSpeed = NumberRange.new(500,500)
				Charge.Rotation = NumberRange.new(0,360)
				Charge.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(0.273006,8.98219,0),NumberSequenceKeypoint.new(0.748466,5.6743,0),NumberSequenceKeypoint.new(1,0,0)})
				Charge.Speed = NumberRange.new(0.1,0.1)
				Charge.SpreadAngle = Vector2.new(360, 360)
				Charge.Texture = [[rbxassetid://1084969997]]
				Charge.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(1,0,0)})
				Charge.Name = [[Charge]]
				Charge.Parent = Mid

				Smoke.Brightness = 3
				Smoke.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Smoke.Drag = 1
				Smoke.EmissionDirection = Enum.NormalId.Left
				Smoke.FlipbookFramerate = NumberRange.new(1,10)
				Smoke.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
				Smoke.FlipbookStartRandom = true
				Smoke.Lifetime = NumberRange.new(0.5,0.75)
				Smoke.LightEmission = 1
				Smoke.LockedToPart = true
				Smoke.Rate = 100
				Smoke.Rotation = NumberRange.new(-360,360)
				Smoke.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.5,0),NumberSequenceKeypoint.new(1,2.5,0)})
				Smoke.Speed = NumberRange.new(0,5)
				Smoke.SpreadAngle = Vector2.new(360, 360)
				Smoke.Texture = [[rbxassetid://14607280547]]
				Smoke.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.25058,0.8625,0),NumberSequenceKeypoint.new(0.49768,0.825,0),NumberSequenceKeypoint.new(0.834107,0.89375,0),NumberSequenceKeypoint.new(1,1,0)})
				Smoke.ZOffset = -1
				Smoke.Name = [[Smoke]]
				Smoke.Parent = Mid

				Stars.Brightness = 15
				Stars.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.588235,0.160784,0.160784),0),ColorSequenceKeypoint.new(1,Color3.new(0.588235,0.160784,0.160784),0)})
				Stars.Lifetime = NumberRange.new(0.3,0.3)
				Stars.LockedToPart = true
				Stars.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.228916,2,0),NumberSequenceKeypoint.new(0.49759,3.1875,0),NumberSequenceKeypoint.new(0.801205,2.3125,0),NumberSequenceKeypoint.new(1,0,0)})
				Stars.Speed = NumberRange.new(0,0)
				Stars.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,-3,0),NumberSequenceKeypoint.new(1,-3,0)})
				Stars.Texture = [[http://www.roblox.com/asset/?id=5192965045]]
				Stars.ZOffset = 3
				Stars.Name = [[Stars]]
				Stars.Parent = Red

				Start.CFrame = CFrame.new(3, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)

				Start.Name = [[Start]]
				Start.Parent = Red

				End.CFrame = CFrame.new(-12, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				End.Name = [[End]]
				End.Parent = Red

				Beam2.Attachment0 = Start
				Beam2.Attachment1 = End
				Beam2.Brightness = 15
				Beam2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0.133333,0.133333),0),ColorSequenceKeypoint.new(1,Color3.new(1,0.133333,0.133333),0)})
				Beam2.FaceCamera = true
				Beam2.Texture = [[rbxassetid://7071778278]]
				Beam2.TextureLength = 40
				Beam2.TextureMode = Enum.TextureMode.Static
				Beam2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.104839,0.788889,0),NumberSequenceKeypoint.new(0.333871,0,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(0.633871,0.161111,0),NumberSequenceKeypoint.new(0.775806,0.744444,0),NumberSequenceKeypoint.new(1,1,0)})
				Beam2.Width0 = 5
				Beam2.Width1 = 40
				Beam2.ZOffset = 2.200000047683716
				Beam2.Name = [[Beam2]]
				Beam2.Parent = Red

				task.wait(0.4)
				Beam2.Enabled = false
				Stars.Enabled = false
				Sparks.Enabled = false
				Smoke.Enabled = false
				Charge.Enabled = false
				task.wait(0.2)
				playsound(3059775624, 3, game.Players.LocalPlayer.Character["Right Arm"])
				local RedExplode = game.Players.LocalPlayer.Character["Right Arm"]
				local Sparks = Instance.new("ParticleEmitter")
				local Wind = Instance.new("ParticleEmitter")
				local Burst = Instance.new("ParticleEmitter")
				local Dust = Instance.new("ParticleEmitter")

				Sparks.Brightness = 5
				Sparks.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Sparks.Drag = 10
				Sparks:Emit(10)
				Sparks.EmissionDirection = Enum.NormalId.Front
				Sparks.Enabled = false
				Sparks.FlipbookFramerate = NumberRange.new(1,40)
				Sparks.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
				Sparks.FlipbookStartRandom = true
				Sparks.Lifetime = NumberRange.new(0.3,0.6)
				Sparks.Rate = 400
				Sparks.RotSpeed = NumberRange.new(-200,200)
				Sparks.Rotation = NumberRange.new(-360,360)
				Sparks.ShapeStyle = Enum.ParticleEmitterShapeStyle.Surface
				Sparks.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4.30025,0),NumberSequenceKeypoint.new(0.1,9.97,0),NumberSequenceKeypoint.new(0.179448,3.86768,0),NumberSequenceKeypoint.new(0.325153,1.37405,0),NumberSequenceKeypoint.new(1,0,0)})
				Sparks.Speed = NumberRange.new(10,150)
				Sparks.SpreadAngle = Vector2.new(360, 360)
				Sparks.Texture = [[rbxassetid://11817592243]]
				Sparks.ZOffset = 3
				Sparks.Name = [[Sparks]]
				Sparks.Parent = RedExplode

				Wind.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,1,1),0)})
				Wind.Enabled = false
				Wind.Lifetime = NumberRange.new(0.1,0.1)
				Wind.LightEmission = 1
				Wind.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				Wind.Rate = 40
				Wind:Emit(10)
				Wind.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.132316,6.03,5.45805),NumberSequenceKeypoint.new(0.288316,9.79667,7.24584),NumberSequenceKeypoint.new(0.508316,11.7137,6.85207),NumberSequenceKeypoint.new(1,13.6162,4.67232)})
				Wind.Speed = NumberRange.new(0.1,0.1)
				Wind.SpreadAngle = Vector2.new(360, 360)
				Wind.Texture = [[rbxassetid://10365550581]]
				Wind.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0.4),NumberSequenceKeypoint.new(1,1,0)})
				Wind.Name = [[Wind]]
				Wind.Parent = RedExplode

				Burst.Brightness = 5
				Burst.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Burst.Enabled = false
				Burst.Lifetime = NumberRange.new(0.2,0.2)
				Burst.LightEmission = 1
				Burst.Rate = 1
				Burst:Emit(10)
				Burst.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.134316,6.13,0),NumberSequenceKeypoint.new(0.328316,9.63,0),NumberSequenceKeypoint.new(0.592316,12.8682,0),NumberSequenceKeypoint.new(1,13.8062,0)})
				Burst.Speed = NumberRange.new(0,0)
				Burst.Texture = [[rbxassetid://10365553480]]
				Burst.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
				Burst.Name = [[Burst]]
				Burst.Parent = RedExplode

				Dust.Drag = 8
				Dust.EmissionDirection = Enum.NormalId.Front
				Dust.Enabled = false
				Dust:Emit(10)
				Dust.FlipbookFramerate = NumberRange.new(10,30)
				Dust.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
				Dust.FlipbookStartRandom = true
				Dust.Lifetime = NumberRange.new(0.5,1.25)
				Dust.LightInfluence = 1
				Dust.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				Dust.Rate = 10
				Dust.RotSpeed = NumberRange.new(-10,10)
				Dust.Rotation = NumberRange.new(-360,360)
				Dust.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.046342,8.86716,6.60436),NumberSequenceKeypoint.new(0.146342,12.3189,6.13319),NumberSequenceKeypoint.new(0.396342,15.8451,7.30852),NumberSequenceKeypoint.new(0.672342,17.0183,6.24101),NumberSequenceKeypoint.new(1,17.2114,6.12861)})
				Dust.Speed = NumberRange.new(0.1,15)
				Dust.SpreadAngle = Vector2.new(360, 360)
				Dust.Texture = [[rbxassetid://13026594575]]
				Dust.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.5,0.5,0),NumberSequenceKeypoint.new(1,1,0)})
				Dust.Name = [[Dust]]
				Dust.Parent = RedExplode

				game.Debris:AddItem(Dust, 5)
				game.Debris:AddItem(Wind, 5)
				game.Debris:AddItem(Sparks, 5)
				game.Debris:AddItem(Burst, 5)
				player.Character.HumanoidRootPart.Anchored = false

			end)()
			-- Stop the flowing startup animation when flowing hit starts
			if BufferTrack and BufferTrack.IsPlaying then
				BufferTrack:Stop()
			end
		end

		if animationId == "rbxassetid://12309835105" then
			coroutine.wrap(function()
				local TweenService = game:GetService("TweenService")
				local player = game.Players.LocalPlayer -- Get the player
				local character = player.Character or player.CharacterAdded:Wait() -- Get the player's character
				local humanoidRootPart = character:WaitForChild("HumanoidRootPart") -- The main part we will use to move the object around
				local music2 = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

				music2.Name = "AkaSFX"

				music2.SoundId = getcustomasset(AkasfxFileName)

				music2.Looped = false

				music2.Volume = 4

				music2:Play()
				game.Debris:AddItem(music2, 60)
				coroutine.wrap(function()
					tweenProperty(game.Workspace.CurrentCamera, {FieldOfView = 90}, 0.3)
					task.wait(0.2)
					tweenProperty(game.Workspace.CurrentCamera, {FieldOfView = 20}, 0.2)
					task.wait(0.2)
					tweenProperty(game.Workspace.CurrentCamera, {FieldOfView = 70}, 0.8)

				end)()
				-- Create the ReversalRedMax2 object as in your original script
				local ReversalRedMax2 = Instance.new("Part")
				local Trail = Instance.new("Trail")
				local Center = Instance.new("Attachment")
				local Aura = Instance.new("ParticleEmitter")
				local CenterParticle = Instance.new("ParticleEmitter")
				local PointLight = Instance.new("PointLight")
				local Attachment2 = Instance.new("Attachment")
				local Attachment = Instance.new("Attachment")
				-- Properties --

				ReversalRedMax2.Shape = Enum.PartType.Ball
				ReversalRedMax2.Anchored = false
				ReversalRedMax2.BottomSurface = Enum.SurfaceType.Smooth
				ReversalRedMax2.BrickColor = BrickColor.new([[Really red]])
				ReversalRedMax2.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				ReversalRedMax2.CanCollide = false
				ReversalRedMax2.Color = Color3.new(1, 0, 0)
				ReversalRedMax2.Massless = true
				ReversalRedMax2.Material = Enum.Material.Neon
				ReversalRedMax2.Size = Vector3.new(3, 3, 3)
				ReversalRedMax2.TopSurface = Enum.SurfaceType.Smooth
				ReversalRedMax2.Name = [[ReversalRedMax2]]
				ReversalRedMax2.Parent = workspace

				Trail.Attachment0 = Attachment2
				Trail.Attachment1 = Attachment
				Trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Trail.FaceCamera = true
				Trail.Lifetime = 0.20000000298023224
				Trail.LightInfluence = 1
				Trail.Texture = [[rbxassetid://12533057255]]
				Trail.TextureLength = 0.8999999761581421
				Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,0,0)})
				Trail.Parent = ReversalRedMax2

				Center.Name = [[Center]]
				Center.Parent = ReversalRedMax2

				Aura.Brightness = 6
				Aura.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Aura.FlipbookFramerate = NumberRange.new(10,20)
				Aura.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
				Aura.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
				Aura.FlipbookStartRandom = true
				Aura.Lifetime = NumberRange.new(0.5,0.75)
				Aura.LockedToPart = true
				Aura.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				Aura.Rate = 200
				Aura.RotSpeed = NumberRange.new(-400,400)
				Aura.Rotation = NumberRange.new(-360,360)
				Aura.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.103491,0.578231,0.578231),NumberSequenceKeypoint.new(0.253117,2.10884,2.10884),NumberSequenceKeypoint.new(0.48005,2.82313,2.82313),NumberSequenceKeypoint.new(0.753117,2.07483,2.07483),NumberSequenceKeypoint.new(1,1.00111,1.00111)})
				Aura.Speed = NumberRange.new(0.1,5)
				Aura.SpreadAngle = Vector2.new(360, 360)
				Aura.Texture = [[rbxassetid://15269497616]]
				Aura.Name = [[Aura]]
				Aura.Parent = Center

				CenterParticle.Brightness = 5
				CenterParticle.Lifetime = NumberRange.new(0.2,0.2)
				CenterParticle.LightEmission = 1
				CenterParticle.LockedToPart = true
				CenterParticle.Rate = 40
				CenterParticle.RotSpeed = NumberRange.new(500,500)
				CenterParticle.Rotation = NumberRange.new(-360,360)
				CenterParticle.Speed = NumberRange.new(0,0)
				CenterParticle.Texture = [[rbxassetid://2122546039]]
				CenterParticle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(0.85,0.25,0),NumberSequenceKeypoint.new(1,1,0)})
				CenterParticle.ZOffset = 6
				CenterParticle.Name = [[CenterParticle]]
				CenterParticle.Parent = Center

				PointLight.Range = 15
				PointLight.Brightness = 5
				PointLight.Color = Color3.new(1, 0, 0)
				PointLight.Parent = ReversalRedMax2

				Attachment2.CFrame = CFrame.new(0, 0, 1.40000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				Attachment2.Name = [[Attachment2]]
				Attachment2.Parent = ReversalRedMax2

				Attachment.CFrame = CFrame.new(0, 0, -1.40000153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				Attachment.Parent = ReversalRedMax2


				-- Tweening variables
				local outwardDistance = 50 -- The distance to move the object outward
				local outwardTime = 0.5 -- Time to move outward
				local returnTime = 0.2 -- Time to return like a magnet

				-- Create a function to move the object outward and then return
				local function flyOutAndBack()
					-- Initial position (near the player)
					ReversalRedMax2.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -3) -- Start in front of the player

					-- Tween to move outward
					local targetPosition = humanoidRootPart.Position + humanoidRootPart.CFrame.LookVector * outwardDistance
					local outwardTween = TweenService:Create(ReversalRedMax2, TweenInfo.new(outwardTime, Enum.EasingStyle.Linear), {CFrame = CFrame.new(targetPosition)})
					outwardTween:Play()

					-- When outward tween is done, return the part to the player
					outwardTween.Completed:Connect(function()
						-- Tween to return to the player's position
						local returnTween = TweenService:Create(ReversalRedMax2, TweenInfo.new(returnTime, Enum.EasingStyle.Linear), {CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -3)})
						returnTween:Play()

						-- After returning to the player, destroy the part
						returnTween.Completed:Connect(function()

							ReversalRedMax2:Destroy() -- Destroy the object after it returns
							local BlackFlashHit = Instance.new("Part")
							game.Debris:AddItem(BlackFlashHit, 5)
							
							coroutine.wrap(function()


								local ts = game:GetService("TweenService")
								local Dialogue = Instance.new("BillboardGui")
								local Chat1 = Instance.new("Frame")
								local Sub = Instance.new("TextLabel")



								local player = game.Players.LocalPlayer
								local character = player.Character or player.CharacterAdded:Wait()
								local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

								Dialogue.Active = true
								Dialogue.Size = UDim2.new(15, 0, 15, 0)
								Dialogue.StudsOffset = Vector3.new(0, 0, 2)
								Dialogue.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
								Dialogue.Name = [[Dialogue]]
								Dialogue.Parent = humanoidRootPart

								Chat1.AnchorPoint = Vector2.new(0.5, 0.5)
								Chat1.BackgroundColor3 = Color3.new(1, 1, 1)
								Chat1.BorderColor3 = Color3.new(0, 0, 0)
								Chat1.BorderSizePixel = 2
								Chat1.Position = UDim2.new(0.600000024, 0, -0.2, 0) 
								Chat1.Size = UDim2.new(0.100000001, 0, 0.200000003, 0)
								Chat1.Name = [[Chat1]]
								Chat1.BackgroundTransparency = 1
								Chat1.Parent = Dialogue

								Sub.FontFace = Font.new("rbxassetid://12187375716", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
								Sub.Text = [[KOKUSEN!!]]
								Sub.TextColor3 = Color3.new(0, 0, 0)
								Sub.TextScaled = true
								Sub.TextSize = 14
								Sub.TextWrapped = true
								Sub.AnchorPoint = Vector2.new(0.5, 0.5)
								Sub.BackgroundColor3 = Color3.new(1, 1, 1)
								Sub.TextTransparency = 1
								Sub.BorderColor3 = Color3.new(0, 0, 0)
								Sub.BorderSizePixel = 0
								Sub.Position = UDim2.new(0.5, 0, 0.5, 0)
								Sub.Size = UDim2.new(0.850000024, 0, 0.349999994, 0)
								Sub.Name = [[Sub]]
								Sub.Parent = Chat1
								Sub.BackgroundTransparency = 1






								game.Debris:AddItem(Chat1, 25)
								game.Debris:AddItem(Sub, 25)



								tweenProperty(Chat1, {BackgroundTransparency = 0}, 1)
								tweenProperty(Sub, {TextTransparency = 0}, 1)
								tweenProperty(Chat1, {Position = UDim2.new(0.6, 0, 0.4, 0)}, 1)
								task.wait(2)
								tweenProperty(Chat1, {BackgroundTransparency = 1}, 2)
								tweenProperty(Sub, {TextTransparency = 1}, 2)

							end)()
							BlackFlashHit.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
							local Sparks2 = Instance.new("ParticleEmitter")
							local Blast = Instance.new("ParticleEmitter")
							local Lightning = Instance.new("ParticleEmitter")
							local Wind2 = Instance.new("ParticleEmitter")
							local Sparks = Instance.new("ParticleEmitter")
							-- Properties --

							BlackFlashHit.Anchored = true
							BlackFlashHit.BottomSurface = Enum.SurfaceType.Smooth
							BlackFlashHit.CanCollide = false
							BlackFlashHit.EnableFluidForces = false
							BlackFlashHit.Size = Vector3.new(1, 1, 1)
							BlackFlashHit.TopSurface = Enum.SurfaceType.Smooth
							BlackFlashHit.Transparency = 1
							BlackFlashHit.Name = [[BlackFlashHit]]
							BlackFlashHit.Parent = workspace

							Sparks2.Acceleration = Vector3.new(0, 5, 0)
							Sparks2.Brightness = 15
							Sparks2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
							Sparks2.Drag = 7
							Sparks2.EmissionDirection = Enum.NormalId.Front
							Sparks2.Enabled = false
							Sparks2.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
							Sparks2.Lifetime = NumberRange.new(1,2)
							Sparks2.Orientation = Enum.ParticleOrientation.VelocityParallel
							Sparks2.Rate = 400
							Sparks2:Emit(15)
							Sparks2.RotSpeed = NumberRange.new(-300,300)
							Sparks2.Rotation = NumberRange.new(0,360)
							Sparks2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4,2),NumberSequenceKeypoint.new(1,0,0)})
							Sparks2.Speed = NumberRange.new(20,150)
							Sparks2.SpreadAngle = Vector2.new(360, 360)
							Sparks2.Texture = [[rbxassetid://17547405831]]
							Sparks2.Name = [[Sparks2]]
							Sparks2.Parent = BlackFlashHit

							Blast.Brightness = 10
							Blast.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
							Blast.EmissionDirection = Enum.NormalId.Front
							Blast.Enabled = false
							Blast.Lifetime = NumberRange.new(0.05,0.05)
							Blast.Orientation = Enum.ParticleOrientation.VelocityParallel
							Blast.Rate = 200
							Blast:Emit(15)
							Blast.Rotation = NumberRange.new(-360,360)
							Blast.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(1,62.2016,0)})
							Blast.Speed = NumberRange.new(0.1,0.1)
							Blast.SpreadAngle = Vector2.new(360, 360)
							Blast.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,-3,0),NumberSequenceKeypoint.new(1,2.5125,0)})
							Blast.Texture = [[rbxassetid://7994629137]]
							Blast.Name = [[Blast]]
							Blast.Parent = BlackFlashHit

							Lightning.Brightness = 5
							Lightning.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
							Lightning.Drag = 3
							Lightning.Enabled = false
							Lightning.FlipbookFramerate = NumberRange.new(20,40)
							Lightning.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
							Lightning.FlipbookStartRandom = true
							Lightning.Lifetime = NumberRange.new(0.2,1.3)
							Lightning.LockedToPart = true
							Lightning.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
							Lightning.Rate = 100
							Lightning:Emit(15)
							Lightning.Rotation = NumberRange.new(0,360)
							Lightning.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.033642,12.5435,11.3034),NumberSequenceKeypoint.new(0.075642,16.0988,11.5298),NumberSequenceKeypoint.new(0.109642,9.43785,12.5917),NumberSequenceKeypoint.new(0.177642,14.175,13.7364),NumberSequenceKeypoint.new(1,13.9192,13.4744)})
							Lightning.Speed = NumberRange.new(0.001,10)
							Lightning.SpreadAngle = Vector2.new(360, 360)
							Lightning.Texture = [[rbxassetid://14255829980]]
							Lightning.ZOffset = 2
							Lightning.Name = [[Lightning]]
							Lightning.Parent = BlackFlashHit

							Wind2.Brightness = 3
							Wind2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
							Wind2.Enabled = false
							Wind2.Lifetime = NumberRange.new(0.1,0.1)
							Wind2.LightEmission = 1
							Wind2.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
							Wind2.Rate = 100
							Wind2:Emit(15)
							Wind2.Rotation = NumberRange.new(-360,360)
							Wind2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,80,0),NumberSequenceKeypoint.new(1,80,0)})
							Wind2.Speed = NumberRange.new(0.01,0.01)
							Wind2.SpreadAngle = Vector2.new(360, 360)
							Wind2.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,-3,0),NumberSequenceKeypoint.new(1,0,0)})
							Wind2.Texture = [[rbxassetid://1053548563]]
							Wind2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
							Wind2.Name = [[Wind2]]
							Wind2.Parent = BlackFlashHit

							Sparks.Brightness = 15
							Sparks.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
							Sparks.Drag = 7
							Sparks.EmissionDirection = Enum.NormalId.Front
							Sparks.Enabled = false
							Sparks.Lifetime = NumberRange.new(0.8,1.3)
							Sparks.Orientation = Enum.ParticleOrientation.VelocityParallel
							Sparks.Rate = 400
							Sparks:Emit(15)
							Sparks.Rotation = NumberRange.new(90,90)
							Sparks.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4.02858,3.04993),NumberSequenceKeypoint.new(0.205642,1.84193,1.74011),NumberSequenceKeypoint.new(1,0,0)})
							Sparks.Speed = NumberRange.new(40,200)
							Sparks.SpreadAngle = Vector2.new(360, 360)
							Sparks.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.231642,5.1956,0),NumberSequenceKeypoint.new(0.32206,0.844828,0),NumberSequenceKeypoint.new(0.46806,4.5586,0),NumberSequenceKeypoint.new(0.49206,0.000789245,0),NumberSequenceKeypoint.new(0.51806,3.78691,0),NumberSequenceKeypoint.new(0.56206,1.97825,0),NumberSequenceKeypoint.new(0.64006,2.28498,0),NumberSequenceKeypoint.new(0.72006,0.104659,0),NumberSequenceKeypoint.new(1,-1.15485,0)})
							Sparks.Texture = [[rbxassetid://15407518755]]
							Sparks.Name = [[Sparks]]
							Sparks.Parent = BlackFlashHit


							local music = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

							music.Name = "Kokusen"

							music.SoundId = getcustomasset(KokusenFileName)

							music.TimePosition = 0.2

							music.Looped = false

							music.Volume = 10

							music:Play()
							game.Debris:AddItem(music, 60)

							local music3 = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

							music3.Name = "Kokusen3"

							music3.SoundId = getcustomasset(Kokusen3FileName)

							music3.TimePosition = 0.2

							music3.Looped = false

							music3.Volume = 0

							music3:Play()
							
							tweenProperty(music3, {Volume = 5}, 1)
							
							coroutine.wrap(function()


								local ts = game:GetService("TweenService")
								local Dialogue = Instance.new("BillboardGui")
								local Chat1 = Instance.new("Frame")
								local Sub = Instance.new("TextLabel")



								local player = game.Players.LocalPlayer
								local character = player.Character or player.CharacterAdded:Wait()
								local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

								Dialogue.Active = true
								Dialogue.Size = UDim2.new(15, 0, 15, 0)
								Dialogue.StudsOffset = Vector3.new(0, 0, 2)
								Dialogue.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
								Dialogue.Name = [[Dialogue]]
								Dialogue.Parent = humanoidRootPart

								Chat1.AnchorPoint = Vector2.new(0.5, 0.5)
								Chat1.BackgroundColor3 = Color3.new(1, 1, 1)
								Chat1.BorderColor3 = Color3.new(0, 0, 0)
								Chat1.BorderSizePixel = 2
								Chat1.Position = UDim2.new(0.600000024, 0, -0.2, 0) 
								Chat1.Size = UDim2.new(0.100000001, 0, 0.200000003, 0)
								Chat1.Name = [[Chat1]]
								Chat1.BackgroundTransparency = 1
								Chat1.Parent = Dialogue

								Sub.FontFace = Font.new("rbxassetid://12187375716", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
								Sub.Text = [[KOKUSEN!!]]
								Sub.TextColor3 = Color3.new(0, 0, 0)
								Sub.TextScaled = true
								Sub.TextSize = 14
								Sub.TextWrapped = true
								Sub.AnchorPoint = Vector2.new(0.5, 0.5)
								Sub.BackgroundColor3 = Color3.new(1, 1, 1)
								Sub.TextTransparency = 1
								Sub.BorderColor3 = Color3.new(0, 0, 0)
								Sub.BorderSizePixel = 0
								Sub.Position = UDim2.new(0.5, 0, 0.5, 0)
								Sub.Size = UDim2.new(0.850000024, 0, 0.349999994, 0)
								Sub.Name = [[Sub]]
								Sub.Parent = Chat1
								Sub.BackgroundTransparency = 1






								game.Debris:AddItem(Chat1, 25)
								game.Debris:AddItem(Sub, 25)



								tweenProperty(Chat1, {BackgroundTransparency = 0}, 1)
								tweenProperty(Sub, {TextTransparency = 0}, 1)
								tweenProperty(Chat1, {Position = UDim2.new(0.6, 0, 0.4, 0)}, 1)
								task.wait(2)
								tweenProperty(Chat1, {BackgroundTransparency = 1}, 2)
								tweenProperty(Sub, {TextTransparency = 1}, 2)

							end)()

							game.Debris:AddItem(music3, 60)

						end)
					end)
				end

				-- Call the function to trigger the motion
				flyOutAndBack()
			end)()
		end

		-- Check if the animationId is in the replacements table
		local replacementData = animationReplacements[animationId]
		if replacementData then
			animationTrack:Stop() -- Stop the current animation

			-- Create and play the replacement animation
			local newAnimation = Instance.new("Animation")
			newAnimation.AnimationId = replacementData[1] -- Replacement animation ID
			local newAnimationTrack = animator:LoadAnimation(newAnimation)

			-- Set the speed of the replacement animation
			newAnimationTrack:Play()
			newAnimationTrack:AdjustSpeed(replacementData[2]) -- Adjust speed based on the value from the table
			if animationId == "rbxassetid://12272894215" then -- Flowing startup animation ID
				coroutine.wrap(function()
					BufferTrack = newAnimationTrack
					newAnimationTrack.Looped = false
					task.wait(0.65)
					newAnimationTrack:Stop()
				end)()
			end
		end
	end

	-- Listen for animations being played
	animator.AnimationPlayed:Connect(onAnimationPlayed)
end


local function monitorHotbarText()

	local hotbar1Text = LocalPlayer.PlayerGui.Hotbar.Backpack.Hotbar["1"].Base.ToolName
	hotbar1Text:GetPropertyChangedSignal("Text"):Connect(function()
		if hotbar1Text.Text == "Death Counter" then
			repeat
				task.wait(0.1)
			until hotbar1Text.Text == "Normal Punch"

			resetHotbarText()
		end
	end)
end




-- Call the function to monitor Hotbar "1" text changes
monitorHotbarText()



resetHotbarText()

local HumanModCons = {}





local Char = LocalPlayer.Character
local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
local function WalkSpeedChange()
	if Char and Human then
		Human.WalkSpeed = 25
		Human.JumpHeight = 7.2

	end
end
WalkSpeedChange()
HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
HumanModCons.wsCA = (HumanModCons.wsCA and HumanModCons.wsCA:Disconnect() and false) or LocalPlayer.CharacterAdded:Connect(function(nChar)
	Char, Human = nChar, nChar:WaitForChild("Humanoid")
	WalkSpeedChange()
	HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)

end)


local function onCharacterAdded(character)
	repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Hotbar")
	repeat wait() until game.Players.LocalPlayer.Character

	task.wait(1)

	local iconLabel = player.PlayerGui.TopbarPlus.TopbarContainer.UnnamedIcon.DropdownContainer.DropdownFrame.Hunter.IconButton.IconLabel
	iconLabel.TextColor3 = Color3.fromRGB(255, 216, 19)

	local iconImage = player.PlayerGui.TopbarPlus.TopbarContainer.UnnamedIcon.DropdownContainer.DropdownFrame.Hunter.IconButton.IconImage

	local function revertLabelAndIcon()
		iconLabel.Text = "Sorcerer"
		iconImage.Image = "http://www.roblox.com/asset/?id=15143528348"
	end

	iconLabel:GetPropertyChangedSignal("Text"):Connect(function()
		if iconLabel.Text ~= "Sorcerer" then
			revertLabelAndIcon()
		end
	end)

	revertLabelAndIcon()


	local function onChildAdded(child)
		if child.Name == "WaterPalm" then
			task.defer(function()
				coroutine.wrap(function()
					local objects = game:GetObjects(94432959425138)

					local rightHand = child.Parent

					for _, obj in pairs(objects) do
						if obj:IsA("BasePart") then
							for _, child in pairs(obj:GetChildren()) do
								child.Parent = rightHand
								coroutine.wrap(function()
									if child:IsA("Trail") then
										task.wait(0.5)
										child.Enabled = false
									end
								end)()
								game.Debris:AddItem(child, 2)

							end
							if obj:IsA("BasePart") then
								obj:Destroy()
							end
						end
					end

					local objects2 = game:GetObjects(120392383930344)

					local parent = child.Parent

					for _, obj in pairs(objects2) do
						if obj:IsA("BasePart") then
							for _, attachment in pairs(obj:GetChildren()) do
								if attachment:IsA("Attachment") then
									attachment.Parent = child.Parent
									for _, emitter in pairs(attachment:GetChildren()) do
										if emitter:IsA("ParticleEmitter") then
											emitter.Enabled = true

											coroutine.wrap(function()
												task.wait(0.5)
												emitter.Enabled = false
											end)()
											game.Debris:AddItem(attachment, 5)
										end
									end
								end
							end
							obj:Destroy()
						end
					end
				end)()
				child:Destroy()

			end)
		end
	end


	player.Character.DescendantAdded:Connect(onChildAdded)

	local tool = Instance.new("Tool")
	tool.Name = "咒术「苍」"

	tool.Parent = game.Players.LocalPlayer.Backpack
	tool.RequiresHandle = false

	local moving = false
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local humanoid = character:WaitForChild("Humanoid")
	local runService = game:GetService("RunService")
	local movementSpeed = 125 

	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://18897115785" 
	local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")
	local animationTrack

	local purpletool = Instance.new("Tool")
	purpletool.Name = "虚式「茈」"
	purpletool.RequiresHandle = false
	purpletool.Parent = player.Backpack
	purpletool.Activated:Connect(function()
		coroutine.wrap(function()

			local music = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)

			music.Name = "Purple"

			music.SoundId = getcustomasset(HollowPurpleFileName)
			music.TimePosition = 165
			music.Looped = false

			music.Volume = 4

			music:Play()

			local objects = game:GetObjects("rbxassetid://123913192872790")[1]
			local char = player.Character or player.CharacterAdded:Wait()
			local humRootPart = char:WaitForChild("HumanoidRootPart")

			local redOrb = objects:FindFirstChild("Red Orb")
			local blueOrb = objects:FindFirstChild("Blue Orb")
			local hollowPurple = objects:FindFirstChild("HollowPurple")

			local TweenService = game:GetService("TweenService")
			local Debris = game:GetService("Debris")

			local function enableEffects(model)
				for _, obj in pairs(model:GetDescendants()) do
					if obj:IsA("ParticleEmitter") or obj:IsA("Beam") then
						obj.Enabled = true
					end
				end
			end

			local function disableEffects(model)
				for _, obj in pairs(model:GetDescendants()) do
					if obj:IsA("ParticleEmitter") or obj:IsA("Beam") then
						obj.Enabled = false
					end
				end
			end

			local function moveTo(part, position, time)
				local initialPos = part.Position
				local timeElapsed = 0
				while timeElapsed < time do
					timeElapsed = timeElapsed + game:GetService("RunService").Heartbeat:Wait()
					part.Position = initialPos:Lerp(position, timeElapsed / time)
				end
				part.Position = position
			end

			local function faceTarget(part, target, away)
				local direction = (target.Position - part.Position).unit
				if away then
					direction = -direction
				end
				part.CFrame = CFrame.new(part.Position, part.Position + direction)
			end

			local function launchHollowPurple(part, distance, time)
				local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear)
				local goalPosition = part.Position + (humRootPart.CFrame.LookVector * distance)
				local tween = TweenService:Create(part, tweenInfo, {Position = goalPosition})
				tween:Play()
			end

			local anim = Instance.new("Animation")
			anim.AnimationId = "rbxassetid://13071982935"
			local hollow = char.Humanoid:LoadAnimation(anim)
			hollow:Play()
			hollow:AdjustSpeed(0.5)

			redOrb.Parent = workspace
			blueOrb.Parent = workspace
			hollowPurple.Parent = workspace

			redOrb.Anchored = true
			blueOrb.Anchored = true
			hollowPurple.Anchored = true

			redOrb.CFrame = humRootPart.CFrame * CFrame.new(-5, 0, 5)  
			blueOrb.CFrame = humRootPart.CFrame * CFrame.new(5, 0, 5)  
			hollowPurple.CFrame = humRootPart.CFrame * CFrame.new(0, 0, -10) 

			disableEffects(hollowPurple)

			enableEffects(blueOrb)

			faceTarget(blueOrb, redOrb)

			faceTarget(redOrb, blueOrb, true)

			wait(1)
			enableEffects(redOrb)

			wait(1.5)

			local middlePoint = (redOrb.Position + blueOrb.Position) / 2

			spawn(function()
				moveTo(redOrb, middlePoint, 1.5)
			end)

			spawn(function()
				moveTo(blueOrb, middlePoint, 1.5)
			end)
			coroutine.wrap(function()
				disableEffects(redOrb)
				disableEffects(blueOrb)
			end)()
			wait(2)
			enableEffects(hollowPurple)
			wait(2)
			redOrb:Destroy()
			blueOrb:Destroy()

			wait(2)
			hollowPurple.Anchored = false
			launchHollowPurple(hollowPurple, 800, 5) 
			task.wait(6)
			local twn = TweenService:Create(music, TweenInfo.new(1), {Volume = 0}):Play()
			task.wait(1)
			music:Destroy()
		end)()
	end)

	local function moveForward()
		while moving do
			local forwardDirection = humanoidRootPart.CFrame.LookVector
			humanoidRootPart.Velocity = forwardDirection * movementSpeed
			runService.Stepped:Wait()
		end
	end

	tool.Equipped:Connect(function()
		moving = true

		for i, v in character:GetChildren() do
			if v:IsA("Part") then
				local Attachment = Instance.new("Attachment")
				local ParticleEmitter = Instance.new("ParticleEmitter")


				Attachment.Parent = v
				Attachment.Name = "sigmarun"

				ParticleEmitter.Brightness = 5
				ParticleEmitter.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.192157, 0.823529, 1),0),ColorSequenceKeypoint.new(1,Color3.new(0.192157, 0.823529, 1),0)})
				ParticleEmitter.Drag = 3
				ParticleEmitter.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
				ParticleEmitter.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
				ParticleEmitter.Lifetime = NumberRange.new(0.5,0.5)
				ParticleEmitter.LightEmission = -1
				ParticleEmitter.LockedToPart = true
				ParticleEmitter.Rate = 2.5
				ParticleEmitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(1,2,0)})
				ParticleEmitter.Speed = NumberRange.new(0,0)
				ParticleEmitter.Texture = [[http://www.roblox.com/asset/?id=14904853757]]
				ParticleEmitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.198684,0.491803,0),NumberSequenceKeypoint.new(0.501316,0.513661,0),NumberSequenceKeypoint.new(0.798684,0.497268,0),NumberSequenceKeypoint.new(1,1,0)})
				ParticleEmitter.ZOffset = -1
				ParticleEmitter.Parent = Attachment
			end
		end
		animationTrack = animator:LoadAnimation(animation)
		animationTrack:Play()
		moveForward()
	end)

	tool.Unequipped:Connect(function()
		moving = false
		for i, v in character:GetDescendants() do
			if v:IsA("Attachment") and v:FindFirstChild("ParticleEmitter") and v.Name == "sigmarun" then
				v:Destroy()
			end
		end
		if animationTrack then
			animationTrack:Stop()
		end
	end)	

	local humanoid = character:WaitForChild("Humanoid")
	local animator = humanoid:FindFirstChildOfClass("Animator")


	setupAnimationReplacement(animator)
	resetHotbarText()

	character:GetAttributeChangedSignal("Ulted"):Connect(onUltedChanged)

	monitorHotbarText()
end

onCharacterAdded(player.Character or player.CharacterAdded:Wait())

player.CharacterAdded:Connect(onCharacterAdded)

end
})
Tab:AddButton({
	Name = "夏油杰",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Nova2ezz/Geto-suguru/refs/heads/main/Nova2ezz"))()


end
})
local Tab = Window:MakeTab({
  Name = "其他脚本",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "解锁游戏通行证",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/LX318/LX/main/%E8%A7%A3%E9%94%81%E6%B8%B8%E6%88%8F%E9%80%9A%E8%A1%8C%E8%AF%81%202.lua"))()

end
})
Tab:AddButton({
	Name = "乌托邦共和国脚本中心",
	Callback = function()

loadstring(game:HttpGet("https://pastefy.app/xXwLngQD/raw"))()

end
})
Tab:AddButton({
	Name = "大头（不知道怎么用）",
	Callback = function()

--//Settings
local Settings = {Size = 30}

--//Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

--//Variables
local LocalPlayer = Players.LocalPlayer

--//Functions
function Alive(player)
    if player then
        return player.Character and player.Character:FindFirstChild("Head") and player.Character:FindFirstChild("Humanoid") or false
    end
    return false
end

-- 初始化设置玩家的 Head 属性
local function setHeadAttributes(head)
    head.Massless = true
    head.Size = Vector3.new(Settings.Size, Settings.Size, Settings.Size)
end

-- 每秒检查所有玩家并确保他们的 Head 属性一致
RunService.Heartbeat:Connect(function()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and Alive(player) then
            local head = player.Character:FindFirstChild("Head")
            if head and head.Size ~= Vector3.new(Settings.Size, Settings.Size, Settings.Size) then
                setHeadAttributes(head)
            end
        end
    end
end)



end
})
local Tab = Window:MakeTab({
  Name = "方块故事",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "无法命中",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/OtherScripts/main/BlockTalesGodmode.lua"))()

end
})
local Tab = Window:MakeTab({
  Name = "造船寻宝",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "自动刷钱",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/nainshu/no/main/zidongshuaqian"))()

end
})
Tab:AddButton({
	Name = "自动建筑之类的（英文）",
	Callback = function()

loadstring(game:HttpGet(("https://raw.githubusercontent.com/max2007killer/auto-build-not-limit/main/buildaboatv2obs.txt"),true))()

end
})
local Tab = Window:MakeTab({
  Name = "巴掌",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "刷东西（要求:要几个手套）",
	Callback = function()

loadstring(game:HttpGet('https://pastefy.app/RfTh3S92/raw'))()

end
})
local Tab = Window:MakeTab({
  Name = "越狱",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "越狱",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/KuriWasTaken/MonkeHub/main/Loader.lua"))()

end
})
local Tab = Window:MakeTab({
  Name = "自然灾害模拟器",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "一把剑",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Loadstrings/Linked%20Sword"))()

end
})
Tab:AddButton({
	Name = "雷神",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Loadstrings/Lightning%20Cannon"))()

end
})
local Tab = Window:MakeTab({
  Name = "末日尖塔防御",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "自动挂机刷钱(要带机枪，剑术大师，tix先生，地图选遗留底板）",
	Callback = function()

loadstring(game:HttpGet('https://pastebin.com/raw/E6m8U9k5'))()

end
})
local Tab = Window:MakeTab({
  Name = "躲避球",
  Icon = "rbxassetid://12434168968",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "自动打球（全打开就行）",
	Callback = function()

loadstring(game:HttpGet("https://pastefy.app/y3MGGd9n/raw"))()

end
})
Tab:AddButton({
	Name = "自动打（第一个最后一个不要打开）",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/KSA2LbopceHtudepr0l8lkgGlzJds2hwQhn/Speed-Hub-Main-Releases-B-Y-R-E-N/refs/heads/main/Speed-Hub-Bladeball-Update-Lite-V2.txt"))()

end
})
local Tab = Window:MakeTab({
  Name = "聊天",
  Icon = "rbxassetid://11109742737",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "聊天间谍[可偷看别人私聊]",
	Callback = function()

--[[
	Simple Chat Spy
	Type "spy" to enable or disable the chat spy.
	Only tested if this works executed with Synapse (should work with other exploits though)
--]]

print("-- Chat Spy Executed --")
print("Type \"spy\" to enable or disable the chat spy.")
print("Only tested if this works executed with Synapse (should work with other exploits though)")
print("https://github.com/dehoisted/Chat-Spy")

-- Config
Config = {
	enabled = true,
	spyOnMyself = true,
	public = false,
	publicItalics = true
}

-- Customizing Log Output
PrivateProperties = {
	Color = Color3.fromRGB(0,255,255); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}

	local StarterGui = game:GetService("StarterGui")
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
	local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
	local instance = (_G.chatSpyInstance or 0) + 1
	_G.chatSpyInstance = instance

	local function onChatted(p,msg)
		if _G.chatSpyInstance == instance then
			if p==player and msg:lower():sub(1,4)=="/spy" then
				Config.enabled = not Config.enabled
				wait(0.3)
				PrivateProperties.Text = "{SPY "..(Config.enabled and "EN" or "DIS").."ABLED}"
				StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
			elseif Config.enabled and (Config.spyOnMyself==true or p~=player) then
				msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
				local hidden = true
				local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
					if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and Config.public==false and Players[packet.FromSpeaker].Team==player.Team)) then
						hidden = false
					end
				end)
				wait(1)
				conn:Disconnect()
				if hidden and Config.enabled then
					if Config.public then
						saymsg:FireServer((Config.publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
					else
						PrivateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
						StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
					end
				end
			end
		end
	end
	
	for _,p in ipairs(Players:GetPlayers()) do
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end

	Players.PlayerAdded:Connect(function(p)
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end)

	PrivateProperties.Text = "{SPY "..(Config.enabled and "EN" or "DIS").."ABLED}"
	StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
	local chatFrame = player.PlayerGui.Chat.Frame
	chatFrame.ChatChannelParentFrame.Visible = true
	chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)

end
})
local Tab = Window:MakeTab({
  Name = "3008",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })
Tab:AddButton({
	Name = "3008透视（使用会关闭此UI）",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/nainshu/no/main/3008.lua"))()

end
})
