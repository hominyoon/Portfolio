
xCTSavedDB = {
	["profileKeys"] = {
		["마크투웁 - 아즈샤라"] = "마크투웁 - 아즈샤라",
	},
	["profiles"] = {
		["마크투웁 - 아즈샤라"] = {
			["blizzardFCT"] = {
				["enabled"] = true,
				["font"] = "ElvUI",
				["fontName"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\ElvUI.ttf",
				["CombatDamage"] = true,
				["CombatLogPeriodicSpells"] = true,
			},
			["frames"] = {
				["general"] = {
					["enabledFrame"] = false,
					["enableCustomFade"] = true,
					["font"] = "combat_font",
					["colors"] = {
						["auras"] = {
							["colors"] = {
								["debuffsGained"] = {
									["color"] = {
										1, -- [1]
										0.1, -- [2]
										0.1, -- [3]
									},
								},
								["buffsGained"] = {
									["color"] = {
										1, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["buffsFaded"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["debuffsFaded"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
							},
						},
						["killingBlow"] = {
							["color"] = {
								0.2, -- [1]
								1, -- [2]
								0.2, -- [3]
							},
						},
						["combat"] = {
							["colors"] = {
								["combatLeaving"] = {
									["color"] = {
										0.1, -- [1]
										1, -- [2]
										0.1, -- [3]
									},
								},
								["combatEntering"] = {
									["color"] = {
										1, -- [1]
										0.1, -- [2]
										0.1, -- [3]
									},
								},
							},
						},
						["interrupts"] = {
							["color"] = {
								1, -- [1]
								0.5, -- [2]
								0, -- [3]
							},
						},
						["reputation"] = {
							["colors"] = {
								["reputationGain"] = {
									["color"] = {
										0.1, -- [1]
										0.1, -- [2]
										1, -- [3]
									},
								},
								["reputationLoss"] = {
									["color"] = {
										1, -- [1]
										0.1, -- [2]
										0.1, -- [3]
									},
								},
							},
						},
						["lowResources"] = {
							["colors"] = {
								["lowResourcesMana"] = {
									["color"] = {
										1, -- [1]
										0.1, -- [2]
										0.1, -- [3]
									},
								},
								["lowResourcesHealth"] = {
									["color"] = {
										1, -- [1]
										0.1, -- [2]
										0.1, -- [3]
									},
								},
							},
						},
						["honorGains"] = {
							["color"] = {
								0.1, -- [1]
								0.1, -- [2]
								1, -- [3]
							},
						},
						["dispells"] = {
							["colors"] = {
								["dispellBuffs"] = {
									["color"] = {
										0, -- [1]
										1, -- [2]
										0.5, -- [3]
									},
								},
								["dispellStolen"] = {
									["color"] = {
										0.31, -- [1]
										0.71, -- [2]
										1, -- [3]
									},
								},
								["dispellDebuffs"] = {
									["color"] = {
										1, -- [1]
										0, -- [2]
										0.5, -- [3]
									},
								},
							},
						},
					},
					["fontOutline"] = "1NONE",
				},
				["power"] = {
					["enabledFrame"] = false,
					["enableCustomFade"] = true,
					["fontOutline"] = "1NONE",
					["font"] = "combat_font",
				},
				["healing"] = {
					["fontOutline"] = "1NONE",
					["enableCustomFade"] = true,
					["Y"] = 191,
					["X"] = -360,
					["colors"] = {
						["healingTakenCritical"] = {
							["color"] = {
								0.1, -- [1]
								1, -- [2]
								0.1, -- [3]
							},
						},
						["healingTaken"] = {
							["color"] = {
								0.1, -- [1]
								0.75, -- [2]
								0.1, -- [3]
							},
						},
						["healingTakenPeriodic"] = {
							["color"] = {
								0.1, -- [1]
								0.5, -- [2]
								0.1, -- [3]
							},
						},
						["shieldTaken"] = {
							["color"] = {
								0.6, -- [1]
								0.65, -- [2]
								1, -- [3]
							},
						},
						["healingTakenPeriodicCritical"] = {
							["color"] = {
								0.1, -- [1]
								0.5, -- [2]
								0.1, -- [3]
							},
						},
					},
					["font"] = "combat_font",
					["enabledFrame"] = false,
				},
				["outgoing"] = {
					["enabledFrame"] = false,
					["enableCustomFade"] = true,
					["fontOutline"] = "1NONE",
					["Y"] = 104,
					["X"] = 476,
					["colors"] = {
						["genericDamage"] = {
							["color"] = {
								1, -- [1]
								0.82, -- [2]
								0, -- [3]
							},
						},
						["healingSpells"] = {
							["colors"] = {
								["healingOut"] = {
									["color"] = {
										0.1, -- [1]
										0.75, -- [2]
										0.1, -- [3]
									},
								},
								["shieldOut"] = {
									["color"] = {
										0.6, -- [1]
										0.65, -- [2]
										1, -- [3]
									},
								},
								["healingOutPeriodic"] = {
									["color"] = {
										0.1, -- [1]
										0.5, -- [2]
										0.1, -- [3]
									},
								},
							},
						},
						["spellSchools"] = {
							["colors"] = {
								["SpellSchool_Nature"] = {
									["color"] = {
										0.3, -- [1]
										1, -- [2]
										0.3, -- [3]
									},
								},
								["SpellSchool_Arcane"] = {
									["color"] = {
										1, -- [1]
										0.5, -- [2]
										1, -- [3]
									},
								},
								["SpellSchool_Frost"] = {
									["color"] = {
										0.5, -- [1]
										1, -- [2]
										1, -- [3]
									},
								},
								["SpellSchool_Physical"] = {
									["color"] = {
										1, -- [1]
										1, -- [2]
										0, -- [3]
									},
								},
								["SpellSchool_Shadow"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										1, -- [3]
									},
								},
								["SpellSchool_Holy"] = {
									["color"] = {
										1, -- [1]
										0.9, -- [2]
										0.5, -- [3]
									},
								},
								["SpellSchool_Fire"] = {
									["color"] = {
										1, -- [1]
										0.5, -- [2]
										0, -- [3]
									},
								},
							},
						},
						["misstypesOut"] = {
							["color"] = {
								0.5, -- [1]
								0.5, -- [2]
								0.5, -- [3]
							},
						},
					},
					["font"] = "combat_font",
				},
				["critical"] = {
					["fontOutline"] = "1NONE",
					["enableCustomFade"] = true,
					["Y"] = 199,
					["X"] = 255,
					["colors"] = {
						["genericDamageCritical"] = {
							["color"] = {
								1, -- [1]
								1, -- [2]
								0, -- [3]
							},
						},
						["healingSpells"] = {
							["colors"] = {
								["healingOutCritical"] = {
									["color"] = {
										0.1, -- [1]
										1, -- [2]
										0.1, -- [3]
									},
								},
							},
						},
					},
					["enabledFrame"] = false,
					["font"] = "combat_font",
				},
				["procs"] = {
					["fontOutline"] = "1NONE",
					["enableCustomFade"] = true,
					["Y"] = -4,
					["X"] = -313,
					["colors"] = {
						["spellReactive"] = {
							["color"] = {
								1, -- [1]
								0.82, -- [2]
								0, -- [3]
							},
						},
						["spellProc"] = {
							["color"] = {
								1, -- [1]
								0.82, -- [2]
								0, -- [3]
							},
						},
					},
					["enabledFrame"] = false,
					["font"] = "combat_font",
				},
				["loot"] = {
					["fontOutline"] = "1NONE",
					["enabledFrame"] = false,
					["enableCustomFade"] = true,
					["font"] = "combat_font",
				},
				["class"] = {
					["Y"] = -180,
					["font"] = "combat_font",
					["colors"] = {
						["comboPoints"] = {
							["color"] = {
								1, -- [1]
								0.82, -- [2]
								0, -- [3]
							},
						},
						["comboPointsMax"] = {
							["color"] = {
								0, -- [1]
								0.82, -- [2]
								1, -- [3]
							},
						},
					},
					["enabledFrame"] = false,
					["X"] = -130,
					["fontOutline"] = "1NONE",
				},
				["damage"] = {
					["enabledFrame"] = false,
					["font"] = "combat_font",
					["enableCustomFade"] = true,
					["Y"] = -2,
					["X"] = -524,
					["colors"] = {
						["missTypesTaken"] = {
							["colors"] = {
								["missTypeBlock"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeMiss"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeImmune"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeDodge"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeParry"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeResist"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeEvade"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeAbsorb"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeReflect"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
								["missTypeDeflect"] = {
									["color"] = {
										0.5, -- [1]
										0.5, -- [2]
										0.5, -- [3]
									},
								},
							},
						},
						["damageTakenCritical"] = {
							["color"] = {
								1, -- [1]
								0.1, -- [2]
								0.1, -- [3]
							},
						},
						["spellDamageTaken"] = {
							["color"] = {
								0.75, -- [1]
								0.3, -- [2]
								0.85, -- [3]
							},
						},
						["damageTaken"] = {
							["color"] = {
								0.75, -- [1]
								0.1, -- [2]
								0.1, -- [3]
							},
						},
						["spellDamageTakenCritical"] = {
							["color"] = {
								0.75, -- [1]
								0.3, -- [2]
								0.85, -- [3]
							},
						},
					},
					["fontOutline"] = "1NONE",
				},
			},
			["dbVersion"] = "4.0.0 - BETA 7",
			["frameSettings"] = {
				["showGrid"] = false,
				["showPositions"] = false,
			},
			["spells"] = {
				["merge"] = {
					[108447] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[146137] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "ITEM",
						["desc"] = "Physical Damage (Melee)",
					},
					[146177] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 5,
						["class"] = "ITEM",
						["desc"] = "Holy Healing (Priest, Paladin)",
					},
					[146067] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 5,
						["class"] = "ITEM",
						["desc"] = "Fire, Frost Damage (Mages)",
					},
					[146075] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 5,
						["class"] = "ITEM",
						["desc"] = "Nature Damage (Windwalker Monks)",
					},
					[27243] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[146162] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "ITEM",
						["desc"] = "Physical Damage (Hunters)",
					},
					[980] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[146178] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 5,
						["class"] = "ITEM",
						["desc"] = "Nature Healing (Druid, Monk)",
					},
					[89753] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[86040] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[124915] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "WARLOCK",
					},
					[104318] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[114654] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "WARLOCK",
					},
					[146061] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 5,
						["class"] = "ITEM",
						["desc"] = "Physical Damage (Melee)",
					},
					[146069] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 5,
						["class"] = "ITEM",
						["desc"] = "Physical Damage (Hunters)",
					},
					[689] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[108685] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "WARLOCK",
					},
					[148235] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "ITEM",
						["desc"] = "Nature Healing (Monks, Druids)",
					},
					[47960] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[5857] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[146070] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 5,
						["class"] = "ITEM",
						["desc"] = "Arcane Damage (Mages)",
					},
					[146171] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "ITEM",
						["desc"] = "Nature Damage (Elemental Shamans)",
					},
					[30213] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "WARLOCK",
					},
					[146157] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "ITEM",
						["desc"] = "Holy Damage",
					},
					[30108] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[129476] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[148008] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3.5,
						["class"] = "ITEM",
						["desc"] = "Legedary Cloak for Casters",
					},
					[149276] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3.5,
						["class"] = "ITEM",
						["desc"] = "Legedary Cloak for Hunters",
					},
					[20153] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[63106] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[108686] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[146158] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "ITEM",
						["desc"] = "Arcane Damage (Balance Druids)",
					},
					[146166] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "ITEM",
						["desc"] = "Arcane Damage (Mages)",
					},
					[147891] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3.5,
						["class"] = "ITEM",
						["desc"] = "Legedary Cloak for Melee",
					},
					[148009] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 5,
						["class"] = "ITEM",
						["desc"] = "Legedary Cloak for Healers",
					},
					[104233] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 4,
						["class"] = "WARLOCK",
					},
					[103103] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 4,
						["class"] = "WARLOCK",
					},
					[89653] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[42223] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 4,
						["class"] = "WARLOCK",
					},
					[146159] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "ITEM",
						["desc"] = "Shadow Damage (Priests, Warlocks)",
					},
					[146064] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 5,
						["class"] = "ITEM",
						["desc"] = "Arcane Damage (Balance Druids)",
					},
					[148234] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "ITEM",
						["desc"] = "Holy Healing (Priests, Paladins)",
					},
					[108366] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[146065] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 5,
						["class"] = "ITEM",
						["desc"] = "Shadow Damage (Priests, Warlocks)",
					},
					[348] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[172] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[108371] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 3,
						["class"] = "WARLOCK",
					},
					[146160] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 0.5,
						["class"] = "ITEM",
						["desc"] = "Fire, Frost Damage (Mages)",
					},
					[146071] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 5,
						["class"] = "ITEM",
						["desc"] = "Nature Damage (Elemental Shamans)",
					},
					[146063] = {
						["enabled"] = true,
						["prep"] = 0,
						["interval"] = 5,
						["class"] = "ITEM",
						["desc"] = "Holy Damage",
					},
				},
				["items"] = {
					["전투 애완동물"] = {
						["기계"] = false,
						["물"] = false,
						["동물"] = false,
						["인간형"] = false,
						["야수"] = false,
						["정령"] = false,
						["용족"] = false,
						["마법"] = false,
						["비행"] = false,
						["언데드"] = false,
					},
					["무기"] = {
						["지팡이류"] = false,
						["한손 도검류"] = false,
						["장창류"] = false,
						["투척 무기류"] = false,
						["기타"] = false,
						["양손 도검류"] = false,
						["양손 둔기류"] = false,
						["총기류"] = false,
						["양손 도끼류"] = false,
						["석궁류"] = false,
						["단검류"] = false,
						["장착 무기류"] = false,
						["한손 둔기류"] = false,
						["활류"] = false,
						["낚싯대"] = false,
						["마법봉류"] = false,
						["한손 도끼류"] = false,
					},
					["소비용품"] = {
						["기타"] = false,
						["음식과 음료"] = false,
						["아이템 강화"] = false,
						["비약"] = false,
						["두루마리"] = false,
						["붕대"] = false,
						["영약"] = false,
						["물약"] = false,
					},
					["퀘스트"] = {
						["퀘스트"] = false,
					},
					["문양"] = {
						["사냥꾼"] = false,
						["주술사"] = false,
						["수도사"] = false,
						["사제"] = false,
						["흑마법사"] = false,
						["드루이드"] = false,
						["마법사"] = false,
						["전사"] = false,
						["성기사"] = false,
						["도적"] = false,
						["죽음의 기사"] = false,
					},
					["기타"] = {
						["탈것"] = false,
						["축제용품"] = false,
						["기타"] = false,
						["애완동물 친구"] = false,
						["재료"] = false,
						["잡동사니"] = false,
					},
					["version"] = 1,
					["직업용품"] = {
						["폭발물"] = false,
						["요리"] = false,
						["약초"] = false,
						["마법부여"] = false,
						["기타"] = false,
						["재료"] = false,
						["광물"] = false,
						["천"] = false,
						["기계 장치"] = false,
						["아이템 마법부여"] = false,
						["원소"] = false,
						["보석세공"] = false,
						["가죽"] = false,
						["부품"] = false,
					},
					["보석"] = {
						["붉은색"] = false,
						["다색"] = false,
						["녹색 (노란+푸른)"] = false,
						["보라색 (붉은+푸른)"] = false,
						["일반"] = false,
						["노란색"] = false,
						["주황색 (노란+붉은)"] = false,
						["얼개"] = false,
						["푸른색"] = false,
						["맞물림톱니"] = false,
					},
					["가방"] = {
						["채광 자루"] = false,
						["낚시상자"] = false,
						["요리 가방"] = false,
						["가죽세공 가방"] = false,
						["약초 가방"] = false,
						["마법부여 가방"] = false,
						["기계공학 가방"] = false,
						["가방"] = false,
						["주문각인 가방"] = false,
						["보석 가방"] = false,
					},
					["제조법"] = {
						["응급치료"] = false,
						["요리"] = false,
						["책"] = false,
						["재봉술"] = false,
						["대장기술"] = false,
						["연금술"] = false,
						["마법부여"] = false,
						["주문각인"] = false,
						["낚시"] = false,
						["보석세공"] = false,
						["기계공학"] = false,
						["가죽세공"] = false,
					},
					["방어구"] = {
						["천"] = false,
						["판금"] = false,
						["장식"] = false,
						["사슬"] = false,
						["방패"] = false,
						["가죽"] = false,
						["기타"] = false,
					},
				},
				["multistrikeLatency"] = 9028,
			},
		},
	},
}
