local E, L, V, P, G, _ = unpack(select(2, ...)); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore
local S = E:GetModule('Skins')

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.objective ~= true then return end
	local letter = '+';
	if GetNumQuestWatches() > 0 then letter = '-'; end
	E.Skins:HandleCloseButton(ObjectiveTrackerFrame.HeaderMenu.MinimizeButton, false, letter)

	hooksecurefunc("ObjectiveTracker_Collapse", function()
		ObjectiveTrackerFrame.HeaderMenu.MinimizeButton.text:SetText("+")
		if EuiAutoQuestButton then EuiAutoQuestButton:Hide(); end
	end)

	hooksecurefunc("ObjectiveTracker_Expand", function()
		ObjectiveTrackerFrame.HeaderMenu.MinimizeButton.text:SetText("-")
		if EuiAutoQuestButton then EuiAutoQuestButton:Show(); end
	end)
	
	for _, headerName in pairs({"QuestHeader", "AchievementHeader", "ScenarioHeader"}) do
		local header = ObjectiveTrackerFrame.BlocksFrame[headerName].Background:Hide()
	end	
	
	local function UpdateButton()
		if GetNumQuestWatches()>0 then
			ObjectiveTrackerFrame.HeaderMenu.MinimizeButton.text:SetText("-")
		else
			ObjectiveTrackerFrame.HeaderMenu.MinimizeButton.text:SetText("+")
		end
	end
	
	local f = CreateFrame("Frame")
	f:RegisterEvent("QUEST_WATCH_LIST_CHANGED", UpdateButton);
	f:RegisterEvent("QUEST_LOG_UPDATE", UpdateButton);	
end

S:RegisterSkin('ElvUI', LoadSkin)