local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame2 = Instance.new("Frame")
local DeathsCount = Instance.new("TextLabel")
local DisName = Instance.new("TextLabel")
local KillsCount = Instance.new("TextLabel")
local UserName = Instance.new("TextLabel")
local Profile = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local UICorner2 = Instance.new("UICorner")
local UICorner3 = Instance.new("UICorner")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Frame.Position = UDim2.new(0.8, 0, 0.825, 0)
Frame.Size = UDim2.new(0, 250, 0, 100)
Frame.Draggable = true
Frame.Selectable = true
Frame.Active = true

UICorner.Parent = Frame

Frame2.Parent = Frame
Frame2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame2.Position = UDim2.new(0.0197993163, 0, 0.0452227741, 0)
Frame2.Size = UDim2.new(0, 240, 0, 90)

UICorner2.Parent = Frame2

KillsCount.Parent = Frame2
KillsCount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KillsCount.BackgroundTransparency = 1.000
KillsCount.Position = UDim2.new(0.0411666669, 0, 0.543333352, 0)
KillsCount.Size = UDim2.new(0, 100, 0, 25)
KillsCount.Font = Enum.Font.GothamMedium
KillsCount.Text = ""
KillsCount.TextColor3 = Color3.fromRGB(66, 66, 66) 
KillsCount.TextSize = 14.000
KillsCount.TextXAlignment = Enum.TextXAlignment.Left

UserName.Parent = Frame2
UserName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserName.BackgroundTransparency = 1.000
UserName.Position = UDim2.new(0.233999997, 0, 0.270000011, 0)
UserName.Size = UDim2.new(0, 100, 0, 25)
UserName.Font = Enum.Font.GothamMedium
UserName.Text = ""
UserName.TextColor3 = Color3.fromRGB(66, 66, 66)
UserName.TextSize = 14.000
UserName.TextXAlignment = Enum.TextXAlignment.Left

DeathsCount.Parent = Frame2
DeathsCount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DeathsCount.BackgroundTransparency = 1.000
DeathsCount.Position = UDim2.new(0.0411666669, 0, 0.712222219, 0)
DeathsCount.Size = UDim2.new(0, 100, 0, 25)
DeathsCount.Font = Enum.Font.GothamMedium
DeathsCount.Text = ""
DeathsCount.TextColor3 = Color3.fromRGB(66, 66, 66)
DeathsCount.TextSize = 14.000
DeathsCount.TextXAlignment = Enum.TextXAlignment.Left

DisName.Parent = Frame2
DisName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DisName.BackgroundTransparency = 1.000
DisName.Position = UDim2.new(0.231333345, 0, 0.08, 0)
DisName.Size = UDim2.new(0, 100, 0, 25)
DisName.Text = ""
DisName.Font = Enum.Font.GothamMedium
DisName.TextColor3 = Color3.fromRGB(255, 255, 255)
DisName.TextSize = 20.000
DisName.TextXAlignment = Enum.TextXAlignment.Left

Profile.Parent = Frame2
Profile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Profile.Position = UDim2.new(0.0430000015, 0, 0.100000001, 0)
Profile.Size = UDim2.new(0, 35, 0, 35)
Profile.Visible = false

UICorner3.Parent = Profile

local players = game:GetService("Players")
local mouse = players.LocalPlayer:GetMouse()

mouse.Button1Down:Connect(function()
	local target = mouse.Target:FindFirstAncestorOfClass("Model") 
	if target then
		local targetplayer = players:GetPlayerFromCharacter(target)
		if targetplayer:IsA("Player") then
			local kills = targetplayer.Kills
			KillsCount.Text = "Kills: "..kills.Value
			kills:GetPropertyChangedSignal("Value"):Connect(function()
			    KillsCount.Text = "Kills: "..kills.Value
			end) 

			local deaths = targetplayer.Deaths
			DeathsCount.Text = "Deaths: "..deaths.Value 
			deaths:GetPropertyChangedSignal("Value"):Connect(function()
			    DeathsCount.Text = "Deaths: "..deaths.Value 
			end) 

            DisName.Text = targetplayer.DisplayName
			UserName.Text = "@"..targetplayer.Name
			Profile.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..targetplayer.UserId.."&width=420&height=420&format=png" 
			Profile.Visible = true
		end
	end
end)