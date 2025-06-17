Local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/AsynchronousAI/vectorfield/main/init.lua'))()

local Window = Rayfield:CreateWindow({
    Name = "Red Hub (Die of death)",
    Icon = 0,
    LoadingTitle = "Red Hub",
    LoadingSubtitle = "by DexScripts",
    Theme = "Default",
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil,
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = false,
       Invite = "noinvitelink",
       RememberJoins = true
    },
 
    KeySystem = false,
    KeySettings = {
       Title = "Verification needed",
       Subtitle = "Key System",
       Note = "KEY IS death",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = {"death"}
    }
 })

 local Tab = Window:CreateTab("Player", 4483362458) 
 
 local PlayerSection = Tab:CreateSection("Stamina")

 local Button = Tab:CreateButton({
    Name = "Inf Stamina (supports all exec)",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        if character:GetAttribute("MaxStamina") ~= nil then
            character:SetAttribute("MaxStamina", math.huge)
        elseif player:GetAttribute("MaxStamina") ~= nil then
            player:SetAttribute("MaxStamina", math.huge)
        else
            for _, obj in pairs({character, player, character:FindFirstChildOfClass("Humanoid")}) do
                if obj and obj:GetAttributes() then
                    for name, _ in pairs(obj:GetAttributes()) do
                        if name:lower():find("stamina") then
                            obj:SetAttribute(name, math.huge)
                        end
                    end
                end
            end
        end
        
        Rayfield:Notify({
            Title = "Infinite Stamina",
            Content = "MaxStamina has been set to infinite",
            Duration = 3
        })
    end
 })

 local PlayerSection = Tab:CreateSection("Useful Stuff")
 
 local BypassButton = Tab:CreateButton({
    Name = "Bypass Killer Only Walls",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        local killerOnlyFolder = game:GetService("Workspace"):FindFirstChild("GameAssets"):FindFirstChild("Map"):FindFirstChild("Config"):FindFirstChild("KillerOnly")
        
        if killerOnlyFolder then
            for _, part in pairs(killerOnlyFolder:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
            
            Rayfield:Notify({
                Title = "Bypass Activated",
                Content = "You can now walk through killer-only walls",
                Duration = 5.7
            })
        else
            Rayfield:Notify({
                Title = "Error 404",
                Content = "Killer Only folder not found",
                Duration = 3
            })
        end
    end
 })

 local Section = Tab:CreateSection("Speed and Power")
 
 local WalkspeedEnabled = false
 local DefaultWalkSpeed = 16
 
 local WalkspeedSlider = Tab:CreateSlider({
    Name = "Walkspeed",
    Range = {7, 250},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = DefaultWalkSpeed,
    Flag = "WalkspeedSlider",
    Callback = function(Value)
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        if character then
            character:SetAttribute("WalkSpeed", Value)
            WalkspeedEnabled = true
        end
    end,
 })
 
 local JumpPowerEnabled = false
 local DefaultJumpPower = 50
 
 local JumpPowerSection = Tab:CreateSection("Jump Power")
 
 local JumpPowerToggle = Tab:CreateToggle({
    Name = "Enable Jump Power",
    CurrentValue = false,
    Flag = "JumpPowerToggle",
    Callback = function(Value)
        JumpPowerEnabled = Value
        local player = game:GetService("Players").LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        
        if humanoid then
            if Value then
                humanoid.JumpPower = JumpPowerSlider.CurrentValue
            else
                humanoid.JumpPower = DefaultJumpPower
            end
        end
    end,
 })
 
 local JumpPowerSlider = Tab:CreateSlider({
    Name = "Jump Power",
    Range = {50, 300},
    Increment = 5,
    Suffix = "Power",
    CurrentValue = DefaultJumpPower,
    Flag = "JumpPowerSlider",
    Callback = function(Value)
        if JumpPowerEnabled then
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            
            if humanoid then
                humanoid.JumpPower = Value
            end
        end
    end,
 })

 local ESPTab = Window:CreateTab("ESP", 4483362458)
 
 local ESPSection = ESPTab:CreateSection("ESP")

 local ESPEnabled = false
 local ESPFolder = Instance.new("Folder")
 ESPFolder.Name = "ESP"
 ESPFolder.Parent = game.CoreGui
 
 local function CreateESP(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local billboard = Instance.new("BillboardGui")
        billboard.Name = player.Name
        billboard.AlwaysOnTop = true
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.Adornee = player.Character.HumanoidRootPart
        billboard.Parent = ESPFolder
        
        local nameLabel = Instance.new("TextLabel")
        nameLabel.Name = "NameLabel"
        nameLabel.Size = UDim2.new(1, 0, 1, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = player.Name
        nameLabel.TextSize = 18
        nameLabel.Font = Enum.Font.SourceSansBold
        nameLabel.TextStrokeTransparency = 0
        nameLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
        nameLabel.Parent = billboard
        
        local playerRole = "Unknown"
        for _, folder in pairs(game:GetService("Workspace"):GetChildren()) do
            if folder:IsA("Folder") then
                if (folder.Name == "Killer" or folder.Name == "Survivor" or folder.Name == "Ghost") then
                    for _, char in pairs(folder:GetChildren()) do
                        if char.Name == player.Name then
                            playerRole = folder.Name
                            break
                        end
                    end
                end
            end
        end
        
        if playerRole == "Killer" then
            nameLabel.TextColor3 = Color3.new(1, 0, 0)
        elseif playerRole == "Survivor" then
            nameLabel.TextColor3 = Color3.new(0, 1, 0)
        elseif playerRole == "Ghost" then
            nameLabel.TextColor3 = Color3.new(0, 0, 1)
        else
            nameLabel.TextColor3 = Color3.new(1, 1, 1)
        end
    end
 end
 
 local function RemoveESP(player)
    if ESPFolder:FindFirstChild(player.Name) then
        ESPFolder[player.Name]:Destroy()
    end
 end
 
 local function UpdateESP()
    if ESPEnabled then
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
            if player ~= game:GetService("Players").LocalPlayer then
                if not ESPFolder:FindFirstChild(player.Name) then
                    CreateESP(player)
                end
            end
        end
    else
        ESPFolder:ClearAllChildren()
    end
 end
 
 ESPTab:CreateToggle({
    Name = "Chams Toggle",
    CurrentValue = false,
    Flag = "ESPToggle",
    Callback = function(Value)
        ESPEnabled = Value
        UpdateESP()
        
        if Value then
            game:GetService("Players").PlayerAdded:Connect(function(player)
                if ESPEnabled then
                    CreateESP(player)
                end
            end)
            
            game:GetService("Players").PlayerRemoving:Connect(function(player)
                RemoveESP(player)
            end)
        end
    end,
 })
 
 local GameESPSection = ESPTab:CreateSection("Game ESP")
 
 local SurvivorESPEnabled = false
 local SurvivorESPFolder = Instance.new("Folder")
 SurvivorESPFolder.Name = "SurvivorESP"
 SurvivorESPFolder.Parent = game.CoreGui
 
 ESPTab:CreateToggle({
    Name = "Survivor ESP",
    CurrentValue = false,
    Flag = "SurvivorESPToggle",
    Callback = function(Value)
        SurvivorESPEnabled = Value
        
        if Value then
            local teamsFolder = game:GetService("Workspace").GameAssets.Teams
            if teamsFolder and teamsFolder:FindFirstChild("Survivor") then
                for _, player in pairs(teamsFolder.Survivor:GetChildren()) do
                    if player:FindFirstChild("HumanoidRootPart") then
                        local billboard = Instance.new("BillboardGui")
                        billboard.Name = player.Name
                        billboard.AlwaysOnTop = true
                        billboard.Size = UDim2.new(0, 200, 0, 50)
                        billboard.StudsOffset = Vector3.new(0, 3, 0)
                        billboard.Adornee = player.HumanoidRootPart
                        billboard.Parent = SurvivorESPFolder
                        
                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Name = "NameLabel"
                        nameLabel.Size = UDim2.new(1, 0, 1, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name
                        nameLabel.TextSize = 18
                        nameLabel.Font = Enum.Font.SourceSansBold
                        nameLabel.TextStrokeTransparency = 0
                        nameLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                        nameLabel.TextColor3 = Color3.new(0, 1, 0)
                        nameLabel.Parent = billboard
                    end
                end
            end
        else
            SurvivorESPFolder:ClearAllChildren()
        end
    end,
 })
 
 local KillerESPEnabled = false
 local KillerESPFolder = Instance.new("Folder")
 KillerESPFolder.Name = "KillerESP"
 KillerESPFolder.Parent = game.CoreGui
 
 ESPTab:CreateToggle({
    Name = "Killer ESP",
    CurrentValue = false,
    Flag = "KillerESPToggle",
    Callback = function(Value)
        KillerESPEnabled = Value
        
        if Value then
            local teamsFolder = game:GetService("Workspace").GameAssets.Teams
            if teamsFolder and teamsFolder:FindFirstChild("Killer") then
                for _, player in pairs(teamsFolder.Killer:GetChildren()) do
                    if player:FindFirstChild("HumanoidRootPart") then
                        local billboard = Instance.new("BillboardGui")
                        billboard.Name = player.Name
                        billboard.AlwaysOnTop = true
                        billboard.Size = UDim2.new(0, 200, 0, 50)
                        billboard.StudsOffset = Vector3.new(0, 3, 0)
                        billboard.Adornee = player.HumanoidRootPart
                        billboard.Parent = KillerESPFolder
                        
                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Name = "NameLabel"
                        nameLabel.Size = UDim2.new(1, 0, 1, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name
                        nameLabel.TextSize = 18
                        nameLabel.Font = Enum.Font.SourceSansBold
                        nameLabel.TextStrokeTransparency = 0
                        nameLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                        nameLabel.TextColor3 = Color3.new(1, 0, 0)
                        nameLabel.Parent = billboard
                    end
                end
            end
        else
            KillerESPFolder:ClearAllChildren()
        end
    end,
 })
 
 local GhostESPEnabled = false
 local GhostESPFolder = Instance.new("Folder")
 GhostESPFolder.Name = "GhostESP"
 GhostESPFolder.Parent = game.CoreGui
 
 ESPTab:CreateToggle({
    Name = "Ghost ESP",
    CurrentValue = false,
    Flag = "GhostESPToggle",
    Callback = function(Value)
        GhostESPEnabled = Value
        
        if Value then
            local teamsFolder = game:GetService("Workspace").GameAssets.Teams
            if teamsFolder and teamsFolder:FindFirstChild("Ghost") then
                for _, player in pairs(teamsFolder.Ghost:GetChildren()) do
                    if player:FindFirstChild("HumanoidRootPart") then
                        local billboard = Instance.new("BillboardGui")
                        billboard.Name = player.Name
                        billboard.AlwaysOnTop = true
                        billboard.Size = UDim2.new(0, 200, 0, 50)
                        billboard.StudsOffset = Vector3.new(0, 3, 0)
                        billboard.Adornee = player.HumanoidRootPart
                        billboard.Parent = GhostESPFolder
                        
                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Name = "NameLabel"
                        nameLabel.Size = UDim2.new(1, 0, 1, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = player.Name
                        nameLabel.TextSize = 18
                        nameLabel.Font = Enum.Font.SourceSansBold
                        nameLabel.TextStrokeTransparency = 0
                        nameLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                        nameLabel.TextColor3 = Color3.new(0, 0, 1)
                        nameLabel.Parent = billboard
                    end
                end
            end
        else
            GhostESPFolder:ClearAllChildren()
        end
    end,
 })

local OtherTab = Window:CreateTab("Other", 4483362458)

local OtherSection = OtherTab:CreateSection("other stuff")

local Button = OtherTab:CreateButton({
    Name = "Load Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
})

local Button = OtherTab:CreateButton({
    Name = "Load Nameless Admin",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Nameless-Admin-35212"))()
    end,
})

local Button = OtherTab:CreateButton({
    Name = "Load Octo Spy",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Octo-Spy/refs/heads/main/Main.lua"))()
    end,
})

local Button = OtherTab:CreateButton({
    Name = "Unload Rayfield",
    Callback = function()
        Rayfield:Destroy()
    end,
})



 local OtherSection = OtherTab:CreateSection("cool stuff")

local Button = OtherTab:CreateButton({
    Name = "Suicide",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.Health = 0
        end
    end,
})

local Button = OtherTab:CreateButton({
    Name = "Anti-AFK",
    Callback = function()
        local VirtualUser = game:GetService("VirtualUser")
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local connection
        
        connection = game:GetService("Players").LocalPlayer.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end)
        
        Rayfield:Notify({
            Title = "Anti-AFK",
            Content = "Anti-AFK has been enabled",
            Duration = 3,
        })
    end,
})

local Button = OtherTab:CreateButton({
    Name = "FPS Booster",
    Callback = function()
        local lighting = game:GetService("Lighting")
        local terrain = workspace:FindFirstChildOfClass("Terrain")
        
        lighting.GlobalShadows = false
        lighting.FogEnd = 9e9
        
        if terrain then
            terrain.WaterWaveSize = 0
            terrain.WaterWaveSpeed = 0
            terrain.WaterReflectance = 0
            terrain.WaterTransparency = 0
        end
        
        for _, v in pairs(game:GetDescendants()) do
            if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 0
                v.BlastRadius = 0
            end
        end
        
        Rayfield:Notify({
            Title = "FPS Booster",
            Content = "FPS Boost applied successfully",
            Duration = 3,
        })
    end,
})

local Button = OtherTab:CreateButton({
    Name = "Server Browser",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        local HttpService = game:GetService("HttpService")
        local Players = game:GetService("Players")
        
        local serverBrowserGui = Instance.new("ScreenGui")
        serverBrowserGui.Name = "ServerBrowserGui"
        serverBrowserGui.Parent = game.CoreGui
        
        local mainFrame = Instance.new("Frame")
        mainFrame.Name = "MainFrame"
        mainFrame.Size = UDim2.new(0, 400, 0, 300)
        mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
        mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        mainFrame.BorderSizePixel = 0
        mainFrame.Active = true
        mainFrame.Draggable = true
        mainFrame.Parent = serverBrowserGui
        
        local titleBar = Instance.new("Frame")
        titleBar.Name = "TitleBar"
        titleBar.Size = UDim2.new(1, 0, 0, 30)
        titleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        titleBar.BorderSizePixel = 0
        titleBar.Parent = mainFrame
        
        local titleText = Instance.new("TextLabel")
        titleText.Name = "TitleText"
        titleText.Size = UDim2.new(1, -30, 1, 0)
        titleText.Position = UDim2.new(0, 10, 0, 0)
        titleText.BackgroundTransparency = 1
        titleText.Text = "Server Browser"
        titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
        titleText.TextSize = 16
        titleText.Font = Enum.Font.SourceSansBold
        titleText.TextXAlignment = Enum.TextXAlignment.Left
        titleText.Parent = titleBar
        
        local closeButton = Instance.new("TextButton")
        closeButton.Name = "CloseButton"
        closeButton.Size = UDim2.new(0, 20, 0, 20)
        closeButton.Position = UDim2.new(1, -25, 0, 5)
        closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        closeButton.Text = "X"
        closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        closeButton.Font = Enum.Font.SourceSansBold
        closeButton.TextSize = 14
        closeButton.Parent = titleBar
        
        local serverList = Instance.new("ScrollingFrame")
        serverList.Name = "ServerList"
        serverList.Size = UDim2.new(1, -20, 1, -80)
        serverList.Position = UDim2.new(0, 10, 0, 40)
        serverList.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        serverList.BorderSizePixel = 0
        serverList.ScrollBarThickness = 6
        serverList.CanvasSize = UDim2.new(0, 0, 0, 0)
        serverList.Parent = mainFrame
        
        local refreshButton = Instance.new("TextButton")
        refreshButton.Name = "RefreshButton"
        refreshButton.Size = UDim2.new(0, 100, 0, 30)
        refreshButton.Position = UDim2.new(0, 10, 1, -35)
        refreshButton.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
        refreshButton.Text = "Refresh"
        refreshButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        refreshButton.Font = Enum.Font.SourceSansBold
        refreshButton.TextSize = 14
        refreshButton.Parent = mainFrame
        
        local statusLabel = Instance.new("TextLabel")
        statusLabel.Name = "StatusLabel"
        statusLabel.Size = UDim2.new(0, 280, 0, 30)
        statusLabel.Position = UDim2.new(0, 120, 1, -35)
        statusLabel.BackgroundTransparency = 1
        statusLabel.Text = "Ready"
        statusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
        statusLabel.TextSize = 14
        statusLabel.Font = Enum.Font.SourceSans
        statusLabel.TextXAlignment = Enum.TextXAlignment.Left
        statusLabel.Parent = mainFrame
        
        local UIListLayout = Instance.new("UIListLayout")
        UIListLayout.Parent = serverList
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 5)
        
        local function createServerButton(serverInfo, index)
            local serverButton = Instance.new("Frame")
            serverButton.Name = "ServerButton_" .. index
            serverButton.Size = UDim2.new(1, -10, 0, 50)
            serverButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            serverButton.BorderSizePixel = 0
            
            local playerCount = Instance.new("TextLabel")
            playerCount.Name = "PlayerCount"
            playerCount.Size = UDim2.new(0, 80, 1, 0)
            playerCount.BackgroundTransparency = 1
            playerCount.Text = serverInfo.playing .. "/" .. serverInfo.maxPlayers
            playerCount.TextColor3 = Color3.fromRGB(255, 255, 255)
            playerCount.TextSize = 14
            playerCount.Font = Enum.Font.SourceSans
            playerCount.Parent = serverButton
            
            local pingLabel = Instance.new("TextLabel")
            pingLabel.Name = "PingLabel"
            pingLabel.Size = UDim2.new(0, 80, 0, 20)
            pingLabel.Position = UDim2.new(0, 90, 0, 5)
            pingLabel.BackgroundTransparency = 1
            pingLabel.Text = "Ping: " .. (serverInfo.ping or "N/A")
            pingLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
            pingLabel.TextSize = 12
            pingLabel.Font = Enum.Font.SourceSans
            pingLabel.TextXAlignment = Enum.TextXAlignment.Left
            pingLabel.Parent = serverButton
            
            local idLabel = Instance.new("TextLabel")
            idLabel.Name = "IdLabel"
            idLabel.Size = UDim2.new(0, 200, 0, 20)
            idLabel.Position = UDim2.new(0, 90, 0, 25)
            idLabel.BackgroundTransparency = 1
            idLabel.Text = "ID: " .. serverInfo.id
            idLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
            idLabel.TextSize = 12
            idLabel.Font = Enum.Font.SourceSans
            idLabel.TextXAlignment = Enum.TextXAlignment.Left
            idLabel.Parent = serverButton
            
            local joinButton = Instance.new("TextButton")
            joinButton.Name = "JoinButton"
            joinButton.Size = UDim2.new(0, 60, 0, 25)
            joinButton.Position = UDim2.new(1, -70, 0.5, -12.5)
            joinButton.BackgroundColor3 = Color3.fromRGB(70, 150, 70)
            joinButton.Text = "Join"
            joinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            joinButton.Font = Enum.Font.SourceSansBold
            joinButton.TextSize = 14
            joinButton.Parent = serverButton
            
            joinButton.MouseButton1Click:Connect(function()
                statusLabel.Text = "Joining server..."
                TeleportService:TeleportToPlaceInstance(game.PlaceId, serverInfo.id)
            end)
            
            return serverButton
        end
        
        local function fetchServers()
            statusLabel.Text = "Fetching servers..."
            
            for _, child in pairs(serverList:GetChildren()) do
                if child:IsA("Frame") then
                    child:Destroy()
                end
            end
            
            local servers = {}
            local endpoint = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
            
            local success, result = pcall(function()
                return HttpService:JSONDecode(game:HttpGet(endpoint))
            end)
            
            if success and result and result.data then
                for i, server in ipairs(result.data) do
                    local serverButton = createServerButton({
                        id = server.id,
                        playing = server.playing,
                        maxPlayers = server.maxPlayers,
                        ping = server.ping
                    }, i)
                    serverButton.Parent = serverList
                end
                
                serverList.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)
                statusLabel.Text = #result.data .. " servers found"
            else
                statusLabel.Text = "Failed to fetch servers"
            end
        end
        
        refreshButton.MouseButton1Click:Connect(fetchServers)
        closeButton.MouseButton1Click:Connect(function()
            serverBrowserGui:Destroy()
        end)
        
        fetchServers()
    end,
})

local VisualTab = Window:CreateTab("Visual", 4483362458)

local VisualSection = VisualTab:CreateSection("Visual Enhancements")

local FOVSlider = VisualTab:CreateSlider({
    Name = "FOV Changer",
    Range = {30, 120},
    Increment = 1,
    Suffix = "°",
    CurrentValue = workspace.CurrentCamera.FieldOfView,
    Flag = "FOVSlider",
    Callback = function(Value)
        workspace.CurrentCamera.FieldOfView = Value
    end,
})

local BrightnessSlider = VisualTab:CreateSlider({
    Name = "Brightness",
    Range = {0, 10},
    Increment = 0.1,
    Suffix = "x",
    CurrentValue = game:GetService("Lighting").Brightness,
    Flag = "BrightnessSlider",
    Callback = function(Value)
        game:GetService("Lighting").Brightness = Value
    end,
})

local TimeSlider = VisualTab:CreateSlider({
    Name = "Time of Day",
    Range = {0, 24},
    Increment = 0.1,
    Suffix = "h",
    CurrentValue = game:GetService("Lighting").ClockTime,
    Flag = "TimeSlider",
    Callback = function(Value)
        game:GetService("Lighting").ClockTime = Value
    end,
})

local CombatTab = Window:CreateTab("Combat", 4483362458)

local CombatSection = CombatTab:CreateSection("Combat Features")

local AutoClickToggle = CombatTab:CreateToggle({
    Name = "Auto Click/Attack",
    CurrentValue = false,
    Flag = "AutoClickToggle",
    Callback = function(Value)
        local connection
        if Value then
            connection = game:GetService("RunService").Heartbeat:Connect(function()
                local virtualUser = game:GetService("VirtualUser")
                virtualUser:CaptureController()
                virtualUser:ClickButton1(Vector2.new())
            end)
            
            getgenv().AutoClickConnection = connection
        else
            if getgenv().AutoClickConnection then
                getgenv().AutoClickConnection:Disconnect()
                getgenv().AutoClickConnection = nil
            end
        end
    end,
})

local HitboxSlider = CombatTab:CreateSlider({
    Name = "Hitbox Expander",
    Range = {1, 20},
    Increment = 0.5,
    Suffix = "x",
    CurrentValue = 1,
    Flag = "HitboxSlider",
    Callback = function(Value)
        local players = game:GetService("Players")
        local localPlayer = players.LocalPlayer
        
        for _, player in pairs(players:GetPlayers()) do
            if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                player.Character.HumanoidRootPart.Size = Vector3.new(Value, Value, Value)
                player.Character.HumanoidRootPart.Transparency = 0.5
                
                if player.Character:FindFirstChild("Humanoid") then
                    player.Character.Humanoid.PlatformStand = false
                    player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                end
            end
        end
        
        players.PlayerAdded:Connect(function(player)
            player.CharacterAdded:Connect(function(character)
                if player ~= localPlayer then
                    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
                    humanoidRootPart.Size = Vector3.new(Value, Value, Value)
                    humanoidRootPart.Transparency = 0.5
                    
                    local humanoid = character:WaitForChild("Humanoid")
                    humanoid.PlatformStand = false
                    humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                end
            end)
        end)
        
        local npcs = workspace:GetDescendants()
        for _, npc in pairs(npcs) do
            if npc:IsA("Model") and npc:FindFirstChild("Humanoid") and npc:FindFirstChild("HumanoidRootPart") then
                if not players:GetPlayerFromCharacter(npc) then
                    npc.HumanoidRootPart.Size = Vector3.new(Value, Value, Value)
                    npc.HumanoidRootPart.Transparency = 0.5
                    npc.Humanoid.PlatformStand = false
                    npc.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                end
            end
        end
    end,
})

local FPSCounter = Instance.new("TextLabel")
FPSCounter.Name = "FPSCounter"
FPSCounter.Size = UDim2.new(0, 150, 0, 25)
FPSCounter.Position = UDim2.new(0, 10, 0, 10)
FPSCounter.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
FPSCounter.BackgroundTransparency = 0.5
FPSCounter.BorderSizePixel = 0
FPSCounter.Text = "FPS: Calculating..."
FPSCounter.TextColor3 = Color3.fromRGB(255, 255, 255)
FPSCounter.TextSize = 14
FPSCounter.Font = Enum.Font.SourceSansBold
FPSCounter.Parent = game.CoreGui

local RunService = game:GetService("RunService")
local frames = 0
local timeElapsed = 0
local fpsConnection = RunService.RenderStepped:Connect(function(deltaTime)
    frames = frames + 1
    timeElapsed = timeElapsed + deltaTime
    
    if timeElapsed >= 1 then
        FPSCounter.Text = "FPS: " .. math.floor(frames / timeElapsed)
        frames = 0
        timeElapsed = 0
    end
end)