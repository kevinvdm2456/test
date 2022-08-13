loadstring(game:HttpGet('https://raw.githubusercontent.com/kevinvdm2456/test/main/wl%20ppl'))()
local player = game.Players.LocalPlayer

if not table.find(whitelistUserIDs, player.UserId) then 
    player:Kick("Not Whitelisted!")
end  
