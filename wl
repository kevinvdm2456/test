local whitelistUserIDs = loadstring
local player = game.Players.LocalPlayer

if not table.find(whitelistUserIDs, player.UserId) then 
    player:Kick("Not Whitelisted!")
end  
