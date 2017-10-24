
PitBull4DB = {
	["namespaces"] = {
		["Highlight"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["LibDualSpec-1.0"] = {
		},
		["RangeFader"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["CastBarLatency"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["PhaseIcon"] = {
		},
		["CombatIcon"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["enabled"] = false,
							["location"] = "edge_bottom_right",
							["position"] = 1.00001,
						},
						["주시대상"] = {
							["location"] = "edge_bottom_right",
							["position"] = 1.00001,
						},
						["대상"] = {
							["position"] = 1.00001,
						},
						["대상의대상"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["소환수"] = {
							["location"] = "edge_bottom_right",
							["position"] = 1.00001,
						},
						["보통"] = {
							["location"] = "edge_bottom_right",
							["position"] = 1.00001,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["enabled"] = false,
							["position"] = 1.00001,
							["location"] = "edge_bottom_right",
						},
						["주시대상"] = {
							["position"] = 1.00001,
							["location"] = "edge_bottom_right",
						},
						["대상"] = {
							["position"] = 1.00001,
						},
						["대상의대상"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["소환수"] = {
							["position"] = 1.00001,
							["location"] = "edge_bottom_right",
						},
						["보통"] = {
							["position"] = 1.00001,
							["location"] = "edge_bottom_right",
						},
					},
				},
			},
		},
		["RoleIcon"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["LuaTexts"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["elements"] = {
								["Lua:생명력"] = {
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s || %s%%\",HP(unit),Percent(cur,max)",
									["location"] = "right",
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_HEALTH"] = true,
									},
									["attach_to"] = "HealthBar",
									["size"] = 0.85,
								},
								["Lua:시전"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["attach_to"] = "CastBar",
									["size"] = 0.75,
								},
								["Lua:직업"] = {
									["exists"] = true,
									["code"] = "if UnitIsPlayer(unit) then\n  local cr,cg,cb = ClassColor(unit)\n  return \"|cff%02x%02x%02x%s|r\",cr,cg,cb,Class(unit)\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["size"] = 0.75,
								},
								["Lua:이름"] = {
									["location"] = "out_top_left",
									["exists"] = true,
									["events"] = {
										["UNIT_LEVEL"] = true,
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["code"] = "local r,g,b = ClassColor(unit)\nreturn '%s |cff%02x%02x%02x%s|r %s%s%s',Level(unit),r,g,b,Name(unit),Angle(AFK(unit) or DND(unit))",
								},
								["Lua:마력"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["events"] = {
										["UNIT_MAXENERGY"] = true,
										["UNIT_MANA"] = true,
										["UNIT_RAGE"] = true,
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_MAXFOCUS"] = true,
										["UNIT_FOCUS"] = true,
										["UNIT_MAXMANA"] = true,
										["UNIT_ENERGY"] = true,
										["UNIT_RUNIC_POWER"] = true,
										["UNIT_MAXRAGE"] = true,
										["UNIT_MAXRUNIC_POWER"] = true,
									},
									["attach_to"] = "PowerBar",
									["size"] = 0.75,
								},
							},
							["first"] = false,
						},
						["주시대상"] = {
							["elements"] = {
								["Lua:생명력"] = {
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s || %s%%\",HP(unit),Percent(cur,max)",
									["location"] = "right",
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["attach_to"] = "HealthBar",
									["size"] = 0.85,
								},
								["Lua:시전"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["attach_to"] = "CastBar",
									["size"] = 0.85,
								},
								["Lua:직업"] = {
									["exists"] = true,
									["code"] = "if UnitIsPlayer(unit) then\n  local cr,cg,cb = ClassColor(unit)\n  return \"|cff%02x%02x%02x%s|r\",cr,cg,cb,Class(unit)\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["size"] = 0.8,
								},
								["Lua:이름"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_LEVEL"] = true,
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["position"] = 1.00001,
									["location"] = "top",
									["code"] = "local r,g,b = ClassColor(unit)\nreturn '%s |cff%02x%02x%02x%s|r %s%s%s',Level(unit),r,g,b,Name(unit),Angle(AFK(unit) or DND(unit))",
									["attach_to"] = "Portrait",
									["size"] = 0.95,
								},
								["Lua:마력"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["events"] = {
										["UNIT_MAXENERGY"] = true,
										["UNIT_MANA"] = true,
										["UNIT_RAGE"] = true,
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_MAXFOCUS"] = true,
										["UNIT_FOCUS"] = true,
										["UNIT_MAXMANA"] = true,
										["UNIT_ENERGY"] = true,
										["UNIT_RUNIC_POWER"] = true,
										["UNIT_MAXRAGE"] = true,
										["UNIT_MAXRUNIC_POWER"] = true,
									},
									["attach_to"] = "PowerBar",
									["size"] = 0.75,
								},
							},
							["first"] = false,
						},
						["대상"] = {
							["elements"] = {
								["Lua:생명력"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_HEALTH"] = true,
									},
									["position"] = 1.00001,
									["location"] = "right",
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nreturn \"%s/%s\",HP(unit),MaxHP(unit)",
									["attach_to"] = "HealthBar",
									["size"] = 0.85,
								},
								["Lua:백분율"] = {
									["position"] = 1.00001,
									["font"] = "데미지 글꼴",
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_HEALTH"] = true,
									},
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nreturn \"%s%%\",Percent(HP(unit),MaxHP(unit))",
									["location"] = "bottom_left",
									["exists"] = true,
									["attach_to"] = "Portrait",
									["size"] = 0.85,
								},
								["Lua:이름"] = {
									["exists"] = true,
									["code"] = "local r,g,b = ClassColor(unit)\nreturn '%s |cff%02x%02x%02x%s|r %s%s%s',Level(unit),r,g,b,Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "top",
									["events"] = {
										["UNIT_LEVEL"] = true,
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["attach_to"] = "Portrait",
									["size"] = 1.25,
								},
								["Lua:직업"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["position"] = 1.00001,
									["location"] = "left",
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["attach_to"] = "PowerBar",
									["size"] = 0.85,
								},
								["Lua:마력"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["events"] = {
										["UNIT_MAXENERGY"] = true,
										["UNIT_MANA"] = true,
										["UNIT_RAGE"] = true,
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_MAXFOCUS"] = true,
										["UNIT_FOCUS"] = true,
										["UNIT_MAXMANA"] = true,
										["UNIT_ENERGY"] = true,
										["UNIT_RUNIC_POWER"] = true,
										["UNIT_MAXRAGE"] = true,
										["UNIT_MAXRUNIC_POWER"] = true,
									},
									["attach_to"] = "PowerBar",
									["size"] = 0.75,
								},
							},
							["first"] = false,
						},
						["대상의대상"] = {
							["elements"] = {
								["Lua:이름"] = {
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["attach_to"] = "HealthBar",
									["size"] = 0.85,
								},
							},
							["first"] = false,
						},
						["소환수"] = {
							["elements"] = {
								["Lua:생명력"] = {
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s || %s%%\",HP(unit),Percent(cur,max)",
									["location"] = "right",
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_HEALTH"] = true,
									},
									["attach_to"] = "HealthBar",
									["size"] = 0.85,
								},
								["Lua:이름"] = {
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_LEVEL"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["position"] = 1.00001,
									["location"] = "top",
									["code"] = "local r,g,b = ClassColor(unit)\nreturn '%s |cff%02x%02x%02x%s|r %s%s%s',Level(unit),r,g,b,Name(unit),Angle(AFK(unit) or DND(unit))",
									["attach_to"] = "Portrait",
									["size"] = 0.95,
								},
								["Lua:직업"] = {
									["exists"] = true,
									["code"] = "if UnitIsPlayer(unit) then\n  local cr,cg,cb = ClassColor(unit)\n  return \"|cff%02x%02x%02x%s|r\",cr,cg,cb,Class(unit)\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["size"] = 0.8,
								},
								["Lua:시전"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["attach_to"] = "CastBar",
									["size"] = 0.85,
								},
								["Lua:마력"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["events"] = {
										["UNIT_MAXENERGY"] = true,
										["UNIT_MANA"] = true,
										["UNIT_RAGE"] = true,
										["UNIT_ENERGY"] = true,
										["UNIT_MAXFOCUS"] = true,
										["UNIT_FOCUS"] = true,
										["UNIT_MAXMANA"] = true,
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_RUNIC_POWER"] = true,
										["UNIT_MAXRAGE"] = true,
										["UNIT_MAXRUNIC_POWER"] = true,
									},
									["attach_to"] = "PowerBar",
									["size"] = 0.75,
								},
							},
							["first"] = false,
						},
						["보통"] = {
							["elements"] = {
								["Lua:생명력"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_HEALTH"] = true,
									},
									["position"] = 1.00001,
									["location"] = "left",
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nreturn \"%s/%s\",HP(unit),MaxHP(unit)",
									["attach_to"] = "HealthBar",
									["size"] = 0.85,
								},
								["Lua:백분율"] = {
									["position"] = 1.00002,
									["font"] = "데미지 글꼴",
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_HEALTH"] = true,
									},
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nreturn \"%s%%\",Percent(HP(unit),MaxHP(unit))",
									["location"] = "bottom_right",
									["exists"] = true,
									["attach_to"] = "Portrait",
									["size"] = 0.85,
								},
								["Lua:이름"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_LEVEL"] = true,
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["position"] = 1.00001,
									["location"] = "top",
									["code"] = "local r,g,b = ClassColor(unit)\nreturn '%s |cff%02x%02x%02x%s|r %s%s%s',Level(unit),r,g,b,Name(unit),Angle(AFK(unit) or DND(unit))",
									["attach_to"] = "Portrait",
									["size"] = 1.25,
								},
								["Lua:직업"] = {
									["exists"] = true,
									["position"] = 1.00002,
									["location"] = "right",
									["code"] = "if UnitIsPlayer(unit) then\n  local cr,cg,cb = ClassColor(unit)\n  return \"|cff%02x%02x%02x%s|r\",cr,cg,cb,Class(unit)\nend",
									["attach_to"] = "PowerBar",
									["size"] = 0.85,
								},
								["Lua:마력"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_MAXENERGY"] = true,
										["UNIT_MANA"] = true,
										["UNIT_RAGE"] = true,
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_MAXFOCUS"] = true,
										["UNIT_FOCUS"] = true,
										["UNIT_MAXMANA"] = true,
										["UNIT_ENERGY"] = true,
										["UNIT_RUNIC_POWER"] = true,
										["UNIT_MAXRAGE"] = true,
										["UNIT_MAXRUNIC_POWER"] = true,
									},
									["position"] = 1.00002,
									["location"] = "left",
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["attach_to"] = "PowerBar",
									["size"] = 0.75,
								},
							},
							["first"] = false,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["first"] = false,
							["elements"] = {
								["Lua:생명력"] = {
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s || %s%%\",HP(unit),Percent(cur,max)",
									["location"] = "right",
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_HEALTH"] = true,
									},
									["attach_to"] = "HealthBar",
									["size"] = 0.85,
								},
								["Lua:이름"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_LEVEL"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local r,g,b = ClassColor(unit)\nreturn '%s |cff%02x%02x%02x%s|r %s%s%s',Level(unit),r,g,b,Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "out_top_left",
								},
								["Lua:직업"] = {
									["exists"] = true,
									["code"] = "if UnitIsPlayer(unit) then\n  local cr,cg,cb = ClassColor(unit)\n  return \"|cff%02x%02x%02x%s|r\",cr,cg,cb,Class(unit)\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["size"] = 0.75,
								},
								["Lua:시전"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
									},
									["attach_to"] = "CastBar",
									["size"] = 0.75,
								},
								["Lua:마력"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["events"] = {
										["UNIT_MAXENERGY"] = true,
										["UNIT_MANA"] = true,
										["UNIT_RAGE"] = true,
										["UNIT_ENERGY"] = true,
										["UNIT_MAXFOCUS"] = true,
										["UNIT_FOCUS"] = true,
										["UNIT_MAXMANA"] = true,
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_RUNIC_POWER"] = true,
										["UNIT_MAXRAGE"] = true,
										["UNIT_MAXRUNIC_POWER"] = true,
									},
									["attach_to"] = "PowerBar",
									["size"] = 0.75,
								},
							},
						},
						["주시대상"] = {
							["first"] = false,
							["elements"] = {
								["Lua:생명력"] = {
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s || %s%%\",HP(unit),Percent(cur,max)",
									["location"] = "right",
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["attach_to"] = "HealthBar",
									["size"] = 0.85,
								},
								["Lua:이름"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_LEVEL"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["exists"] = true,
									["position"] = 1.00001,
									["location"] = "top",
									["code"] = "local r,g,b = ClassColor(unit)\nreturn '%s |cff%02x%02x%02x%s|r %s%s%s',Level(unit),r,g,b,Name(unit),Angle(AFK(unit) or DND(unit))",
									["attach_to"] = "Portrait",
									["size"] = 0.95,
								},
								["Lua:직업"] = {
									["exists"] = true,
									["code"] = "if UnitIsPlayer(unit) then\n  local cr,cg,cb = ClassColor(unit)\n  return \"|cff%02x%02x%02x%s|r\",cr,cg,cb,Class(unit)\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["size"] = 0.8,
								},
								["Lua:시전"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["attach_to"] = "CastBar",
									["size"] = 0.85,
								},
								["Lua:마력"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["events"] = {
										["UNIT_MAXENERGY"] = true,
										["UNIT_MANA"] = true,
										["UNIT_RAGE"] = true,
										["UNIT_ENERGY"] = true,
										["UNIT_MAXFOCUS"] = true,
										["UNIT_FOCUS"] = true,
										["UNIT_MAXMANA"] = true,
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_RUNIC_POWER"] = true,
										["UNIT_MAXRAGE"] = true,
										["UNIT_MAXRUNIC_POWER"] = true,
									},
									["attach_to"] = "PowerBar",
									["size"] = 0.75,
								},
							},
						},
						["대상"] = {
							["first"] = false,
							["elements"] = {
								["Lua:생명력"] = {
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_HEALTH"] = true,
									},
									["exists"] = true,
									["position"] = 1.00001,
									["location"] = "right",
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nreturn \"%s/%s\",HP(unit),MaxHP(unit)",
									["attach_to"] = "HealthBar",
									["size"] = 0.85,
								},
								["Lua:백분율"] = {
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nreturn \"%s%%\",Percent(HP(unit),MaxHP(unit))",
									["attach_to"] = "Portrait",
									["font"] = "데미지 글꼴",
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_HEALTH"] = true,
									},
									["position"] = 1.00001,
									["location"] = "bottom_left",
									["exists"] = true,
									["size"] = 0.85,
								},
								["Lua:이름"] = {
									["exists"] = true,
									["code"] = "local r,g,b = ClassColor(unit)\nreturn '%s |cff%02x%02x%02x%s|r %s%s%s',Level(unit),r,g,b,Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "top",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_LEVEL"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["attach_to"] = "Portrait",
									["size"] = 1.25,
								},
								["Lua:직업"] = {
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["exists"] = true,
									["position"] = 1.00001,
									["location"] = "left",
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["attach_to"] = "PowerBar",
									["size"] = 0.85,
								},
								["Lua:마력"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["events"] = {
										["UNIT_MAXENERGY"] = true,
										["UNIT_MANA"] = true,
										["UNIT_RAGE"] = true,
										["UNIT_ENERGY"] = true,
										["UNIT_MAXFOCUS"] = true,
										["UNIT_FOCUS"] = true,
										["UNIT_MAXMANA"] = true,
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_RUNIC_POWER"] = true,
										["UNIT_MAXRAGE"] = true,
										["UNIT_MAXRUNIC_POWER"] = true,
									},
									["attach_to"] = "PowerBar",
									["size"] = 0.75,
								},
							},
						},
						["대상의대상"] = {
							["first"] = false,
							["elements"] = {
								["Lua:이름"] = {
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["attach_to"] = "HealthBar",
									["size"] = 0.85,
								},
							},
						},
						["소환수"] = {
							["first"] = false,
							["elements"] = {
								["Lua:생명력"] = {
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s || %s%%\",HP(unit),Percent(cur,max)",
									["location"] = "right",
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_HEALTH"] = true,
									},
									["attach_to"] = "HealthBar",
									["size"] = 0.85,
								},
								["Lua:시전"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["attach_to"] = "CastBar",
									["size"] = 0.85,
								},
								["Lua:직업"] = {
									["exists"] = true,
									["code"] = "if UnitIsPlayer(unit) then\n  local cr,cg,cb = ClassColor(unit)\n  return \"|cff%02x%02x%02x%s|r\",cr,cg,cb,Class(unit)\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["size"] = 0.8,
								},
								["Lua:이름"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_LEVEL"] = true,
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["position"] = 1.00001,
									["location"] = "top",
									["code"] = "local r,g,b = ClassColor(unit)\nreturn '%s |cff%02x%02x%02x%s|r %s%s%s',Level(unit),r,g,b,Name(unit),Angle(AFK(unit) or DND(unit))",
									["attach_to"] = "Portrait",
									["size"] = 0.95,
								},
								["Lua:마력"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["events"] = {
										["UNIT_MAXENERGY"] = true,
										["UNIT_MANA"] = true,
										["UNIT_RAGE"] = true,
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_MAXFOCUS"] = true,
										["UNIT_FOCUS"] = true,
										["UNIT_MAXMANA"] = true,
										["UNIT_ENERGY"] = true,
										["UNIT_RUNIC_POWER"] = true,
										["UNIT_MAXRAGE"] = true,
										["UNIT_MAXRUNIC_POWER"] = true,
									},
									["attach_to"] = "PowerBar",
									["size"] = 0.75,
								},
							},
						},
						["보통"] = {
							["first"] = false,
							["elements"] = {
								["Lua:생명력"] = {
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_HEALTH"] = true,
									},
									["exists"] = true,
									["position"] = 1.00001,
									["location"] = "left",
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nreturn \"%s/%s\",HP(unit),MaxHP(unit)",
									["attach_to"] = "HealthBar",
									["size"] = 0.85,
								},
								["Lua:백분율"] = {
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nreturn \"%s%%\",Percent(HP(unit),MaxHP(unit))",
									["attach_to"] = "Portrait",
									["font"] = "데미지 글꼴",
									["events"] = {
										["UNIT_MAXHEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_HEALTH"] = true,
									},
									["position"] = 1.00002,
									["location"] = "bottom_right",
									["exists"] = true,
									["size"] = 0.85,
								},
								["Lua:이름"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_LEVEL"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["exists"] = true,
									["position"] = 1.00001,
									["location"] = "top",
									["code"] = "local r,g,b = ClassColor(unit)\nreturn '%s |cff%02x%02x%02x%s|r %s%s%s',Level(unit),r,g,b,Name(unit),Angle(AFK(unit) or DND(unit))",
									["attach_to"] = "Portrait",
									["size"] = 1.25,
								},
								["Lua:직업"] = {
									["exists"] = true,
									["position"] = 1.00002,
									["location"] = "right",
									["code"] = "if UnitIsPlayer(unit) then\n  local cr,cg,cb = ClassColor(unit)\n  return \"|cff%02x%02x%02x%s|r\",cr,cg,cb,Class(unit)\nend",
									["attach_to"] = "PowerBar",
									["size"] = 0.85,
								},
								["Lua:마력"] = {
									["events"] = {
										["UNIT_MAXENERGY"] = true,
										["UNIT_MANA"] = true,
										["UNIT_RAGE"] = true,
										["UNIT_ENERGY"] = true,
										["UNIT_MAXFOCUS"] = true,
										["UNIT_FOCUS"] = true,
										["UNIT_MAXMANA"] = true,
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_RUNIC_POWER"] = true,
										["UNIT_MAXRAGE"] = true,
										["UNIT_MAXRUNIC_POWER"] = true,
									},
									["exists"] = true,
									["position"] = 1.00002,
									["location"] = "left",
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["attach_to"] = "PowerBar",
									["size"] = 0.75,
								},
							},
						},
					},
				},
				["Default"] = {
					["layouts"] = {
						["보통"] = {
							["elements"] = {
								["Lua:생명력"] = {
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
									["exists"] = true,
								},
								["Lua:시전 시간"] = {
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
									["exists"] = true,
								},
								["Lua:PVP 타이머"] = {
									["location"] = "out_right_top",
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
								},
								["Lua:일월식"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "return math.abs(Power(unit,SPELL_POWER_ECLIPSE))\n",
									["location"] = "center",
									["attach_to"] = "Eclipse",
									["exists"] = true,
								},
								["Lua:드루이드 마나"] = {
									["events"] = {
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
									["exists"] = true,
								},
								["Lua:마력"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
									["exists"] = true,
								},
								["Lua:이름"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
									["exists"] = true,
								},
								["Lua:위협"] = {
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
									["exists"] = true,
								},
								["Lua:시전"] = {
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
									["exists"] = true,
								},
								["Lua:평판"] = {
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["code"] = "local name, _, min , max, value, id = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local fs_id, fs_rep, _, _, _, _, _, fs_threshold, next_fs_threshold = GetFriendshipReputation(id)\n  if fs_id then\n    if next_fs_threshold then\n      min, max, value = fs_threshold, next_fs_threshold, fs_rep\n    else\n      min, max, value = 0, 1, 1\n    end\n  end\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
									["exists"] = true,
								},
								["Lua:경험치"] = {
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
									["exists"] = true,
								},
								["Lua:직업"] = {
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["exists"] = true,
								},
								["Lua:Alternate power"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "local max = MaxPower(unit,ALTERNATE_POWER_INDEX)\nif max > 0 then\n  return \"%s%%\",Percent(Power(unit,ALTERNATE_POWER_INDEX),max)\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "AltPowerBar",
									["exists"] = true,
								},
								["Lua:Demonic fury"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["code"] = "return \"%s/%s\",Power(unit,SPELL_POWER_DEMONIC_FURY),MaxPower(unit,SPELL_POWER_DEMONIC_FURY)\n",
									["location"] = "center",
									["attach_to"] = "DemonicFury",
									["exists"] = true,
								},
							},
							["first"] = false,
						},
					},
				},
			},
		},
		["SoulShards"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["보통"] = {
							["location"] = "out_right",
							["vertical"] = true,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["보통"] = {
							["location"] = "out_right",
							["vertical"] = true,
						},
					},
				},
			},
		},
		["HostilityFader"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["MasterLooterIcon"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["소환수"] = {
							["enabled"] = false,
						},
						["대상의대상"] = {
							["enabled"] = false,
						},
						["주시대상"] = {
							["enabled"] = false,
						},
						["대상"] = {
							["enabled"] = false,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["소환수"] = {
							["enabled"] = false,
						},
						["주시대상"] = {
							["enabled"] = false,
						},
						["대상"] = {
							["enabled"] = false,
						},
						["대상의대상"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["CombatText"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["Chi"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["보통"] = {
							["inactive_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["location"] = "right",
							["background_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0, -- [4]
							},
							["attach_to"] = "HealthBar",
							["size"] = 1.25,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["보통"] = {
							["inactive_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["location"] = "right",
							["attach_to"] = "HealthBar",
							["background_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0, -- [4]
							},
							["size"] = 1.20000004768372,
						},
					},
				},
			},
		},
		["Border"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["boss_texture"] = "Devil",
							["rare_texture"] = "Devil",
							["normal_texture"] = "Devil",
							["normal_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.659999996423721, -- [4]
							},
							["rare_color"] = {
								0.258823529411765, -- [1]
								0.729411764705882, -- [2]
								1, -- [3]
								0.75, -- [4]
							},
							["elite_texture"] = "Devil",
							["elite_color"] = {
								nil, -- [1]
								0.705882352941177, -- [2]
								0.188235294117647, -- [3]
								0.680000007152557, -- [4]
							},
							["size"] = 12,
						},
						["주시대상"] = {
							["boss_texture"] = "Devil",
							["rare_texture"] = "Devil",
							["normal_texture"] = "Devil",
							["normal_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.659999996423721, -- [4]
							},
							["rare_color"] = {
								0.258823529411765, -- [1]
								0.729411764705882, -- [2]
								1, -- [3]
								0.75, -- [4]
							},
							["elite_texture"] = "Devil",
							["elite_color"] = {
								nil, -- [1]
								0.705882352941177, -- [2]
								0.188235294117647, -- [3]
								0.680000007152557, -- [4]
							},
							["size"] = 12,
						},
						["대상"] = {
							["boss_texture"] = "Devil",
							["rare_texture"] = "Devil",
							["normal_texture"] = "Devil",
							["normal_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.659999996423721, -- [4]
							},
							["rare_color"] = {
								0.258823529411765, -- [1]
								0.729411764705882, -- [2]
								1, -- [3]
								0.75, -- [4]
							},
							["elite_texture"] = "Devil",
							["elite_color"] = {
								nil, -- [1]
								0.705882352941177, -- [2]
								0.188235294117647, -- [3]
								0.680000007152557, -- [4]
							},
							["size"] = 12,
						},
						["대상의대상"] = {
							["boss_texture"] = "Devil",
							["rare_texture"] = "Devil",
							["normal_texture"] = "Devil",
							["normal_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.659999996423721, -- [4]
							},
							["rare_color"] = {
								0.258823529411765, -- [1]
								0.729411764705882, -- [2]
								1, -- [3]
								0.75, -- [4]
							},
							["elite_texture"] = "Devil",
							["elite_color"] = {
								nil, -- [1]
								0.705882352941177, -- [2]
								0.188235294117647, -- [3]
								0.680000007152557, -- [4]
							},
							["size"] = 12,
						},
						["소환수"] = {
							["boss_texture"] = "Devil",
							["rare_texture"] = "Devil",
							["normal_texture"] = "Devil",
							["normal_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.659999996423721, -- [4]
							},
							["rare_color"] = {
								0.258823529411765, -- [1]
								0.729411764705882, -- [2]
								1, -- [3]
								0.75, -- [4]
							},
							["elite_texture"] = "Devil",
							["elite_color"] = {
								nil, -- [1]
								0.705882352941177, -- [2]
								0.188235294117647, -- [3]
								0.680000007152557, -- [4]
							},
							["size"] = 12,
						},
						["보통"] = {
							["boss_texture"] = "Devil",
							["rare_texture"] = "Devil",
							["normal_texture"] = "Devil",
							["normal_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.659999996423721, -- [4]
							},
							["rare_color"] = {
								0.258823529411765, -- [1]
								0.729411764705882, -- [2]
								1, -- [3]
								0.75, -- [4]
							},
							["elite_texture"] = "Devil",
							["elite_color"] = {
								nil, -- [1]
								0.705882352941177, -- [2]
								0.188235294117647, -- [3]
								0.680000007152557, -- [4]
							},
							["size"] = 12,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["boss_texture"] = "Devil",
							["rare_texture"] = "Devil",
							["rare_color"] = {
								0.258823529411765, -- [1]
								0.729411764705882, -- [2]
								1, -- [3]
								0.75, -- [4]
							},
							["normal_texture"] = "Devil",
							["elite_texture"] = "Devil",
							["normal_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.659999996423721, -- [4]
							},
							["elite_color"] = {
								nil, -- [1]
								0.705882352941177, -- [2]
								0.188235294117647, -- [3]
								0.680000007152557, -- [4]
							},
							["size"] = 12,
						},
						["주시대상"] = {
							["boss_texture"] = "Devil",
							["rare_texture"] = "Devil",
							["rare_color"] = {
								0.258823529411765, -- [1]
								0.729411764705882, -- [2]
								1, -- [3]
								0.75, -- [4]
							},
							["normal_texture"] = "Devil",
							["elite_texture"] = "Devil",
							["normal_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.659999996423721, -- [4]
							},
							["elite_color"] = {
								nil, -- [1]
								0.705882352941177, -- [2]
								0.188235294117647, -- [3]
								0.680000007152557, -- [4]
							},
							["size"] = 12,
						},
						["대상"] = {
							["boss_texture"] = "Devil",
							["rare_texture"] = "Devil",
							["rare_color"] = {
								0.258823529411765, -- [1]
								0.729411764705882, -- [2]
								1, -- [3]
								0.75, -- [4]
							},
							["normal_texture"] = "Devil",
							["elite_texture"] = "Devil",
							["normal_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.659999996423721, -- [4]
							},
							["elite_color"] = {
								nil, -- [1]
								0.705882352941177, -- [2]
								0.188235294117647, -- [3]
								0.680000007152557, -- [4]
							},
							["size"] = 12,
						},
						["대상의대상"] = {
							["boss_texture"] = "Devil",
							["rare_texture"] = "Devil",
							["rare_color"] = {
								0.258823529411765, -- [1]
								0.729411764705882, -- [2]
								1, -- [3]
								0.75, -- [4]
							},
							["normal_texture"] = "Devil",
							["elite_texture"] = "Devil",
							["normal_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.659999996423721, -- [4]
							},
							["elite_color"] = {
								nil, -- [1]
								0.705882352941177, -- [2]
								0.188235294117647, -- [3]
								0.680000007152557, -- [4]
							},
							["size"] = 12,
						},
						["소환수"] = {
							["boss_texture"] = "Devil",
							["rare_texture"] = "Devil",
							["rare_color"] = {
								0.258823529411765, -- [1]
								0.729411764705882, -- [2]
								1, -- [3]
								0.75, -- [4]
							},
							["normal_texture"] = "Devil",
							["elite_texture"] = "Devil",
							["normal_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.659999996423721, -- [4]
							},
							["elite_color"] = {
								nil, -- [1]
								0.705882352941177, -- [2]
								0.188235294117647, -- [3]
								0.680000007152557, -- [4]
							},
							["size"] = 12,
						},
						["보통"] = {
							["boss_texture"] = "Devil",
							["rare_texture"] = "Devil",
							["rare_color"] = {
								0.258823529411765, -- [1]
								0.729411764705882, -- [2]
								1, -- [3]
								0.75, -- [4]
							},
							["normal_texture"] = "Devil",
							["elite_texture"] = "Devil",
							["normal_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.659999996423721, -- [4]
							},
							["elite_color"] = {
								nil, -- [1]
								0.705882352941177, -- [2]
								0.188235294117647, -- [3]
								0.680000007152557, -- [4]
							},
							["size"] = 12,
						},
					},
				},
			},
		},
		["ReadyCheckIcon"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["location"] = "edge_bottom_left",
							["position"] = 1.00002,
						},
						["주시대상"] = {
							["enabled"] = false,
							["location"] = "edge_bottom_left",
							["position"] = 1.00002,
						},
						["대상"] = {
							["enabled"] = false,
							["location"] = "edge_bottom_left",
							["position"] = 1.00002,
						},
						["대상의대상"] = {
							["enabled"] = false,
							["location"] = "edge_bottom_left",
							["position"] = 1.00002,
						},
						["소환수"] = {
							["enabled"] = false,
							["location"] = "edge_bottom_left",
							["position"] = 1.00002,
						},
						["보통"] = {
							["location"] = "edge_bottom_left",
							["position"] = 1.00002,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["position"] = 1.00002,
							["location"] = "edge_bottom_left",
						},
						["주시대상"] = {
							["enabled"] = false,
							["position"] = 1.00002,
							["location"] = "edge_bottom_left",
						},
						["대상"] = {
							["enabled"] = false,
							["position"] = 1.00002,
							["location"] = "edge_bottom_left",
						},
						["대상의대상"] = {
							["enabled"] = false,
							["position"] = 1.00002,
							["location"] = "edge_bottom_left",
						},
						["소환수"] = {
							["enabled"] = false,
							["position"] = 1.00002,
							["location"] = "edge_bottom_left",
						},
						["보통"] = {
							["position"] = 1.00002,
							["location"] = "edge_bottom_left",
						},
					},
				},
			},
		},
		["LeaderIcon"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["소환수"] = {
							["enabled"] = false,
						},
						["대상의대상"] = {
							["enabled"] = false,
						},
						["주시대상"] = {
							["enabled"] = false,
						},
						["대상"] = {
							["enabled"] = false,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["소환수"] = {
							["enabled"] = false,
						},
						["주시대상"] = {
							["enabled"] = false,
						},
						["대상"] = {
							["enabled"] = false,
						},
						["대상의대상"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["Totems"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["DruidManaBar"] = {
		},
		["Portrait"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["enabled"] = true,
							["style"] = "two_dimensional",
							["fallback_style"] = "two_dimensional",
						},
						["주시대상"] = {
							["enabled"] = true,
							["side"] = "center",
							["fallback_style"] = "two_dimensional",
						},
						["대상"] = {
							["enabled"] = true,
							["side"] = "center",
							["fallback_style"] = "two_dimensional",
						},
						["대상의대상"] = {
							["side"] = "right",
							["fallback_style"] = "two_dimensional",
						},
						["소환수"] = {
							["enabled"] = true,
							["side"] = "center",
							["fallback_style"] = "two_dimensional",
						},
						["보통"] = {
							["enabled"] = true,
							["side"] = "center",
							["fallback_style"] = "two_dimensional",
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["enabled"] = true,
							["style"] = "two_dimensional",
							["fallback_style"] = "two_dimensional",
						},
						["주시대상"] = {
							["enabled"] = true,
							["side"] = "center",
							["fallback_style"] = "two_dimensional",
						},
						["대상"] = {
							["enabled"] = true,
							["style"] = "two_dimensional",
							["fallback_style"] = "two_dimensional",
						},
						["대상의대상"] = {
							["side"] = "right",
							["fallback_style"] = "two_dimensional",
						},
						["소환수"] = {
							["enabled"] = true,
							["style"] = "two_dimensional",
							["fallback_style"] = "two_dimensional",
						},
						["보통"] = {
							["enabled"] = true,
							["style"] = "two_dimensional",
							["fallback_style"] = "two_dimensional",
						},
					},
				},
			},
		},
		["ExperienceBar"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["RaidTargetIcon"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["소환수"] = {
							["size"] = 1.25,
						},
						["주시대상"] = {
							["size"] = 1.25,
						},
						["대상"] = {
							["size"] = 1.3,
						},
						["파티"] = {
							["size"] = 1.25,
						},
						["보통"] = {
							["size"] = 1.25,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["size"] = 1.25,
						},
						["주시대상"] = {
							["size"] = 1.25,
						},
						["대상"] = {
							["size"] = 1.3,
						},
						["소환수"] = {
							["size"] = 1.25,
						},
						["보통"] = {
							["size"] = 1.25,
						},
					},
				},
			},
		},
		["Eclipse"] = {
			["profiles"] = {
				["Wide"] = {
					["layouts"] = {
						["보통"] = {
							["orientation"] = "VERTICAL",
							["location"] = "out_right",
							["size"] = 1.5,
						},
					},
				},
				["Normal"] = {
					["layouts"] = {
						["보통"] = {
							["orientation"] = "VERTICAL",
							["location"] = "out_right",
							["size"] = 1.25,
						},
					},
				},
			},
		},
		["CastBar"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["Background"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
						["주시대상"] = {
							["color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
						["대상"] = {
							["color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
						["대상의대상"] = {
							["color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
						["소환수"] = {
							["color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
						["보통"] = {
							["color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
						["주시대상"] = {
							["color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
						["대상"] = {
							["color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
						["대상의대상"] = {
							["color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
						["소환수"] = {
							["color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
						["보통"] = {
							["color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
					},
				},
			},
		},
		["Sounds"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["BurningEmbers"] = {
		},
		["RestIcon"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["enabled"] = false,
							["size"] = 1.25,
							["position"] = 1.00001,
						},
						["주시대상"] = {
							["enabled"] = false,
							["size"] = 1.25,
							["position"] = 1.00001,
						},
						["대상"] = {
							["size"] = 1.25,
							["position"] = 1.00002,
						},
						["대상의대상"] = {
							["enabled"] = false,
							["size"] = 1.25,
							["position"] = 1.00003,
						},
						["소환수"] = {
							["enabled"] = false,
							["size"] = 1.25,
							["position"] = 1.00001,
						},
						["보통"] = {
							["size"] = 1.25,
							["position"] = 1.00001,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["enabled"] = false,
							["position"] = 1.00001,
							["size"] = 1.25,
						},
						["주시대상"] = {
							["enabled"] = false,
							["position"] = 1.00001,
							["size"] = 1.25,
						},
						["대상"] = {
							["position"] = 1.00002,
							["size"] = 1.25,
						},
						["대상의대상"] = {
							["enabled"] = false,
							["position"] = 1.00003,
							["size"] = 1.25,
						},
						["소환수"] = {
							["enabled"] = false,
							["position"] = 1.00001,
							["size"] = 1.25,
						},
						["보통"] = {
							["position"] = 1.00001,
							["size"] = 1.25,
						},
					},
				},
			},
		},
		["Aura"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["max_debuffs"] = 2,
							["max_buffs"] = 11,
							["highlight_style"] = "thinborder",
							["layout"] = {
								["buff"] = {
									["offset_y"] = -4,
									["width_percent"] = 1,
									["width"] = 270,
									["size"] = 14,
									["my_size"] = 14,
								},
								["debuff"] = {
									["size"] = 14,
									["offset_y"] = -4,
									["my_size"] = 14,
								},
							},
							["cooldown"] = {
								["weapon_buffs"] = false,
							},
							["enabled_weapons"] = false,
						},
						["주시대상"] = {
							["cooldown_text"] = {
								["my_buffs"] = true,
								["my_debuffs"] = true,
							},
							["max_debuffs"] = 10,
							["max_buffs"] = 2,
							["highlight_style"] = "thinborder",
							["layout"] = {
								["buff"] = {
									["new_row_size"] = true,
									["offset_y"] = 4,
									["width_percent"] = 1,
									["anchor"] = "TOPLEFT",
									["side"] = "TOP",
									["growth"] = "right_up",
									["width"] = 60,
								},
								["debuff"] = {
									["side"] = "TOP",
									["width_percent"] = 0.67,
									["growth"] = "left_up",
									["my_size"] = 20,
									["offset_y"] = 4,
									["reverse"] = true,
									["anchor"] = "TOPRIGHT",
									["width_type"] = "fixed",
									["new_row_size"] = true,
									["width"] = 130,
								},
							},
							["cooldown"] = {
								["my_buffs"] = false,
								["weapon_buffs"] = false,
								["my_debuffs"] = false,
							},
							["enabled_weapons"] = false,
						},
						["대상"] = {
							["cooldown_text"] = {
								["my_buffs"] = true,
								["weapon_buffs"] = true,
								["my_debuffs"] = true,
							},
							["max_debuffs"] = 20,
							["max_buffs"] = 12,
							["texts"] = {
								["my_debuffs"] = {
									["cooldown_text"] = {
										["color_by_time"] = true,
										["font"] = "데미지 글꼴",
										["size"] = 1,
									},
								},
							},
							["layout"] = {
								["buff"] = {
									["width"] = 400,
									["width_type"] = "fixed",
									["offset_y"] = 4,
									["anchor"] = "TOPLEFT",
									["side"] = "TOP",
									["size"] = 20,
									["my_size"] = 20,
								},
								["debuff"] = {
									["side"] = "TOP",
									["width_percent"] = 1,
									["growth"] = "right_up",
									["my_size"] = 32,
									["new_row_size"] = true,
									["offset_y"] = 30,
									["row_spacing"] = 2,
									["anchor"] = "TOPLEFT",
									["width_type"] = "fixed",
									["width"] = 400,
									["size"] = 20,
								},
							},
							["cooldown"] = {
								["my_buffs"] = false,
								["weapon_buffs"] = false,
								["my_debuffs"] = false,
							},
							["highlight_style"] = "thinborder",
						},
						["대상의대상"] = {
							["enabled"] = false,
						},
						["소환수"] = {
							["cooldown_text"] = {
								["my_buffs"] = true,
								["my_debuffs"] = true,
							},
							["max_debuffs"] = 10,
							["max_buffs"] = 2,
							["highlight_style"] = "thinborder",
							["layout"] = {
								["buff"] = {
									["new_row_size"] = true,
									["offset_y"] = 4,
									["width_percent"] = 1,
									["anchor"] = "TOPLEFT",
									["side"] = "TOP",
									["growth"] = "right_up",
									["width"] = 60,
								},
								["debuff"] = {
									["side"] = "TOP",
									["width_percent"] = 0.67,
									["growth"] = "left_up",
									["my_size"] = 20,
									["offset_y"] = 4,
									["reverse"] = true,
									["anchor"] = "TOPRIGHT",
									["width_type"] = "fixed",
									["new_row_size"] = true,
									["width"] = 130,
								},
							},
							["cooldown"] = {
								["my_buffs"] = false,
								["weapon_buffs"] = false,
								["my_debuffs"] = false,
							},
							["enabled_weapons"] = false,
						},
						["보통"] = {
							["enabled"] = false,
						},
					},
					["global"] = {
						["colors"] = {
							["weapon"] = {
								["weapon"] = {
									0.972549019607843, -- [1]
									1, -- [2]
									0.235294117647059, -- [3]
								},
								["quality_color"] = false,
							},
							["friend"] = {
								["other"] = {
									0.282352941176471, -- [1]
									0.76078431372549, -- [2]
									1, -- [3]
								},
								["my"] = {
									0.364705882352941, -- [1]
									[3] = 0.258823529411765,
								},
							},
							["enemy"] = {
								["Magic"] = {
									0.0470588235294118, -- [1]
									0.36078431372549, -- [2]
								},
							},
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["enabled_weapons"] = false,
							["max_debuffs"] = 2,
							["max_buffs"] = 11,
							["layout"] = {
								["debuff"] = {
									["my_size"] = 14,
									["offset_y"] = -4,
									["size"] = 14,
								},
								["buff"] = {
									["width_percent"] = 1,
									["my_size"] = 14,
									["offset_y"] = -4,
									["size"] = 14,
									["width"] = 270,
								},
							},
							["highlight_style"] = "thinborder",
							["cooldown"] = {
								["weapon_buffs"] = false,
							},
						},
						["주시대상"] = {
							["cooldown_text"] = {
								["my_debuffs"] = true,
								["my_buffs"] = true,
							},
							["enabled_weapons"] = false,
							["max_debuffs"] = 10,
							["max_buffs"] = 2,
							["layout"] = {
								["debuff"] = {
									["width_percent"] = 0.67,
									["my_size"] = 20,
									["offset_y"] = 4,
									["anchor"] = "TOPRIGHT",
									["side"] = "TOP",
									["growth"] = "left_up",
									["width"] = 130,
									["width_type"] = "fixed",
									["reverse"] = true,
									["new_row_size"] = true,
								},
								["buff"] = {
									["width_percent"] = 1,
									["offset_y"] = 4,
									["anchor"] = "TOPLEFT",
									["side"] = "TOP",
									["width"] = 60,
									["growth"] = "right_up",
									["new_row_size"] = true,
								},
							},
							["highlight_style"] = "thinborder",
							["cooldown"] = {
								["weapon_buffs"] = false,
								["my_buffs"] = false,
								["my_debuffs"] = false,
							},
						},
						["대상"] = {
							["cooldown_text"] = {
								["weapon_buffs"] = true,
								["my_buffs"] = true,
								["my_debuffs"] = true,
							},
							["max_debuffs"] = 20,
							["max_buffs"] = 12,
							["layout"] = {
								["debuff"] = {
									["width_percent"] = 1,
									["my_size"] = 32,
									["offset_y"] = 30,
									["anchor"] = "TOPLEFT",
									["size"] = 20,
									["side"] = "TOP",
									["growth"] = "right_up",
									["width"] = 400,
									["new_row_size"] = true,
									["width_type"] = "fixed",
									["row_spacing"] = 2,
								},
								["buff"] = {
									["my_size"] = 20,
									["offset_y"] = 4,
									["anchor"] = "TOPLEFT",
									["size"] = 20,
									["side"] = "TOP",
									["width"] = 400,
									["width_type"] = "fixed",
								},
							},
							["highlight_style"] = "thinborder",
							["cooldown"] = {
								["weapon_buffs"] = false,
								["my_buffs"] = false,
								["my_debuffs"] = false,
							},
							["texts"] = {
								["my_debuffs"] = {
									["cooldown_text"] = {
										["color_by_time"] = true,
										["font"] = "데미지 글꼴",
										["size"] = 1,
									},
								},
							},
						},
						["대상의대상"] = {
							["enabled"] = false,
						},
						["소환수"] = {
							["cooldown_text"] = {
								["my_debuffs"] = true,
								["my_buffs"] = true,
							},
							["enabled_weapons"] = false,
							["max_debuffs"] = 10,
							["max_buffs"] = 2,
							["layout"] = {
								["buff"] = {
									["width_percent"] = 1,
									["offset_y"] = 4,
									["anchor"] = "TOPLEFT",
									["side"] = "TOP",
									["width"] = 60,
									["growth"] = "right_up",
									["new_row_size"] = true,
								},
								["debuff"] = {
									["width_percent"] = 0.67,
									["my_size"] = 20,
									["offset_y"] = 4,
									["anchor"] = "TOPRIGHT",
									["side"] = "TOP",
									["growth"] = "left_up",
									["width"] = 130,
									["new_row_size"] = true,
									["reverse"] = true,
									["width_type"] = "fixed",
								},
							},
							["highlight_style"] = "thinborder",
							["cooldown"] = {
								["weapon_buffs"] = false,
								["my_buffs"] = false,
								["my_debuffs"] = false,
							},
						},
						["보통"] = {
							["enabled"] = false,
						},
					},
					["global"] = {
						["colors"] = {
							["enemy"] = {
								["Magic"] = {
									0.0470588235294118, -- [1]
									0.36078431372549, -- [2]
								},
							},
							["friend"] = {
								["other"] = {
									0.282352941176471, -- [1]
									0.76078431372549, -- [2]
									1, -- [3]
								},
								["my"] = {
									0.364705882352941, -- [1]
									[3] = 0.258823529411765,
								},
							},
							["weapon"] = {
								["quality_color"] = false,
								["weapon"] = {
									0.972549019607843, -- [1]
									1, -- [2]
									0.235294117647059, -- [3]
								},
							},
						},
					},
				},
			},
		},
		["DemonicFury"] = {
		},
		["PvPIcon"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["대상의대상"] = {
							["enabled"] = false,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["대상의대상"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["PowerBar"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["background_alpha"] = 0.5,
						},
						["주시대상"] = {
							["background_alpha"] = 0.5,
						},
						["대상"] = {
							["background_alpha"] = 0.5,
						},
						["대상의대상"] = {
							["background_alpha"] = 0.5,
							["enabled"] = false,
						},
						["소환수"] = {
							["background_alpha"] = 0.5,
						},
						["보통"] = {
							["background_alpha"] = 0.5,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["background_alpha"] = 0.5,
						},
						["주시대상"] = {
							["background_alpha"] = 0.5,
						},
						["대상"] = {
							["background_alpha"] = 0.5,
						},
						["대상의대상"] = {
							["background_alpha"] = 0.5,
							["enabled"] = false,
						},
						["소환수"] = {
							["background_alpha"] = 0.5,
						},
						["보통"] = {
							["background_alpha"] = 0.5,
						},
					},
				},
			},
		},
		["HideBlizzard"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["boss"] = false,
						["castbar"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["castbar"] = false,
						["boss"] = false,
					},
				},
			},
		},
		["Runes"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["ComboPoints"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["enabled"] = false,
							["position"] = 1.00003,
						},
						["주시대상"] = {
							["enabled"] = false,
							["position"] = 1.00003,
						},
						["대상"] = {
							["position"] = 1.00003,
							["location"] = "bottom",
							["spacing"] = 0,
							["attach_to"] = "Portrait",
							["size"] = 0.9,
						},
						["대상의대상"] = {
							["enabled"] = false,
							["position"] = 1.00003,
							["location"] = "bottom",
							["attach_to"] = "Portrait",
							["spacing"] = 0,
						},
						["소환수"] = {
							["enabled"] = false,
							["position"] = 1.00003,
						},
						["보통"] = {
							["location"] = "bottom",
							["size"] = 0.850000023841858,
							["attach_to"] = "Portrait",
							["position"] = 1.00003,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["enabled"] = false,
							["position"] = 1.00003,
						},
						["주시대상"] = {
							["enabled"] = false,
							["position"] = 1.00003,
						},
						["대상"] = {
							["attach_to"] = "Portrait",
							["position"] = 1.00003,
							["location"] = "bottom",
							["spacing"] = 0,
							["size"] = 0.9,
						},
						["대상의대상"] = {
							["enabled"] = false,
							["attach_to"] = "Portrait",
							["position"] = 1.00003,
							["location"] = "bottom",
							["spacing"] = 0,
						},
						["소환수"] = {
							["enabled"] = false,
							["position"] = 1.00003,
						},
						["보통"] = {
							["attach_to"] = "Portrait",
							["position"] = 1.00003,
							["location"] = "bottom",
							["size"] = 1,
						},
					},
				},
			},
		},
		["HealthBar"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["background_alpha"] = 0.5,
							["size"] = 5,
						},
						["주시대상"] = {
							["background_alpha"] = 0.5,
							["position"] = 1.00001,
						},
						["대상"] = {
							["color_pvp_by_class"] = true,
							["background_alpha"] = 0.5,
							["position"] = 1.00001,
						},
						["대상의대상"] = {
							["background_alpha"] = 0.5,
							["size"] = 5,
						},
						["소환수"] = {
							["background_alpha"] = 0.5,
							["position"] = 1.00001,
						},
						["보통"] = {
							["background_alpha"] = 0.5,
							["position"] = 1.00001,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["background_alpha"] = 0.5,
							["size"] = 5,
						},
						["주시대상"] = {
							["background_alpha"] = 0.5,
							["position"] = 1.00001,
						},
						["대상"] = {
							["background_alpha"] = 0.5,
							["color_pvp_by_class"] = true,
							["position"] = 1.00001,
						},
						["대상의대상"] = {
							["background_alpha"] = 0.5,
							["size"] = 5,
						},
						["소환수"] = {
							["background_alpha"] = 0.5,
							["position"] = 1.00001,
						},
						["보통"] = {
							["background_alpha"] = 0.5,
							["position"] = 1.00001,
						},
					},
				},
			},
		},
		["QuestIcon"] = {
			["profiles"] = {
				["Wide"] = {
					["layouts"] = {
						["보통"] = {
							["position"] = 1.00001,
						},
					},
				},
			},
		},
		["ManaSpark"] = {
		},
		["VoiceIcon"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["position"] = 1.00001,
						},
						["대상의대상"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["주시대상"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["대상"] = {
							["position"] = 1.00001,
						},
					},
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["layouts"] = {
						["파티"] = {
							["position"] = 1.00001,
						},
						["대상의대상"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["주시대상"] = {
							["enabled"] = false,
							["position"] = 1.00001,
						},
						["대상"] = {
							["position"] = 1.00001,
						},
					},
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["VisualHeal"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["ReputationBar"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["CombatFader"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["BattlePet"] = {
			["profiles"] = {
				["Wide"] = {
					["layouts"] = {
						["보통"] = {
							["position"] = 1.00002,
							["location"] = "bottom",
							["attach_to"] = "Portrait",
						},
					},
				},
			},
		},
		["AltPowerBar"] = {
		},
		["BlankSpace"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["파티"] = {
							["elements"] = {
								["기본값"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["주시대상"] = {
							["elements"] = {
								["기본값"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["대상"] = {
							["elements"] = {
								["기본값"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["대상의대상"] = {
							["elements"] = {
								["기본값"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["보통"] = {
							["elements"] = {
								["기본값"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
					},
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["layouts"] = {
						["소환수"] = {
							["elements"] = {
								["기본값"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["주시대상"] = {
							["elements"] = {
								["기본값"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["대상"] = {
							["elements"] = {
								["기본값"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["대상의대상"] = {
							["elements"] = {
								["기본값"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
						["보통"] = {
							["elements"] = {
								["기본값"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
					},
					["global"] = {
						["enabled"] = false,
					},
				},
				["Default"] = {
					["layouts"] = {
						["보통"] = {
							["elements"] = {
								["기본값"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
					},
				},
			},
		},
		["ThreatBar"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["ShadowOrbs"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["보통"] = {
							["background_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0, -- [4]
							},
							["location"] = "out_right",
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["보통"] = {
							["location"] = "out_right",
							["vertical"] = true,
							["background_color"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								0.259999990463257, -- [4]
							},
						},
					},
				},
			},
		},
		["Aggro"] = {
			["profiles"] = {
				["Normal"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
				["Wide"] = {
					["global"] = {
						["enabled"] = false,
					},
				},
			},
		},
		["HolyPower"] = {
			["profiles"] = {
				["Normal"] = {
					["layouts"] = {
						["보통"] = {
							["location"] = "out_right",
							["vertical"] = true,
						},
					},
				},
				["Wide"] = {
					["layouts"] = {
						["보통"] = {
							["location"] = "out_right",
							["vertical"] = true,
						},
					},
				},
			},
		},
	},
	["global"] = {
		["config_version"] = 2,
	},
	["profileKeys"] = {
		["킨델 - 듀로탄"] = "Wide",
		["쑤구리투 - 듀로탄"] = "Wide",
	},
	["profiles"] = {
		["Normal"] = {
			["groups"] = {
				["파티원 소환수"] = {
					["vertical_spacing"] = 75,
					["position_x"] = 230,
					["scale"] = 0.85,
					["size_y"] = 0.77,
					["unit_group"] = "partypet",
					["exists"] = true,
					["position_y"] = -92,
					["layout"] = "대상의대상",
					["enabled"] = true,
				},
				["파티"] = {
					["vertical_spacing"] = 40,
					["position_x"] = 105,
					["position_y"] = -80,
					["layout"] = "파티",
					["exists"] = true,
					["enabled"] = true,
				},
				["파티원 대상"] = {
					["vertical_spacing"] = 73,
					["position_x"] = 230,
					["scale"] = 0.85,
					["size_y"] = 0.85,
					["unit_group"] = "partytarget",
					["exists"] = true,
					["position_y"] = -68,
					["layout"] = "대상의대상",
					["enabled"] = true,
				},
			},
			["made_groups"] = true,
			["colors"] = {
				["power"] = {
					["MANA"] = {
						0.372549019607843, -- [1]
						0.525490196078431, -- [2]
					},
					["ENERGY"] = {
						nil, -- [1]
						0.972549019607843, -- [2]
						0.596078431372549, -- [3]
					},
				},
			},
			["class_order"] = {
				"WARRIOR", -- [1]
				"DEATHKNIGHT", -- [2]
				"PALADIN", -- [3]
				"PRIEST", -- [4]
				"SHAMAN", -- [5]
				"DRUID", -- [6]
				"ROGUE", -- [7]
				"MAGE", -- [8]
				"WARLOCK", -- [9]
				"HUNTER", -- [10]
				"MONK", -- [11]
			},
			["layouts"] = {
				["파티"] = {
					["size_x"] = 150,
					["bar_spacing"] = 1,
					["exists"] = true,
					["size_y"] = 40,
					["bar_padding"] = 1,
					["bar_texture"] = "Glamour7",
				},
				["주시대상"] = {
					["size_x"] = 150,
					["bar_padding"] = 1,
					["bar_spacing"] = 1,
					["level"] = 22,
					["size_y"] = 40,
					["exists"] = true,
					["bar_texture"] = "Glamour7",
				},
				["대상"] = {
					["exists"] = true,
					["bar_spacing"] = 1,
					["level"] = 15,
					["bar_padding"] = 1,
					["bar_texture"] = "Glamour7",
				},
				["대상의대상"] = {
					["size_x"] = 95,
					["bar_spacing"] = 1,
					["exists"] = true,
					["size_y"] = 25,
					["bar_padding"] = 1,
					["bar_texture"] = "Glamour7",
				},
				["소환수"] = {
					["size_x"] = 150,
					["bar_padding"] = 1,
					["bar_spacing"] = 1,
					["level"] = 12,
					["size_y"] = 40,
					["exists"] = true,
					["bar_texture"] = "Glamour7",
				},
				["보통"] = {
					["bar_texture"] = "Glamour7",
					["exists"] = true,
					["bar_padding"] = 1,
					["bar_spacing"] = 1,
				},
			},
			["minimap_icon"] = {
				["minimapPos"] = 273.50954102694,
				["hide"] = true,
			},
			["lock_movement"] = true,
			["units"] = {
				["targettargettarget"] = {
					["layout"] = "대상의대상",
					["position_x"] = 352,
					["position_y"] = 220,
				},
				["focustarget"] = {
					["scale"] = 0.899999976158142,
					["layout"] = "대상의대상",
					["position_x"] = 350,
					["position_y"] = 405,
				},
				["targettarget"] = {
					["layout"] = "대상의대상",
					["position_x"] = 248,
					["position_y"] = 220,
				},
				["player"] = {
					["position_x"] = -300,
					["position_y"] = 255,
				},
				["focus"] = {
					["layout"] = "주시대상",
					["position_x"] = 320,
					["position_y"] = 435,
				},
				["target"] = {
					["layout"] = "대상",
					["position_x"] = 300,
					["position_y"] = 255,
				},
				["pettarget"] = {
					["enabled"] = false,
					["position_x"] = -430,
					["position_y"] = -108,
					["scale"] = 0.85,
					["layout"] = "대상의대상",
				},
				["focustargettarget"] = {
					["enabled"] = false,
					["position_x"] = 140,
					["position_y"] = -218,
					["scale"] = 0.85,
					["layout"] = "대상의대상",
				},
				["pet"] = {
					["layout"] = "소환수",
					["position_x"] = -325,
					["position_y"] = 325,
				},
			},
		},
		["Wide"] = {
			["class_order"] = {
				"WARRIOR", -- [1]
				"DEATHKNIGHT", -- [2]
				"PALADIN", -- [3]
				"PRIEST", -- [4]
				"SHAMAN", -- [5]
				"DRUID", -- [6]
				"ROGUE", -- [7]
				"MAGE", -- [8]
				"WARLOCK", -- [9]
				"HUNTER", -- [10]
				"MONK", -- [11]
			},
			["layouts"] = {
				["파티"] = {
					["bar_spacing"] = 1,
					["size_x"] = 190,
					["size_y"] = 40,
					["exists"] = true,
					["bar_padding"] = 1,
					["bar_texture"] = "Glamour7",
				},
				["주시대상"] = {
					["bar_spacing"] = 1,
					["level"] = 22,
					["bar_padding"] = 1,
					["size_y"] = 50,
					["exists"] = true,
					["size_x"] = 165,
					["bar_texture"] = "Glamour7",
				},
				["대상"] = {
					["bar_spacing"] = 1,
					["level"] = 15,
					["bar_padding"] = 1,
					["size_y"] = 65,
					["exists"] = true,
					["size_x"] = 240,
					["bar_texture"] = "Glamour7",
				},
				["대상의대상"] = {
					["bar_spacing"] = 1,
					["size_x"] = 112,
					["size_y"] = 25,
					["exists"] = true,
					["bar_padding"] = 1,
					["bar_texture"] = "Glamour7",
				},
				["소환수"] = {
					["bar_spacing"] = 1,
					["level"] = 12,
					["bar_padding"] = 1,
					["size_y"] = 50,
					["exists"] = true,
					["size_x"] = 165,
					["bar_texture"] = "Glamour7",
				},
				["보통"] = {
					["bar_spacing"] = 1,
					["size_x"] = 240,
					["size_y"] = 65,
					["exists"] = true,
					["bar_padding"] = 1,
					["bar_texture"] = "Glamour7",
				},
			},
			["made_groups"] = true,
			["units"] = {
				["targettargettarget"] = {
					["position_x"] = 437,
					["position_y"] = 225,
					["layout"] = "대상의대상",
				},
				["focustarget"] = {
					["position_x"] = 440,
					["scale"] = 0.899999976158142,
					["position_y"] = 415,
					["layout"] = "대상의대상",
				},
				["targettarget"] = {
					["position_x"] = 308,
					["position_y"] = 225,
					["layout"] = "대상의대상",
				},
				["player"] = {
					["position_x"] = -372,
					["position_y"] = 260,
				},
				["focus"] = {
					["position_x"] = 410,
					["position_y"] = 445,
					["layout"] = "주시대상",
				},
				["target"] = {
					["position_x"] = 372,
					["position_y"] = 260,
					["layout"] = "대상",
				},
				["pet"] = {
					["position_x"] = -335,
					["position_y"] = 335,
					["layout"] = "소환수",
				},
				["focustargettarget"] = {
					["enabled"] = false,
					["position_x"] = 140,
					["scale"] = 0.85,
					["position_y"] = -218,
					["layout"] = "대상의대상",
				},
				["pettarget"] = {
					["enabled"] = false,
					["position_x"] = -430,
					["scale"] = 0.85,
					["position_y"] = -108,
					["layout"] = "대상의대상",
				},
			},
			["minimap_icon"] = {
				["minimapPos"] = 273.50954102694,
				["hide"] = true,
			},
			["colors"] = {
				["power"] = {
					["ENERGY"] = {
						nil, -- [1]
						0.972549019607843, -- [2]
						0.596078431372549, -- [3]
					},
					["MANA"] = {
						0.372549019607843, -- [1]
						0.525490196078431, -- [2]
					},
				},
			},
			["groups"] = {
				["파티원 대상"] = {
					["vertical_spacing"] = 73,
					["position_x"] = 270,
					["scale"] = 0.85,
					["enabled"] = true,
					["layout"] = "대상의대상",
					["size_y"] = 0.85,
					["unit_group"] = "partytarget",
					["exists"] = true,
					["position_y"] = -68,
				},
				["파티원 소환수"] = {
					["vertical_spacing"] = 75,
					["position_x"] = 270,
					["scale"] = 0.85,
					["enabled"] = true,
					["layout"] = "대상의대상",
					["size_y"] = 0.77,
					["unit_group"] = "partypet",
					["exists"] = true,
					["position_y"] = -92,
				},
				["파티"] = {
					["vertical_spacing"] = 40,
					["position_x"] = 120,
					["enabled"] = true,
					["layout"] = "파티",
					["exists"] = true,
					["position_y"] = -80,
				},
			},
			["lock_movement"] = true,
		},
		["Default"] = {
			["groups"] = {
				["파티"] = {
					["enabled"] = true,
					["exists"] = true,
				},
				["파티원 소환수"] = {
					["enabled"] = true,
					["exists"] = true,
					["unit_group"] = "partypet",
				},
			},
			["class_order"] = {
				"WARRIOR", -- [1]
				"DEATHKNIGHT", -- [2]
				"PALADIN", -- [3]
				"MONK", -- [4]
				"PRIEST", -- [5]
				"SHAMAN", -- [6]
				"DRUID", -- [7]
				"ROGUE", -- [8]
				"MAGE", -- [9]
				"WARLOCK", -- [10]
				"HUNTER", -- [11]
			},
			["layouts"] = {
				["보통"] = {
					["exists"] = true,
				},
			},
			["made_groups"] = true,
			["units"] = {
				["player"] = {
				},
				["targettargettarget"] = {
				},
				["focus"] = {
				},
				["target"] = {
				},
				["focustarget"] = {
				},
				["pet"] = {
				},
			},
		},
	},
}
