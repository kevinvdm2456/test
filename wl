local player = game.Players.LocalPlayer
loadstring(game:HttpGet('https://raw.githubusercontent.com/kevinvdm2456/test/main/wl'))()

if not table.find(whitelistUserIDs, player.UserId) then 
    player:Kick("Not Whitelisted!")
end 
