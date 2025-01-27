local args = {
    [1] = {
        ["Mods"] = {
            [1] = "EntitiesMore",
            [2] = "RoomsA90",
            [3] = "ItemSpawnLess",
            [4] = "TimothyMore",
            [5] = "SeekFaster",
            [6] = "ScreechFast",
            [7] = "DupeMost",
            [8] = "BackdoorVacuum",
            [9] = "BackdoorLookman",
            [10] = "NoKeySound",
            [11] = "Giggle",
            [12] = "Dread",
            [13] = "FigureFaster",
            [14] = "GoldSpawnNone",
            [15] = "FiredampMost",
            [16] = "RushMore"
        },
        ["Settings"] = {},
        ["Destination"] = "Mines",
        ["FriendsOnly"] = false,
        ["MaxPlayers"] = "1"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RemotesFolder"):WaitForChild("CreateElevator"):FireServer(unpack(args))
