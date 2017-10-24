local E, _, DF = unpack(ElvUI)

local L = {}

L.CLICKSET_MOUSE_ERR = "마우스 휠 기능은 디버프 해제 기능을 사용하기때문에 사용을 금지해주세요！"
L.CLICKSET_TIP1 = "아래로 마우스 휠 위 DEBUFF"
L.CLICKSET_TIP2 = "화면 확대 축소 Alt + 마우스 휠 변경"
L.CLICKSET_TIP3 = "이 기능 미 사용시 [캐스팅 마우스] 설정후 사용하세요"


local Debuffmw = CreateFrame("Frame")
Debuffmw:RegisterEvent("PLAYER_ENTERING_WORLD")
Debuffmw:SetScript("OnEvent", function(self, event)
	Debuffmw:UnregisterEvent("PLAYER_ENTERING_WORLD")
	if E.db["euiscript"].dispel ~= true then return end
	if select(2, GetNumMacros()) > 34 then
		DEFAULT_CHAT_FRAME:AddMessage(L.CLICKSET_MOUSE_ERR,1,0,0)
		return;
	end
	if GetMacroInfo("EuiDebuffa") then DeleteMacro("EuiDebuffa") end
	if GetMacroInfo("EuiDebuffb") then DeleteMacro("EuiDebuffb") end	
	local _, class = UnitClass("player")
	local CanDispel = {
		PRIEST = { 527, 528, },
		SHAMAN = { 370, 51886, },
		PALADIN = { 4987, },
		MAGE = { 475, },
		DRUID = { 2782, 88423},
		MONK = { 115450, },
		ROGUE = {},
		HUNTER = {},
		WARRIOR = {},
		WARLOCK = {},
		DEATHKNIGHT = {},
	}

	local macroa, macrob
	local indexa, indexb
	if CanDispel[class][1] and IsSpellKnown(CanDispel[class][1]) then
		macroa = GetSpellInfo(CanDispel[class][1]) or ""
		index_a = CreateMacro("EuiDebuffa", 1, "/cast [@mouseover] "..macroa..";", 1)
		local a=SetBinding("ALT-MOUSEWHEELUP", "CAMERAZOOMIN")
		local b=SetBinding("ALT-MOUSEWHEELDOWN", "CAMERAZOOMOUT")
		if a and b then
			SaveBindings(2)
			DEFAULT_CHAT_FRAME:AddMessage(L.CLICKSET_TIP1,1,0,0)
			DEFAULT_CHAT_FRAME:AddMessage(L.CLICKSET_TIP2,1,0,0)
			DEFAULT_CHAT_FRAME:AddMessage(L.CLICKSET_TIP3,1,0,0)
		end
	end
	if CanDispel[class][2] and IsSpellKnown(CanDispel[class][2]) then
		macrob = GetSpellInfo(CanDispel[class][2]) or ""
		index_b = CreateMacro("EuiDebuffb", 1, "/cast [@mouseover] "..macrob..";", 1)
	end
	if index_a then SetBindingMacro("MOUSEWHEELUP", index_a) end
	if index_b then SetBindingMacro("MOUSEWHEELDOWN", index_b) end
	if index_a and not index_b then SetBindingMacro("MOUSEWHEELDOWN", index_a) end
	if index_a or index_b then SaveBindings(2) end
end)