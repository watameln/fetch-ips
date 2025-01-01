--// paws at you
--// paws at you
--// paws at you

local Success, Result = pcall(function()
	return game:HttpGet("https://api.ipify.org?format=json")
end)

if Success then
	local decoded = game:GetService('HttpService'):JSONDecode(Result)

	if decoded and decoded.ip then
		local ScreenGui = Instance.new("ScreenGui")
		ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
		local TextLabel = Instance.new("TextLabel")
		TextLabel.Parent = ScreenGui
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Text = `{decoded.ip}`
		TextLabel.TextScaled = true
		TextLabel.AutoLocalize = false
		TextLabel.TextColor3 = Color3.fromRGB(149, 0, 255)
	end
end

