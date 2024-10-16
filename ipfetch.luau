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
		TextLabel.Text = `Thanks for executing your exploit in our game, Heres your ip address: {Result.ip or "Json Error"}`
		TextLabel.TextScaled = true
		TextLabel..AutoLocalize = false
		return Result.ip or "Json Error"
	end
end
