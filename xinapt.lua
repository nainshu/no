-- 加载WindUI库
local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()
-- 创建一个窗口
local Window = WindUI:CreateWindow({
    Title = "APT|新版",
    Icon = "door-open",
    Author = "小猫土豆",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(480, 360),
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 200,
    HasOutline = false
})
-- 创建按钮选项卡
local CodeTab = Window:Tab({ Title = "旧版APT", Icon = "code" })
local ButtonTab = Window:Tab({ Title = "DOORS", Icon = "mouse-pointer-2" })
-- 在按钮选项卡中添加按钮
CodeTab:Button({
    Title = "旧版APT",
    Desc = "旧版本APT",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nainshu/no/main/APT%20(3).lua"))()
    end
})

ButtonTab:Button({
    Title = "引导之光手电",
    Desc = "点击执行引导之光手电相关功能",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Matthew201322/Doors-Scriptee/refs/heads/main/Shakelight.lua"))()
    end
})
ButtonTab:Button({
    Title = "控制物品变大物品",
    Desc = "点击执行控制物品变大的功能",
    Callback = function()
        loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/f0178af2301ca90c09895f10f3e7bd4b/raw/46899ccc3626f3485d85f990012f7ef37ae52e5e/resizerDoorsRemake'))()
    end
})
ButtonTab:Button({
    Title = "MS中文[V3][来源XK][想加插件进群]",
    Desc = "点击执行MS中文[V3]相关功能",
    Callback = function()
        getgenv().Spy="mspaint"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoXuAnZang/XKscript/refs/heads/main/DOORS.txt"))()
    end
})
ButtonTab:Button({
    Title = "生成巨魔脸",
    Desc = "点击生成巨魔脸",
    Callback = function()
        loadstring(game:HttpGet("https://api.hugebonus.xyz/scripts/TrollFaceSpawner.lua"))()
    end
})
ButtonTab:Button({
    Title = "杰夫毛绒玩具",
    Desc = "点击获取杰夫毛绒玩具",
    Callback = function()
        local tool = game:GetObjects("rbxassetid://13069619857")[1]
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
})
ButtonTab:Button({
    Title = "变成杰夫杀手",
    Desc = "点击变成杰夫杀手",
    Callback = function()
        _G.ThirdPerson = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/idkbutiampoggers/JeffTheKillerMorphV2/main/Source.lua"))()
    end
})
ButtonTab:Button({
    Title = "金色手摇",
    Desc = "点击执行金色手摇相关功能",
    Callback = function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/aadyian9000/the-thing/main/GoldenGummyFlashlight.lua"),true))()
    end
})
ButtonTab:Button({
    Title = "召唤肘击王（快跑）",
    Desc = "点击召唤肘击王，注意可能有危险",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/PandemoniumProtected.lua"))()
    end
})
ButtonTab:Button({
    Title = "小恶魔玩具",
    Desc = "点击获取并设置小恶魔玩具",
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
ButtonTab:Button({
    Title = "一只坤哥",
    Desc = "点击执行与一只坤哥相关的功能",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Chicken%20Item.lua"))()
    end
})
ButtonTab:Button({
    Title = "黑洞［不确定支持不支持其他服务器，小心使用］",
    Desc = "点击使用黑洞功能，注意可能有兼容性问题",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Black%20Hole.lua"))()
    end
})
ButtonTab:Button({
    Title = "可爱的无翼鸟",
    Desc = "点击执行可爱的无翼鸟相关功能",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/PFERptU5", true))()
    end
})
ButtonTab:Button({
    Title = "老外的体力值脚本",
    Desc = "点击执行老外的体力值脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nervehammer1/stupidhc/refs/heads/main/JaysHardcore"))() 
    end
})
ButtonTab:Button({
    Title = "夜视仪",
    Desc = "点击启用夜视仪功能",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChinaQY/Scripts/Main/NVCS-3000"))()
    end
})
ButtonTab:Button({
    Title = "引导之光桶",
    Desc = "点击执行引导之光桶相关功能",
    Callback = function()
        loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/04d7dd5e02688624b958b8c2604b924c/raw/9e86b34249f44ed2dd433176e67daaf3db30cde8/MoonBottle'))()
    end
})
ButtonTab:Button({
    Title = "可控制物品［不会用进群］",
    Desc = "点击执行可控制物品功能，不会使用可进群询问",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/F3X.lua"))()
    end
})
ButtonTab:Button({
    Title = "恶作剧之光桶",
    Desc = "点击执行恶作剧之光桶相关功能",
    Callback = function()
        loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/8b05c837bea9effac2554340465b4be1/raw/3f3be0ee72e7f153db39a16a40fa63dce6cde72d/SpiralBottle'))()
    end
})
ButtonTab:Button({
    Title = "大举办",
    Desc = "点击执行大举办相关功能",
    Callback = function()
        -- settings
        local SNAKE_LENGTH = 10
        local SNAKE_SIZE = 1
        local SNAKE_WOBBLINESS = 50

        -- script
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

ButtonTab:Button({
    Title = "seek枪",
    Desc = "点击执行与seek枪相关功能",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/seekgun.lua"))()
    end
})
ButtonTab:Button({
    Title = "紫色手电",
    Desc = "点击执行紫色手电相关功能",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/munciseek/Other-script/main/Purple-flashlight"))()
    end
})
ButtonTab:Button({
    Title = "引导蜡烛",
    Desc = "点击执行引导蜡烛相关功能",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/munciseek/Other-script/main/Guiding-Candle"))()
    end
})
