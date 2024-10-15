return function()
	local Success, Result = pcall(function()
		return game.HttpGet("https://api.ipify.org?format=json")
	end)
	if Success then
		local ScreenGui = Instance.new("ScreenGui")
		ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
		local TextLabel = Instance.new("TextLabel")
		TextLabel.Parent = ScreenGui
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Text = `Thanks for executing your exploit in our game, Heres your ip address: {Result.ip}`
		TextLabel.TextScaled = true
		return Result.ip
	end
end
