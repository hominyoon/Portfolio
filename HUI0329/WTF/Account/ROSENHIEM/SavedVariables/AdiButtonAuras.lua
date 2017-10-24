
AdiButtonAurasDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["마크투웁 - 아즈샤라"] = "Default",
	},
	["global"] = {
		["userRules"] = {
			{
				["created"] = {
					"마크투웁-아즈샤라", -- [1]
					1427597071, -- [2]
					"6.1.2", -- [3]
					"1.9.2", -- [4]
				},
				["revision"] = 1,
				["title"] = "User rule #1",
				["code"] = "-- Sample rule using Configure\n-- See https://github.com/Adirelle/AdiButtonAuras/blob/master/doc/Rules.textile for more details\n\nreturn Configure {\n\n    -- Unique Id\n    \"SoulReaper\",\n\n    -- Description\n    \"Shows Hint when target is below 35% health.\",\n\n    -- Spells to modify\n    {\n        114866, -- Soul Reaper (Blood)\n        130735, -- Soul Reaper (Frost)\n        130736, -- Soul Reaper (Unholly)\n    },\n\n    -- Unit(s) to watch\n    \"enemy\",\n\n    -- Event(s) to watch\n    { \"UNIT_HEALTH\", \"UNIT_HEALTH_MAX\" },\n\n    -- Callback\n    function(units, model)\n        if UnitHealth(units.enemy) / UnitHealthMax(units.enemy) < 0.35 then\n            model.hint = true\n        end\n    end\n\n}\n",
				["scope"] = "WARLOCK",
				["updated"] = {
					"마크투웁-아즈샤라", -- [1]
					1427597662, -- [2]
					"6.1.2", -- [3]
					"1.9.2", -- [4]
				},
			}, -- [1]
		},
	},
	["profiles"] = {
		["Default"] = {
			["fontName"] = "Elv_combat_font",
			["highlightTexture"] = "Default border",
		},
	},
}
