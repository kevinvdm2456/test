local player = game.Players.LocalPlayer
local whitelistUserIDs = {id, id}

if not table.find(whitelistUserIDs, player.UserId) then 
    player:Kick("Not Whitelisted!")
end 
