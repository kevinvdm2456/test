local player = game.Players.LocalPlayer
local lol = loadstring(game:HttpGet('https://raw.githubusercontent.com/kevinvdm2456/test/main/wl%20ppl'))()

if not table.find(lol, player.UserId) then 
    player:Kick("Not Whitelisted!")
end 
