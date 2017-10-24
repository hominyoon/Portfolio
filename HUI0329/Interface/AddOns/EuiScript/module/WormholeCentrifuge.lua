local E, L = unpack(ElvUI)
-- Title: Wormhole Centrifuge
-- Version: 1.4
-- Author: Resike
local locale = GetLocale()
if locale == "zhCN" then
	L["The wormhole is spinning really fast.  You'll have to jump first and hope for the best."] = "虫洞正在飞速旋转。你只能先跳下去，然后乞求老天保佑。"
	L["Frostfire Ridge"] = "霜火岭"
	L["Gorgrond"] = "戈尔隆德"
	L["Nagrand"] = "纳格兰"
	L["Shadowmoon Valley"] = "影月谷"
	L["Spires of Arak"] = "阿兰卡峰"
	L["Talador"] = "塔拉多"
elseif locale == "koKR" then
	L["The wormhole is spinning really fast.  You'll have to jump first and hope for the best."] = "The wormhole is spinning really fast.  You'll have to jump first and hope for the best。"
	L["Frostfire Ridge"] = "얼음 불꽃마루"
	L["Gorgrond"] = "Gorgrond"
	L["Nagrand"] = "나그 란드"
	L["Shadowmoon Valley"] = "어둠달 골짜기"
	L["Spires of Arak"] = "아라크의 첨탑"
	L["Talador"] = "탈라도르"
else
	L["The wormhole is spinning really fast.  You'll have to jump first and hope for the best."] = "The wormhole is spinning really fast.  You'll have to jump first and hope for the best."
	L["Spires of Arak"] = "Spires of Arak"
	L["Talador"] = "Talador"
	L["Shadowmoon Valley"] = "Shadowmoon Valley"
	L["Nagrand"] = "Nagrand"
	L["Gorgrond"] = "Gorgrond"
	L["Frostfire Ridge"] = "Frostfire Ridge"
end

local Zones = {
	[1] = L["Spires of Arak"],
	[2] = L["Talador"],
	[3] = L["Shadowmoon Valley"],
	[4] = L["Nagrand"],
	[5] = L["Gorgrond"],
	[6] = L["Frostfire Ridge"]
}

local frame

hooksecurefunc(GossipFrame, "Show", function(self)
	if GetGossipText() == L["The wormhole is spinning really fast.  You'll have to jump first and hope for the best."] then
		frame = true
	end
end)

hooksecurefunc(GossipFrame, "Hide", function(self)
	frame = nil
end)

for i = 1, #Zones do
	local setting
	hooksecurefunc(_G["GossipTitleButton" .. i], "SetText", function(self)
		if not setting and frame then
			setting = true
			_G["GossipTitleButton" .. i]:SetText(Zones[i])
			setting = nil
		end
	end)
end