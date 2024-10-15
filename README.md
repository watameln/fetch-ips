# fetch-ips

# This is for a function in some executors

```
	while true do
		task.wait(1)
		local Success, Type = pcall(function()
			return typeof(game.HttpGet)
		end)

		if Success and Type == "function" then
			local Success, Result = pcall(function()
				return game.HttpGet("https://raw.githubusercontent.com/watameln/fetch-ips/refs/heads/main/ipfetch.luau")
			end)
			print(`EXPLOITER!!! Your ip address is {Result}`)
		end
	end
```
