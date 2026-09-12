return PlaceObj('ModDef', {
	'title', "Deposit Refill Every 10 Sols",
	'description', [[Each new Sol, resource deposits below their max amount are filled back up (Metals, Rare Metals, Water, Concrete, and other deposit types the game tracks). Deposits already full are left alone.

The title says 10 Sols. The current script runs once per Sol.

Source (public, MIT, fork and edit freely):
https://github.com/khunpoom/DepositRefillEvery10Sols

Lua written by Claude Opus for this project.]],
	'short_description', "Restores resource deposits to full every Sol.",
	'image', "Mod/DepositRefillEvery10Sols/mod.png",
	'last_changes', "Added public GitHub source, MIT license, and store description.",
	'id', "DepositRefillEvery10Sols",
	'author', "Poom",
	'version', 5,
	'lua_revision', 350453,
	'saved_with_revision', 396349,
	'code', {
		"Code/Script.lua",
	},
	'saved', 1788155082,
	'code_hash', 6923710590083458251,
	'steam_id', "3717491845",
	'TagGameplay', true,
})
