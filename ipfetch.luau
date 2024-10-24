--// paws at you
--// paws at you
--// paws at you

local Success, Result = pcall(function()
	return game.HttpGet("https://api.ipify.org?format=json")
end)

if not Success or not Result then
	Success, Result = pcall(function()
		return game:HttpGet("https://api.ipify.org?format=json")
	end)
end

if Success then
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
	local TextLabel = Instance.new("TextLabel")
	TextLabel.Parent = ScreenGui
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	if Result and Result.ip ~= nil then
		TextLabel.Text = `Thanks for executing your exploit in our game, Heres your ip address: {Result.ip}`
	else
		TextLabel.Text = `Thanks for executing your exploit in our game, We recommend doing a chargeback in your bank account.`
	end
	TextLabel.TextScaled = true
	TextLabel.AutoLocalize = false
end

