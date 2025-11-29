
--[[
_____  ___  _____  _ 
|  ___||__ \|  _  \| |
| |__    / /| | | || |
|  __|  / / | | | || |
| |    / /_ | \_/ /| |
\_|   |____|\_____/ \_|
]]

repeat task.wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
if not game:IsLoaded() then
    game.Loaded:Wait()
end
print("Supported game!")
local creatorId = game.CreatorId
local communityCreators = {
    [7381705] = 'https://raw.githubusercontent.com/xwwwwwwwwwwwwwwwwwwwqd/loader/main/GamesData/Fisch.lua', -- Fisch
    [35102746] = 'https://raw.githubusercontent.com/xwwwwwwwwwwwwwwwwwwwqd/loader/main/GamesData/FishItFree.lua', -- Fish It
    [8818124] = 'https://raw.githubusercontent.com/xwwwwwwwwwwwwwwwwwwwqd/loader/main/GamesData/ViolanceFree.lua', -- Violance District
}

if communityCreators[creatorId] then 
    print("game supported! Loading script...")
    loadstring(game:HttpGet(communityCreators[creatorId]))()
else
    warn("Unsupported game.")
end



