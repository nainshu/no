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
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("您当前服务器的ID"," "..game.GameId.."")

local Tab = Window:MakeTab({
  Name = "DOORS脚本",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
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
	Name = "A1000大药水",
	Callback = function()

loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\67\104\105\110\97\81\89\47\83\99\114\105\112\116\115\47\77\97\105\110\47\83\116\97\114\74\117\103"))()

end
})
Tab:AddButton({
	Name = "夜视仪",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/ChinaQY/Scripts/Main/NVCS-3000"))()

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
