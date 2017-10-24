local bugGrabberParentAddon, parentAddonTable = ...
local addon = parentAddonTable.BugGrabber
-- Bail out in case we didn't load up for some reason, which
-- happens for example when an embedded BugGrabber finds a
-- standalone !BugGrabber addon.
if not addon then return end

-- We don't need to bail out here if BugGrabber has been loaded from
-- some other embedding addon already, because :LoadTranslations is
-- only invoked on login. All we do is replace the method with a new
-- one that will never be invoked.

function addon:LoadTranslations(locale, L)
	if locale == "zhTW" then
		L["ADDON_CALL_PROTECTED"] = "[%s] 插件 '%s' 嘗試調用保護功能 '%s'。"
		L["ADDON_CALL_PROTECTED_MATCH"] = "^%[(.*)%] (插件 '.*' 嘗試調用保護功能 '.*'.)$"
		L["ADDON_DISABLED"] = "|cffffff00!BugGrabber和%s不能共存;%s已經被強制停用。如果你要使用它,你可能需要登出，然後禁用!BugGrabber，再啟用%s。|r"
		L["BUGGRABBER_STOPPED"] = "|cffffff00你的UI有太多的錯誤。這可能導致糟糕的遊戲體驗。禁用或是更新錯誤的插件如果你不想看到再次看到這個訊息。|r"
		L["ERROR_DETECTED"] = "%s |cffffff00已捕捉，點擊連結以獲得更多訊息。|r"
		L["ERROR_UNABLE"] = "|cffffff00!BugGrabber 本身無法檢索其他玩家的錯誤。請安裝 BugSack 或類似的錯誤顯示插件，可能會包含這些功能。|r"
		L["NO_DISPLAY_1"] = "|cffffff00你似乎沒有與 !BugGrabber 一起運行的錯誤顯示插件。雖然斜線命令訪問錯誤報告，但錯誤顯示插件可以以更快捷的方式幫助您管理這些錯誤。|r"
		L["NO_DISPLAY_2"] = "|cffffff00標準的錯誤顯示插件名叫 BugSack，可以在找到 !BugGrabber 的網站上找到它。|r"
		L["NO_DISPLAY_STOP"] = "|cffffff00如果你不希望再次被提醒，請輸入 /stopnag。|r"
		L["STOP_NAG"] = "|cffffff00!BugGrabber將不再提示缺失錯誤顯示插件資訊直到下個版本發佈。|r"
		L["USAGE"] = "用法：/buggrabber <1-%d>。"
	elseif locale == "koKR" then
		L["ADDON_CALL_PROTECTED"] = "[%s] 애드온 '%s' 보호된 함수 호출 '%s'."
        L["ADDON_CALL_PROTECTED_MATCH"] = "^%[(.*)%] (애드온 '.*' 보호된 함수 호출 '.*'.)$"
        L["ADDON_DISABLED"] = "|cffffff7fBugGrabber|r와 |cffffff7f%s|r는 함께 공존할 수 없습니다. |cffffff7f%s|r에 의해 중지되었습니다. 만약 당신이 원하면, 접속을 종료한 후, |cffffff7fBugGrabber|r를 중지하고 |cffffff7f%s|r를 재활성하세요." -- Needs review
        L["BUGGRABBER_STOPPED"] = "이것은 초당 %d개 이상의 오류를 발견하였기에 |cffffff7fBugGrabber|r의 오류 캡쳐가 중지되었으며, 캡쳐는 %d초 후 재개됩니다." -- Needs review
        L["NO_DISPLAY_1"] = "|cffff4411당신은 미표시 애드온과 함께 !BugGrabber를 실행할 것으로 보입니다. !BugGrabber는 게임 오류 확인을 위한 슬래시 명령어를 제공하고 있지만, 표시 애드온은 당신이 더 편리한 방법으로 이러한 오류를 관리할 수 있습니다.|r" -- Needs review
        L["NO_DISPLAY_2"] = "|cffff4411표준 !BugGrabber 표시는|r |cff44ff44BugSack|r|cffff4411으로 불러오며, 그리고 아마도 당신은 !BugGrabber를 발견한 동일 사이트에서 찾을 수 있습니다.|r" -- Needs review
        L["NO_DISPLAY_STOP"] = "|cffff4411만약 당신이 이것에 대해 다시 떠올리고 싶지 않다면, |cff44ff44/stopnag|r|cffff4411를 실행하세요.|r" -- Needs review
        L["STOP_NAG"] = "|cffff4411!BugGrabber는 오류에 관해 성가시게 하지 않으며 |r|cff44ff44BugSack|r|cffff4411의 다음 패치때까지만 입니다.|r" -- Needs review
        L["USAGE"] = "사용법: /buggrabber <1-%d>." -- Needs review
	end
end

