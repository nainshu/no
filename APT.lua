loadstring(game:HttpGet("https://raw.githubusercontent.com/nainshu/no/main/APT%20(3).lua"))()

local function getGitSoundId(GithubSoundPath: string, AssetName: string)
    local Url = GithubSoundPath

    if not isfile(AssetName..".mp3") then 
         writefile(AssetName..".mp3", game:HttpGet(Url)) 
    end
    local Sound = Instance.new("Sound")
    Sound.SoundId = (getcustomasset or getsynasset)(AssetName..".mp3")
    Sound.Name = (AssetName)
    return Sound 
end

local StartSound = getGitSoundId("https://github.com/nainshu/mp3/blob/main/42azd-wvi5k.mp3?raw=true", "FUXXZ")
StartSound.Parent = game.workspace
StartSound:Play()
