local function loadAndRun(url)
    local success, result = pcall(loadstring, game:HttpGet(url))
    if success then
        result()
    else
        warn("加载并运行脚本失败: ", url)
        warn(result)
    end
end

local urls = {
    "https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua",
    "https://raw.githubusercontent.com/REKMS-cttub/Public-Scripts/refs/heads/main/Dex%20Sorcue.txt",
    "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"
}

for _, url in ipairs(urls) do
    loadAndRun(url)
end
