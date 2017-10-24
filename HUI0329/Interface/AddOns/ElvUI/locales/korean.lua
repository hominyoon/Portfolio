﻿local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("ElvUI", "koKR")
if not L then return end

--Copy the entire english file here and set values = to something
--[[
	Where it says:
	L["Auto Scale"] = true
	
	That just means thats default, you can still set it to say something else like this
	L["Auto Scale"] = "Blah blah, speaking another language, blah blah"
	
	You can post the file here for it to be added to default ElvUI files: http://www.tukui.org/forums/forum.php?id=88
]]
--Static Popup
do
	L["Find BigFoot or DuoWan is loaded! please delete its."] = true;
	L["ElvUI needs to perform database optimizations please be patient."] = "당신은 2014 년 만우절 이벤트 경험하고 싶은가요?";
	L["Do you enjoy the new ElvUI?"] = "새 EUI 색을 좋아하나요?";
	L["Yes, Keep Changes!"] = "예, 변경 사항을 저장합니다!";
	L["No, Revert Changes!"] = "아니, 변경 사항을 취소합니다! "
	L["Type /aprilfools to revert to old settings."] = "키 입력/Aprilfools 이전 설정으로 되돌아갑니다";
	L["You have changed your UIScale, however you still have the AutoScale option enabled in ElvUI. Press accept if you would like to disable the Auto Scale option."] = "당신은 UI 크기 조정 비율을 변경이 필요하면, 당신이 사용하도록 설정EUI자동 축소,포인트 결정은 자동 크기 조정을 해제하고 인터페이스를 다시로드 필요합니다.";
	L["One or more of the changes you have made require a ReloadUI."] = "하나 이상의 변경사항을 적용하려면 UI를 재시작해야 됩니다.";
	L["A taint has occured that is preventing you from using your talents/glyphs, this can happen if you've inspected someone. Unfortionatly theres nothing we can do to fix it, please reload your ui and try again."] = true;
	L['Oh lord, you have got ElvUI and Tukui both enabled at the same time. Select an addon to disable.'] = "Tukui는 EUI와 동시에 사용할 수 없습니다,사용 중지하시기 바랍니다 Tukui";
	L["Are you sure you want to reset all the settings on this profile?"] = "현재 사용중인 프로필을 초기화 하시겠습니까?";
	L["One or more of the default Blizzard AddOns are disabled. This can cause errors and other issues. We recommend you re-enable the AddOns. Re-enable Blizzard AddOns now?"] = "하나 이상의 플러그인은 기본적 블리자드으로 사용된다。이것은 오류 및 기타 문제가 발생할 수 있습니다, 플러그인을 다시 사용하는 것이 좋습니다。블리자드는 플러그인을 다시 사용하도록 설정？";
end

L["Select the type of aura system you want to use with ElvUI's unitframes. The integrated system utilizes both aura-bars and aura-icons. The icons only system will display only icons and aurabars won't be used. The classic system will configure your auras to how they were pre-v4."] = true;
L["If you have an icon or aurabar that you don't want to display simply hold down shift and right click the icon for it to disapear."] = "'아이콘' 후광 바 모듈을 사용할 수 없게됩니다,프레임 및 대상 플레이어 프레임 프레임 자체 버프 디버프를 사용";
L["Aura Watch module"] = "'기술 모니터링' 후광 바 모듈을 사용할 수 없게됩니다,기술을 모니터링 모듈 사용,다시로드 인터페이스를 적용후 사용해주세요";
L["|cffff0000Error -- Addon 'ElvUI_Config' not found or is disabled.|r"] = "|cffff0000错误 -- EUI 플러그인 설정 인터페이스를 찾을 수 없습니다 .|r"
--Minimap
L['Always Display'] = "항상 표시";
L['Location Text'] = "지역 텍스트";
L["Minimap Buttons"] = "미니 맵 버튼";
L['Minimap Mouseover'] = "마우스 오버";
L["Top Left"] = "왼쪽";
L["Top Right"] = "오른쪽";
L["Bottom Left"] = "왼쪽 하단";
L["Bottom Right"] = "오른쪽 하단";
L["Bottom"] = "하단";
L["Left"] = '왼쪽';
L["Top"] = '상단';
L["Right"] = '오른쪽';
L["Scale"] = '크기';
L['LFG Queue'] = '인던찾기';
L['Instance Difficulty'] = '인던 난이도';

--Distributor
L['ExtraButton Scale'] = "ExtraButton 크키";
L['Clear Extra Button'] = "Clear Extra Button";
L["Loot Roll's width"] = "ROLL프레임 길이";
L["Loot Roll's height"] = "ROLL프레임 높이";
L['reset loot size'] = "리셋 ROLL 프레임 크기";
L["Multi-Monitor Support"] = "멀티 모니터 지원";
L["Attempt to support eyefinity/nvidia surround."] = "다중모니터 기술인 아이피니티 기능이나 nvidia 서라운드 기능 지원을 적용합니다."
L["This feature will allow you to transfer, settings to other characters."] = "이 기능은 당신이 다른 역할에 구성을 전송 할 수 있습니다.";
L["Share Current Profile"] = "현재 구성 파일을 공유 할 수 있습니다";
L["Sends your current profile to your target."] = "현재 구성 파일은 목표로 전송됩니다.";
L["You must be targeting a player."] = "당신은 플레이어로 선택한 대상해야합니다";
L["Must be in group with the player if he isn't on the same server as you."] = true;
L["Share Filters"] = "필터 공유";
L["Sends your filter settings to your target."] = "목표에 필터 설정을 보냅니다";
L['%s is attempting to share the profile %s with you. Would you like to accept the request?'] = "%s 설정 파일을 공유 %s 여기 있습니다, 당신은 요청을 수락 하시겠습니까? ";
L['Profile download complete from %s, but the profile %s already exists. Change the name or else it will overwrite the existing profile.'] = true;
L['%s is attempting to share his filters with you. Would you like to accept the request?'] = true;
L["Data From: %s"] = "데이터: %s";
L['Profile download complete from %s, would you like to load the profile %s now?'] = true;
L['Filter download complete from %s, would you like to apply changes now?'] = true;
L['Your profile was successfully recieved by the player.'] = "당신의 설정 파일 성공적인 플레이어가 받아 들일 수 있습니다";
L['Profile request sent. Waiting for response from player.'] = "요청을 보낼 수있는 구성 파일 로 플레이어를 기다려주세요.";
L['Request was denied by user.'] = "요청은 거부되었습니다";
L["Lord! It's a miracle! The download up and vanished like a fart in the wind! Try Again!"] = "다운로드 중단, 다시 시도하십시오!";
L['EuiInfoBar'] = "EUI상단 바";
L["Can't detected euiscript addon, please reenable this addon!."] = "EUI 향상 모듈을 감지 할 수없는, 플러그가 존재하고 활성화되어 있는지 확인하십시오";

--General
do
	L["Bonus Reward Position"] = "보너스 퀘스트 프레임 위치";
	L["Position of bonus quest reward frame relative to the objective tracker."] = '대상 위치에 보너스 퀘스트 추적 프레임 위치를 설정합니다';
	L["Auto"] = "자동";
	L['Objective Frame Height'] = "추적 프레임 높이";
	L["Height of the objective tracker. Increase size to be able to see more objectives."] = true;
	L["Quest Font Size"] = "퀘스트 글꼴 크기";
	L['AFK Mode'] = "자리 비움 모드";
	L["When you go AFK display the AFK screen."] = "EUI AFK 모드 재생 됩니다";
	L['Replace Blizzard Fonts'] = "블리자드 대체 글꼴 설정";
	L['Replaces the default Blizzard fonts on various panels and frames with the fonts chosen in the Media section of the ElvUI config. NOTE: Any font that inherits from the fonts ElvUI usually replaces will be affected as well if you disable this. Enabled by default.'] = '블리자드의 기본 글꼴 설정을 바꾸기,코어를 비활성화하면 충격 EUI을 가질 수있다 ,이 옵션은 기본적으로 활성화되어 있습니다.';
	L["Raid Browser"] = "공격대 찾기";
	L["hideDisableFrame"] = "비활성 프레임 숨기기";
	L["Farm Mode"] = "미니맵 확대/축소 모드";
	L['Pixel Perfect'] = "픽셀 테마 (원본 스킨)";
	L['Disable Omnicc Show'] = "Omnicc(미 사용)";
	L["Hide Error Text"] = "오류 텍스트 숨기기";
	L["Hides the red error text at the top of the screen while in combat."] = "화면의 상단에있는 빨간색 오류 텍스트를 숨 깁니다 [전투 중]";
	L['Raid Layout'] = "공격대 레이아웃";
	L['Set RaidFrame Style'] = "파티&공격대 위치설정";
	L['CENTER, SINGLE, RIGHT, DEFAULT'] = "중앙 모드_화면 중앙에 공격대창 위치;\n 우측 모드_그리드 처럼 우측 정렬;\n좌측모드_그리드 처럼 좌측 정렬"
	L['Center Style'] = "중앙 모드";
	L['Single Style'] = "하단 집중형 스타일";
	L['Right Style'] = "우측 모드";
	L['Default Style'] = "좌측 모드";
	L['Skin Backdrop'] = "배경 스킨";
	L['Remove Backdrop'] = "배경 제거";
	L['Dark'] = "블랙 테마";
	L["High Resolution"] = "고 해상도";
	L['Low Resolution'] = "저 해상도";
	L['Nudge'] = "미세 조정";
	L['Change settings for the display of the location text that is on the minimap.'] = "작은지도 텍스트 디스플레이 이름 변경";
	L['Hide'] = "숨기기";
	L['Top Panel'] = "상단 장식 패널";
	L['Display a panel across the top of the screen. This is for cosmetic only.'] = "화면의 상단에 장식 패널을 사용합니다";
	L['Bottom Panel'] = "하단 패널 표시"
	L['Display a panel across the bottom of the screen. This is for cosmetic only.'] = "화면의 하단에 장식 패널을 사용합니다";
	L["Menu"] = "메인 메뉴";
	L["RaidTool"] = "팀 도구";
	L["Shortcuts"] = "바로 가기";
	L["UF Style"] = "프레임 스타일";
	L["AB Style"] = "행동바 스타일";
	L["Name Font"] = "폰트 선택";
	L["The font that appears on the text above players heads. |cffFF0000WARNING: This requires a game restart or re-log for this change to take effect.|r"] = "이 폰트 이름 플레이어 제어.|cffFF0000경고:이 사항을 적용은 다시 재 시작이 필요합니다.|r";
	L['Enable/Disable the minimap. |cffFF0000Warning: This will prevent you from seeing the consolidated buffs bar, and prevent you from seeing the minimap datatexts.|r'] = "사용 / 작은지도를 사용하지 않도록 설정, |cffFF0000경고: 이것은 연결에 영향을 미칩니다BUFF정보 텍스트는 문서의 표시와 작은지도 아래에 표시";
	L["Version"] = "버전";
	L["Enable"] = "활성화";

	L["General"] = "일반 옵션";
	L["ELVUI_DESC"] = "ElvUI는 WoW에서 지원하는 대부분의 기능을 대체하는 통합 애드온입니다."
	L["Auto Scale"] = "UI크기 자동조절"
		L["Automatically scale the User Interface based on your screen resolution"] = "현재의 화면 해상도에 따라 자동으로 UI의 크기를 조절합니다."
	L["Scale"] = "크기";
		L["Controls the scaling of the entire User Interface"] = "UI 전체의 크기를 조절합니다.";
	L["None"] = "없음";
	L["You don't have permission to mark targets."] = "레이드 아이콘을 지정할 권한이 없습니다.";
	L['LOGIN_MSG'] = '%sElvUI: EUI Edit %s%s|r 에 오신걸 환영합니다. /ec를 입력하시면 게임 내 설정창이 표시됩니다.만약 기술지원이 필요하면 다음을 방문해주세요.[인벤 애드온 포럼 TukUI 사용자 포럼으로 오세요]';
	L['Login Message'] = '로그인 메시지';
	
	L["Reset Anchors"] = "프레임 초기화";
	L["Reset all frames to their original positions."] = "모든 프레임을 초기 위치로 되돌립니다.";
	
	L['Install'] = "설치 가이드";
	L['Run the installation process.'] = "설치 마법사를 실행합니다.";
	
	L["Credits"] = "크레딧 (Credits)";
	L['ELVUI_CREDITS'] = "I would like to give out a special shout out to the following people for helping me maintain this addon with testing and coding and people who also have helped me through donations. Please note for donations I'm only posting the names of people who PM'd me on the forums, if your name is missing and you wish to have your name added please PM me."
	L['EUI_DONATOR'] = "여기 EUI 통해 일부 기증자의 목록입니다, 감사합니다！";
	L['Coding:'] = "코딩:";
	L['Testing:'] = "테스팅:";
	L['Donations:'] = "기부:";
	
	--Installation
	L["Aura Bars & Icons"] = "오라 바 & 아이콘";
	L["Welcome to ElvUI version %s!"] = "ElvUI 버전 %s에 오신 것을 환영합니다!"
	L["This install process will help you learn some of the features in ElvUI has to offer and also prepare your user interface for usage."] = "이 설치과정은 UI의 사용에 대한 준비를 제공함과 동시에 몇가지의 구성요소에 대해 배울 수 있습니다."
	L["The in-game configuration menu can be accesses by typing the /ec command or by clicking the 'C' button on the minimap. Press the button below if you wish to skip the installation process."] = "게임 내 설정메뉴는 /ec를 입력하시거나 미니맵 옆의 'C' 버튼을 클릭하시면 됩니다. 이 과정을 건너뛰시려면 아래 버튼을 누르십시오.";
	L["Please press the continue button to go onto the next step."] = "다음 단계로 가시려면 계속 버튼을 누르세요.";
	L["Skip Process"] = "건너뛰기";
	L["ElvUI Installation"] = "ElvUI 설치";
	
	L["CVars"] = "기본 대화창 설정"
	L["This part of the installation process sets up your World of Warcraft default options it is recommended you should do this step for everything to behave properly."] = "이 설치 단계는 당신의 WoW 기본 설정을 바꿔줍니다. 이 과정은 다른 단계에 있어서도 중요하니 설치를 강력히 추천합니다.";
	L["Please click the button below to setup your CVars."] = "저장된 대화창 설정을 적용하시려면 아래 설치 버튼을 누르세요."
	L["Setup CVars"] = "저장된 대화창 설정 설치"
	
	L["Importance: |cff07D400High|r"] = "중요도: |cff07D400높음|r";
	L["Importance: |cffD3CF00Medium|r"] = "중요도: |cffD3CF00중간|r";

	L["Chat"] = "대화창"
	L["This part of the installation process sets up your chat windows names, positions and colors."] = "이 설치 단계는 당신의 대화창의 위치, 이름, 색상을 설정합니다."
	L["The chat windows function the same as Blizzard standard chat windows, you can right click the tabs and drag them around, rename, etc. Please click the button below to setup your chat windows."] = "이 대화창의 기능은 블리자드의 기본과 같아서, 탭 우클릭으로 모든 기능을 설정 가능합니다. 아래 버튼을 누르셔서 대화창을 설치하세요.";
	L["Setup Chat"] = "대화창 설치"
	L['AutoHide Panels'] = "자동 패널 숨기기";
	L['When a chat frame does not exist, hide the panel.'] = "채팅 프레임이 존재하지 않는 경우, 패널에게 숨기기";
	
	L["Installation Complete"] = "설치 완료";
	L["You are now finished with the installation process. Bonus Hint: If you wish to access blizzard micro menu, middle click on the minimap. If you don't have a middle click button then hold down shift and right click the minimap. If you are in need of technical support please visit us at www.tukui.org."] = "이제 설치가 완료되었습니다. TIP: 블리자드 기본 메뉴바에 접근하시려면 미니맵에 휠클릭(미들클릭) 또는 쉬프트 + 우클릭을 하세요. 만약 기술적인 지원이 필요하면 다음을 방문하세요. www.tukui.org";
	L["Please click the button below so you can setup variables and ReloadUI."] = "아래 버튼을 누르시면 설치를 마무리하고 UI를 재시작합니다.";
	L["Finished"] = "마침"
	L["CVars Set"] = "기본 대화창 설정 적용"
	L["Chat Set"] = "대화창 설정"
	L['Trade'] = "거래";
	
	L['Panels'] = "패널";
	L['Announce Interrupts'] = "차단 성공시 알림"
	L['Announce when you interrupt a spell to the specified chat channel.'] = "주문 차단에 성공하면 여기에서 설정한 채널로 차단성공을 알립니다."
	L["Movers unlocked. Move them now and click Lock when you are done."] = "잠금 해제. 지금 이동을하면 모든 작업이 완료되면 잠금을 클릭합니다.";
	L['Lock'] = "잠금";
	L["This can't be right, you must of broke something! Please turn on lua errors and report the issue to Elv http://www.tukui.org/forums/forum.php?id=146"] = "정상 작동하지 않습니다. 다음 주소를 통해 Elv에게 Lua 오류를 제보해 주세요. http://www.tukui.org/forums/forum.php?id=146";
	
	L['Panel Width'] = "패널 세로길이"
	L['Panel Height'] = "패널 세로길이"
	L['PANEL_DESC'] = "좌우 패널의 크기를 조절합니다. 이 값에 따라 고정되어 있는 채팅창과 통합가방/은행 프레임의 크기도 변경됩니다."
	L['URL Links'] = "URL 주소 강조"
	L['Attempt to create URL links inside the chat.'] = "대화 내역에 URL 주소가 있으면 강조하고 클릭 시 복사할 수 있게끔 합니다."
	L['Short Channels'] = "채널명 요약"
	L['Shorten the channel names in chat.'] = "채팅창의 채널명을 간추려 표시합니다."
	L["Are you sure you want to reset every mover back to it's default position?"] = "모든 프레임을 기본 위치로 초기화 하시겠습니까?";

	L['Panel Backdrop'] = "패널 배경 표시"
	L['Toggle showing of the left and right chat panels.'] = "패널의 배경 표시 여부를 결정합니다."
	L['Hide Both'] = "둘 다 숨기기"
	L['Show Both'] = "둘 다 배경 표시"
	L['Left Only'] = "좌측 배경만 표시"
	L['Right Only'] = "우측 배경만 표시"	
	
	L['Tank'] = "탱커";
	L['Healer'] = "힐러";
	L["Physical DPS"] = "근접 딜러";
	L['Caster DPS'] = "원거리 딜러";
	L["Primary Layout"] = "주 레이아웃";
	L["Secondary Layout"] = "보조 레이아웃";
	L["Primary Layout Set"] = "주 레이아웃 세팅";
	L["Secondary Layout Set"] = "보조 레이아웃 세팅";
	L["You can now choose what layout you wish to use for your primary talents."] = "사용하기 원하는 주 특성을 선택할 수 있습니다.";
	L["You can now choose what layout you wish to use for your secondary talents."] = "사용하기 원하는 보조 특성을 선택할 수 있습니다.";
	L["This will change the layout of your unitframes, raidframes, and datatexts."] = "이것은 유닛프레임, 공격대프레임, 정보글자의 레이아웃을 바꿔줍니다.";

	L['INCOMPATIBLE_ADDON'] = "%s 애드온은 ElvUI의 %s 모듈과 서로 호환되지 않습니다. 모듈이나 애드온 둘 중 하나를 꺼주셔야 합니다.";
	
	L['Panel Texture (Left)'] = "패널 텍스쳐 (왼쪽)"
	L['Panel Texture (Right)'] = "패널 텍스쳐 (오른쪽)"
	L['Specify a filename located inside the World of Warcraft directory. Textures folder that you wish to have set as a panel background.\n\nPlease Note:\n-The image size recommended is 256x128\n-You must do a complete game restart after adding a file to the folder.\n-The file type must be tga format.\n\nExample: Interface\\AddOns\\ElvUI\\media\\textures\\copy\n\nOr for most users it would be easier to simply put a tga file into your WoW folder, then type the name of the file here.'] = "Interface\\AddOns\\ElvUI\\media\\textures 폴더 안에 파일이 위치해야 합니다.\n\n주의:\n-이미지 크기는 256x128을 추천\n-파일을 등록 후 완전히 게임을 재시작해야 함.\n-파일 종류는 반드시 tga 포맷이어야 함.";
	L["Are you sure you want to disband the group?"] = "현재 그룹을 해산하시겠습니까?";
	
	L["Your version of ElvUI is out of date. You can download the latest version from www.tukui.org"] = "당신의 ElvUI 버전이 구버전입니다. EUI 애드온 은 와우인벤 애드온 자료실에서 받으실 수 있습니다.";
	
	L["Primary Texture"] = "기본 텍스쳐"
	L["The texture that will be used mainly for statusbars."] = "상태바에 기본적으로 사용되는 텍스쳐입니다."
	L["Secondary Texture"] = "보조 텍스쳐"
	L["This texture will get used on objects like chat windows and dropdown menus."] = "대화창이나 드롭메뉴에 사용되는 텍스쳐입니다."
	L['Accept Invites'] = "지인의 초대 자동수락"
	L['Automatically accept invites from guild/friends.'] = "길드원이나 친구가 플레이어를 파티를 초대하면 자동으로 수락합니다."
	L["Classcolor Theme"] = "직업 색상 테마";
	L["Transparent Theme"] = "투명 테마";
	L["Transparent Theme desc"] = "after the opening unitframe power offset would be failure, a proposal to close Health By Value, modify the value of Health color to red";
	L['Transparent Theme Style'] = "투명 테마 스타일";
	L["1:New Style;\n2:Old Style"] = "1:직업 색상;\n2:고전적 색상";
	L["One or more of the changes you have made will effect all characters using this addon. You will have to reload the user interface to see the changes you have made."] = "당신이 만든 하나 이상의 변경 사항이 addon를 사용하여 모든 문자에 영향을 것입니다. 당신은 변경 내용을 보려면 사용자 인터페이스를 다시로드해야합니다";
	L["Layout"] = "레이아웃";
	L["You can now choose what layout you wish to use based on your combat role."] = "이제 당신의 역할을 기반으로 사용하고자하는 어떤 레이아웃을 선택할 수있습니다";
	L["Resolution"] = "해결";
	L["Your current resolution is %s, this is considered a %s resolution."] = "현재 해상도는 % s입니다, 이것은 % s의 해상도로 간주됩니다";
	L["high"] = "높음";
	L["low"] = "낮은";
	L["Click the button below to resize your chat frames, unitframes, and reposition your actionbars."] = "채팅 프레임, unitframes를 크기를 조정하려면 아래 버튼을 클릭하고 actionbars를 재지정";
	L["Resolution Setup"] = "해상도 설정";
	L["This resolution requires that you change some settings to get everything to fit on your screen."] = "이 해결 방법은 모든 화면에 맞게 위해 몇 가지 설정을 변경";
	L["This resolution doesn't require that you change settings for the UI to fit on your screen."] = "이 해결 방법은 화면에 맞게 UI에 대한 설정을 변경할 필요가 없습니다";
	L["Importance: |cffFF0000Low|r"] = "중요성: |cffFF0000낮은|r";
	L["This is completely optional."] = "이것은 선택 사항입니다";
	L["You may need to further alter these settings depending how low you resolution is."] = "당신은 더 이상 당신은 해상도가 얼마나 낮은 따라 이러한 설정을 변경해야 할 수도 있습니다";
	L["Resolution Style Set"] = "해상도 스타일 세트";	
	L['Layout Set'] = "레이아웃 설정";
	L['Minimap Size'] = "미니맵 크기";
	L['Adjust the size of the minimap.'] = "미니맵의 크기를 결정합니다."
	L['Raid Reminder'] = "레이드 알림";
	L['Display raid reminder bar on the minimap.'] = "미니맵에 알림 표시줄을 표시";	
	L['Detected either the Routes or GatherMate2 addon running, if you wish to use these addons with ElvUI you must type the /farmmode command.'] = true;
	L['Grid Size:'] = "격자 크기";
	L['Aura perRow'] = "최소 열수 Buff/Debuff";
	L['Profile Binds'] = "프로필 연결";
	L['Save your keybinds with your ElvUI profile. That way if you have the dual spec feature enabled in ElvUI you can swap keybinds with your specs.'] = true;	
	L['Chat Bubbles Style'] = "말풍선 스킨";
	L['Skin the blizzard chat bubbles.'] = "스킨 말풍선 채팅 있습니다.";
	L['Multisample Fix'] = "다중 샘플링 정정";
	L['Attempt to fix blurry borders when using a multisample setting that is greater than one. |cffFF0000WARNING: This is extremely experimental and may cause issues with gameplay.|r'] = true;
	L['|cFFE30000Lua error recieved. You can view the error message when you exit combat.|r'] = "|cFFE30000Lua 에러가 발생하였습니다. 전투가 끝난 후에 내역을 표시하겠습니다.|r"
	L["%s: %s tried to call the protected function '%s'."] = "%s: %s 함수의 보호를 불러오기 '%s'.";
	L["No locals to dump"] = "로컬 파일이 없습니다";
	L["First"] = "처음으로";
	L["Last"] = "지난";
	L['Minimap Panels'] = "작은지도 정보 모음";
	L['Display minimap panels below the minimap, used for datatexts.'] = "datatexts 사용 minimap 아래 minimap 패널을 표시합니다.";	
	L["A setting you have changed will change an option for this character only. This setting that you have changed will be uneffected by changing user profiles. Changing this setting requires that you reload your User Interface."] = "이 설정은 캐릭터별로 따로 저장되므로|n프로필에 영향을 주지도, 받지도 않습니다.|n|n설정 적용을 위해 리로드 하시겠습니까?";
	L['Theme Set'] = "테마 설정";
	L['Theme Setup'] = "테마 설정";
	L['Choose a theme layout you wish to use for your initial setup.'] = "귀하의 초기 설정을 위해 사용하고자하는 테마 레이아웃을 선택합니다.";
	L['You can always change fonts and colors of any element of elvui from the in-game configuration.'] = "게임 구성에서 elvui의 어떤 요소의 색상을 변경할 수 있습니다.";
	L['Classic'] = "Classic";
	L['Classic Pixel'] = "클래식 픽셀";
	L['Toggle Chat Frame'] = "채팅 상자 전환";
	L['Toggle Embedded Addon'] = "임베디드 플러그인 전환";
	L['Left Click:'] = "왼쪽 버튼을 클릭:";
	L['Right Click:'] = "오른쪽 버튼을 클릭";
	L['Toggle Tutorials'] = "질문&답게시판";
	L['Config Mode:'] = "설정 모드:";
	L["Auras Set"] = "오라 설정";
	L["Auras System"] = "버프/디버프 표시 설정"
--	L["Select the type of aura system you want to use with ElvUI's unitframes. The integrated system utilizes both aura-bars and aura-icons. The icons only system will display only icons and aurabars won't be used."] = "당신이 ElvUI의 unitframes와 함께 사용할 버프 시스템의 유형을 선택합니다.통합 시스템은 버프 바, 버프 아이콘을 모두 활용합니다.시스템은 아이콘과 aurabars가 표시됩니다 아이콘은 사용하지 않습니다";
--	L["If you have an icon or aurabar that you don't want to display simply hold down shift and right click the icon for it to disapear."] = "당신은 아이콘을 간단하게 표시하지 않으려는 aurabar이 오른쪽 아이콘을 클릭";
	L['Integrated'] = "클래스 타이머";
	L['Icons Only'] = "아이콘";
	L["Because of the mass confusion caused by the new aura system I've implemented a new step to the installation process. This is optional. If you like how your auras are setup go to the last step and click finished to not be prompted again."] = "새로운 오라시스템을 혼란스러워 하는 분들이 많아 설치과정에 관련 페이지를 추가했습니다. 해도 되고 안해도 됩니다. 이미 스스로 오라시스템을 구축했으면 그냥 설치를 마지막까지 넘겨 종료하세요.";	
	
	L['Adjust the height of your right chat panel.'] = "오른쪽 대화창 패널 높이 조정";
	L['Adjust the width of the bag frame.'] = "프레임의 폭 조정";
	L['Adjust the width of your right chat panel.'] = "오른쪽 대화창 패널 길이 조정";	
	L["Enable the use of separate size options for the right chat panel."] = "오른쪽 채팅 패널에 대한 별도의 크기 옵션의 사용";
	L['Right Panel Height'] = '오른쪽 패널 높이';
	L['Right Panel Width'] = "오른쪽 패널 길이";
	L["Separate Panel Sizes"] = "좌,우 대화창 각각 크기설정";	
	L["Alerts"] = "경고";
end

--Aura
do
	L["Decimal Threshold"] = "소수점 임계값";
	L["Threshold before text goes into decimal form. Set to -1 to disable decimals."] = "~로 설정 -1，소수를 사용하지 않도록 설정.";
	L["Reverse Style"] = "색상 반전 모드";
	L["When enabled active buff icons will light up instead of becoming darker, while inactive buff icons will become darker instead of being lit up."] = "시너지 색상 반대로";
	L['Time xOffset'] = "시간 X 좌표";
	L['Time yOffset'] = "시간 Y 좌표";
	L['Count xOffset'] = "중첩수 x 좌표"
	L['Count yOffset'] = "중첩수 y 좌표"
	L['Remaining Time'] = "남은 시간";
	L['consolidateTo'] = "consolidateTo";
	L['Consolidated buffs will be consolidate to consolideBuffs'] = "미니맵 공격대 BUFF 자동 등록";
	L['Filter Consolidated'] = "내게 유용한 것만 표시"
    L['Only show consolidated icons on the consolidated bar that your class/spec is interested in. This is useful for raid leading.'] = "중요한 특성 관련 표시 버프 아이콘" ;
	L['AURAS_DESC'] = "미니맵 근처에 표시되는 버프/디버프 아이콘에 관련된 옵션들입니다."
	L['Consolidated Buffs'] = "시너지버프 모음"
	L['Display the consolidated buffs bar.'] = "미니맵 우측의 시너지버프 모음 바를 표시합니다."
	L['Set the size of the individual auras.'] = "오라 아이콘의 크기를 결정합니다."
	L['Wrap After'] = "한 줄에 표시할 오라 수"
	L['Begin a new row or column after this many auras.'] = "한 줄에 아이콘이 이 값보다 많으면 다음 줄에 배치합니다."
	L['X Spacing'] = "수평 간격";
	L['Y Spacing'] = "수직 간격";
	L['Sort Method'] = "정렬 기준";
	L['Defines how the group is sorted.'] = "오라를 어떤 기준으로 정렬할지를 결정합니다."
	L['Index'] = "종류"
	L['Time'] = "시간";
	L['Name'] = "이름";
	L['Sort Direction'] = "정렬 방법";
	L['Defines the sort order of the selected sort method.'] = "기준을 바탕으로 하여 어떤 순서로 정렬할지를 결정합니다."
	L['Max Wraps'] = "표시줄 최대 수"
	L['Limit the number of rows or columns.'] = "표시줄 수를 제한해 최종적으로 보여줄 오라의 총 개수를 제한합니다."
	L['Seperate'] = "시전자 구분 정렬"
	L['Indicate whether buffs you cast yourself should be separated before or after.'] = "스스로 걸은 효과를 남이 걸어준 효과보다 먼저 나열할지, 후에 나열할지, 구분하지 않을지를 결정합니다."
	L["Other's First"] = "남이 걸어준 효과 먼저"
	L['No Sorting'] = "아니오 정렬 없음";
	L['Your Auras First'] = "내가 걸은 효과 먼저"
	L["Fade Threshold"] = "초읽기 시작 시점"
	L['Threshold before text changes red, goes into decimal form, and the icon will fade. Set to -1 to disable.'] = "아이콘이 깜박일 것입니다. 비활성화하려면 -1로 설정";
end

--Media	
do
	L["Media"] = "미디어";
	L["Fonts"] = "폰트";
	L["Font Size"] = "폰트 크기";
		L["Set the font size for everything in UI. Note: This doesn't effect somethings that have their own seperate options (UnitFrame Font, Datatext Font, ect..)"] = "UI 내의 모든 폰트 크기를 설정합니다. Note: 개별 옵션으로 지정할 수 있는 부분은 제외됩니다. (유닛프레임 폰트, 정보글자 폰트 등)";
	L["Default Font"] = "기본 폰트 선택";
		L["The font that the core of the UI will use."] = "UI에서 기본으로 사용할 폰트을 지정합니다.";
	L["UnitFrame Font"] = "유닛프레임 폰트";
		L["The font that unitframes will use"] = "유닛프레임에서 사용할 폰트";
	L["CombatText Font"] = "전투 문자 폰트 선택";
		L["The font that combat text will use. |cffFF0000WARNING: This requires a game restart or re-log for this change to take effect.|r"] = "전투문자에 사용할 폰트입니다. |cffFF0000경고: 설정을 변경하면 완전히 게임을 껐다 키셔야 합니다.|r";
	L["Textures"] = "텍스쳐 (무늬)";
	L["StatusBar Texture"] = "상태바 텍스쳐";
		L["Main statusbar texture."] = "주요 상태바 텍스쳐";
	L["Gloss Texture"] = "화려한 텍스쳐";
		L["This gets used by some objects."] = "이것은 몇몇 개체에 사용됩니다.";
	L["Colors"] = "색상";	
	L["Border Color"] = "테두리 색상";
		L["Main border color of the UI."] = "UI 주요 테두리의 색상";
	L["Backdrop Color"] = "배경 색상";
		L["Main backdrop color of the UI."] = "UI 주요 배경 색상";
	L["Backdrop Faded Color"] = "반투명 배경 색상";
		L["Backdrop color of transparent frames"] = "반투명한 배경 색상";
	L["Restore Defaults"] = "기본값으로 복원";
		
	L["Toggle Anchors"] = "패널 이동";
	L["Unlock various elements of the UI to be repositioned."] = "위치를 설정하기 위해 다양한 UI 구성요소의 잠금을 품";
	
	L["Value Color"] = "색상 값";
	L["Color some texts use."] = "몇몇 문자에서 사용할 색상";
end

--NamePlate Config
do
	L['OtherFilter2'] = "추가 필터2";
	L['You can select only one way to filter to take effect. \n\n|cffff0000This filter has the highest priority!!!|r'] = '적용하는 필터링 한 방향으로 만 선택할 수 있습니다\n\n|cffff0000이 필터는 가장 높은 우선 순위를 갖는다!!!|r';
	L['Show Level'] = "레벨 표시";
	L['Show Name'] = "이름 표시";
	L["Sharp triangular arrow"] = "> < 화살표";
	L['You can select only one way to blacklist filter to take effect. \n\n|cffff0000This filter has the highest priority!!!|r'] = true;
	L['Scale if Low Health'] = "채렉이 낮을 때 설정 자동변경"
	L['Adjust nameplate size on low health'] = "이름표 유닛의 체력이 낮으면 다음의 옵션들을 적용하는 기능입니다."
	L['Low HP Width'] = "낮은 체력 일때 가로길이"
	L['Controls the width of the nameplate on low health'] = "유닛이 체력일때 낮아지면 변경될 이름표의 가로길이"
	L['Low HP Height'] = "낮은 체력 일때 세로길이"
	L['Controls the height of the nameplate on low health'] = "유닛이 력일때 낮아지면 변경될 이름표의 세로길이"
	L['Bring to front on low health'] = "낮은 체력 앞으로 이동"
	L['Bring nameplate to front on low health'] = "체력이 낮은 유닛의 이름표를 제일 앞으로 배치합니다."
	L['Change color on low health'] = "체력이 낮으면 색 변경"
	L['Color on low health'] = "체력이 낮으면 색 변경"
	L["Show Personal Auras"] = "플레이어 주문만 표시"
	L["Vertical Arrow"] = "수직 V 화살표"
	L["Horrizontal Arrows"] = "> 수평 화살표 < (역방향)"
	L["Horrizontal Arrows (Inverted)"] = "> 수평 화살표 < (역방향)"
	L["Target Indicator"] = "대상 [설정]"
	L["Color By Healthbar"] = "체력 바 색상을 사용"
	L["Match the color of the healthbar."] = "현재 대상 강조색을 지정한 색상이 아닌 생명력바의 색상을 사용합니다."
	L['Color Name By Health Value'] = "체력을 이름 색상을 변경합니다"
	L['Non-Target Alpha'] = "비대상 유닛 투명도"
	L['Alpha of nameplates that are not your current target.'] = "현재 대상이 아닌 다른 유닛들의 이름표에 투명도를 결정합니다."
	L["Tagged NPC"] = "선점된 유닛"
	L["Reaction Coloring"] = "반응별 색상"
	L["Health Bar"] = "체력 바"
	L["Cast Bar"] = "시전바";
	L["Can Interrupt"] = "차단이 가능한 기술"
	L["No Interrupt"] = "차단할수 없는 기술"
	L["Number of Auras"] = "주문 개수 표시"
	L["Stretch Texture"] = "아이콘 늘이기"
	L["Stretch the icon texture, intended for icons that don't have the same width/height."] = "기존의 정사각형인 아이콘을 늘려서 직사각형으로 만듭니다."
	L['Scaling'] = "크기"
	L["Good Transition"] = "이전에 비해 좋아짐"
	L["Bad Transition"] = "이전에 비해 나빠짐"
	L["Raid/Healer Icon"] = "힐러/레이드 아이콘"
	L["Name X-Offset"] = "이름 x 좌표";
	L["Name Y-Offset"] = "이름 y 좌표";
	L['Name Alignment'] = "이름 정렬";
	L['Filter'] = "필터";
	L['Configure Selected Filter'] = "선택한 필터 조정"
	L["Tagged Color"] = "공격받을때 색상";
	L["Color of a nameplate that is tagged by another person."] = "다른 플레이어의 공격을 받았을 이름표 색상";
	L["Tanked/Loose Color"] = 'Tanked/색상 누락';
	L["Depending on your role. If you are a tank then its the color of mobs being tanked not by you by an actual tank. If you are not a tank then it is the color of mobs that are not currently being tanked."] = true;
	L["Color Tanked/Loose"] = "색상 Tanked/누락";
	L["Depending on your role. If you are a tank then it will color mobs being tanked by the offtank. If you are not a tank then it will color mobs not being tanked. This is not 100% accurate and should only be used as a referance."] = true;
	L["Combo Points"] = "콤보 포인트";
	L["Display combo points on nameplates."] = "이름 버전 콤보 지점";
	L["Small Plates"] = "작은 이름 버전 ";
	L["Adjust nameplate size on smaller mobs to scale down. This will only adjust the health bar width not the actual nameplate hitbox you click on."] = "작은 폭 이름을 사용할 수 있습니다,일부를 표시하는 데 사용됩니다.";
	L["Class Icons"] = "직업 아이콘";
	L["Display a class icon on nameplates."] = "이름표에 직업 아이콘";
	L['Mistweaver'] = true;
	L['Background Multiplier'] = "배경 색상 투명성";
    L['The backdrop of the nameplates color is scaled to match the color of the nameplate by this percentage. Set to zero to have no color in the nameplate backdrop.'] = "배경색의 투명도의 이름 버전,배경 색상 0 이름 버전으로 설정(검정)";
	L["NamePlates"] = "이름표";
	L["NAMEPLATE_DESC"] = "이름표에 관련된 옵션들입니다."
	L["Width"] = "길이";
		L["Controls the width of the nameplate"] = "이름표의 길이를 조절합니다.";
	L["Height"] = "높이";
		L["Controls the height of the nameplate"] = "이름표의 높이를 조절합니다.";
	L["Good Color"] = "안전 색상";
		L["This is displayed when you have threat as a tank, if you don't have threat it is displayed as a DPS/Healer"] = "TANK일때 어그로를 가졌으면 혹은 DPS/힐러 일때 어그로를 갖지 않았으면 표시되는 색상입니다.";
	L["Bad Color"] = "위험 색상";
		L["This is displayed when you don't have threat as a tank, if you do have threat it is displayed as a DPS/Healer"] = "TANK일때 어그로를 갖지 못했으면 혹은 DPS/힐러 일때 어그로를 가졌으면 표시되는 색상입니다.";
	L["Good Transition Color"] = "안전한 변화 색상";
		L["This color is displayed when gaining/losing threat, for a tank it would be displayed when gaining threat, for a dps/healer it would be displayed when losing threat"] = "특성에 따라 어그로의 획득/소실에 따른 안전 색상입니다.";
	L["Bad Transition Color"] = "위험한 변화 색상";
		L["This color is displayed when gaining/losing threat, for a tank it would be displayed when losing threat, for a dps/healer it would be displayed when gaining threat"] = "특성에 따라 어그로의 획득/소실에 따른 위험 색상입니다.";	
	L["Castbar Height"] = "시전바 높이";
		L["Controls the height of the nameplate's castbar"] = "이름표의 시전바 높이를 조절합니다.";
	L["Health Text"] = "체력 문자";
		L["Toggles health text display"] = "생명력 문자의 표시를 전환합니다."
	L["Personal Debuffs"] = "개인 디버프";
		L["Display your personal debuffs over the nameplate."] = "당신의 개인적인 디버프를 이름표 위쪽에 표시합니다.";
	L["Display level text on nameplate for nameplates that belong to units that aren't your level."] = "이름표에 당신과 다른 레벨일 시 레벨 문자를 표시합니다.";
	L["Enhance Threat"] = "향상된 위협수준";
		L["Color the nameplate's healthbar by your current threat, Example: good threat color is used if your a tank when you have threat, opposite for DPS."] = "당신의 현재 위협수준에 따라 이름표의 체력바 색상을 달리합니다. 예: 안전 색상은 당신이 탱커일때 위협 수준을 갖고 있을 때만, DPS는 그 반대입니다.";
	L["Combat Toggle"] = "전투 시 토글";
		L["Toggles the nameplates off when not in combat."] = "전투가 아닐 시 이름표를 끕니다.";
	L["Friendly NPC"] = "우호적인 NPC";
	L["Friendly Player"] = "우호적인 플레이어";
	L["Neutral"] = "중립";
	L["Enemy"] = "적";
	L["Threat"] = "위협";
	L["Reactions"] = "색상";
	L["Filters"] = "필터[주문관리]";
	L['Add Name'] = "이름 추가";
	L['Remove Name'] = "이름 삭제";
	L['Use this filter.'] = "이 필터를 사용합니다.";
	L["You can't remove a default name from the filter, disabling the name."] = "이 이름은 기본값이기 때문에 필터에서 삭제할 수 없습니다. 체크해제 하세요.";
	L['Hide'] = "숨김";
		L['Prevent any nameplate with this unit name from showing.'] = "이 이름을 가진 이름표가 보여지는걸 막음";
	L['Custom Color'] = "사용자 색상";
		L['Disable threat coloring for this plate and use the custom color.'] = "이 이름표에 위협 색상 대신 사용자 색상을 사용하도록 합니다.";
	L['Custom Scale'] = "사용자 크기";
		L['Set the scale of the nameplate.'] = "이름표의 크기를 설정합니다.";
	L['Good Scale'] = "안전할 때 크기";
	L['Bad Scale'] = "위험할 때 크기";
	L["Auras"] = "오라";
	L['Healer Icon'] = "힐러 아이콘";
	L['Display a healer icon over known healers inside battlegrounds.'] = "전장 내에서 힐러 아이콘 표시";
	L['Restoration'] = "회복";
	L['Holy'] = "신성";
	L['Discipline'] = "수양";
	L['Filter already exists!'] = "필터가 이미 존재합니다!";
	L['Low Health Warning'] = "낮은 생명력 경고";
	L['Color the border of the nameplate yellow when it reaches the threshold point on these types of frames.'] = "프레임이 임계 지점에 도달할때 노란색으로 색 테두리 프레임 단위";
	L['Players'] = "플레이어";
	L['Low Health Threshold'] = "낮은 생명력 임계값";
	L['Color the border of the nameplate yellow when it reaches this point, it will be colored red when it reaches half this value.'] = true;
end

--ClassTimers
do
	L['ClassTimers'] = "클래스타이머";
	L["CLASSTIMER_DESC"] = '플레이어와 대상 유닛프레임의 버프/디버프를 상태바로 보여줍니다.';
	
	L['Player Anchor'] = "플레이어 앵커";
	L['What frame to anchor the class timer bars to.'] = "클래스타이머의 바가 어떤 프레임에 기준할지 정합니다.";
	L['Target Anchor'] = "대상 앵커";
	L['Trinket Anchor'] = "장신구 앵커";
	L['Player Buffs'] = "플레이어 Buffs";
	L['Target Buffs']  = "대상 Buffs";
	L['Player Debuffs'] = "플레이어 Debuffs";
	L['Target Debuffs']  = "대상 Debuffs";	
	L['Player'] = "플레이어";
	L['Target'] = "대상";
	L['Trinket'] = "장신구";
	L['Procs'] = "효과";
	L['Any Unit'] = "모든 사람(캐스트)";
	L['Unit Type'] = "단위 유형";
	L["Buff Color"] = "Buff  색상";
	L["Debuff Color"] = "Debuff 색상";
	L['You have attempted to anchor a classtimer frame to a frame that is dependant on this classtimer frame, try changing your anchors again.'] = "다른 클래스바 프레임이 이곳을 기준으로 하고 있기 때문에 다른 기준점으로 시도하세요.";
	L['Remove Color'] = "색상 삭제";
	L['Reset color back to the bar default.'] = "색상을 바의 기본값으로 리셋합니다.";
	L['Add SpellID'] = "주문ID 추가";
	L['Remove SpellID'] = "주문ID 삭제";
	L['You cannot remove a spell that is default, disabling the spell for you however.'] = "그 주문은 기본값이기에 삭제할 수 없습니다만, 비활성화는 가능합니다.";
	L['Spell already exists in filter.'] = "그 주문은 이미 필터에 있습니다.";
	L['Spell not found.'] = "주문을 찾지 못했습니다.";
	L["All"] = "모두";
	L["Friendly"] = "우호적";
	L["Enemy"] = "적대적";
end

--oUF_AuraBar
do	
	L["Maximum Duration"] = "최대 시간";
	L["Don't display auras that are longer than this duration (in seconds). Set to zero to disable."] = "비활성화하려면 0으로 설정이 시간 (초) 할로 바, 이상 표시하지 않음";
	L['The spell "%s" has been added to the DebuffBlacklist unitframe filter.'] = "스킬 %s 은 유닛 프레임 필터 DEBUFF의 삭제 리스트를 추가할 추가됩니다";
	L['Aura Bars'] = "EUI ClassTimer";
	L['The object you want to attach to.'] = "당신이 첨부 파일을 대상으로 하시겠습니";
	L['No Duration'] = "소요 시간";
	L['Allow displaying of aura bars that do not have a duration.'] = "당신 버프 시간을 표시할 수 있습니다";
	L['No Consolidated'] = "연결 없음";
	L['Allow displaying of aura bars that are considered consolidated by Blizzard.'] = true;
	L['Above'] = "위";
	L['Below'] = "아래";	
end
	
--ACTIONBARS
do
	L["MySlot Support"] = "행동바 단축키 구성을 저장 및 복원됩니다(MySlot)";
	L['profileName'] = "구성 이름";
	L['save profile'] = "구성 저장 ";
	L[' profile saved!'] = "구성이 저장됩니다";
	L['delete profile'] = "구성 삭제";
	L['|cff00ff00delete profile, Yes!|r'] = "|cff00ff00구성 삭제,확인!|r";
	L['profile list'] = "구성 목록";
	L['import profile'] = "구성 로드";
	L['Show Myslot'] = "표시 MySlot 창"; 
	
	L["Right Click to self-cast"] = "마우스 오른쪽 플레이어 시전";
	L['Darken Inactive'] = "어두게 하지마세요";
	L["This setting will be updated upon changing stances."] = "이 설정을 변경하는 입장에 업데이트됩니다";
	L['Out of Range'] = "범위를 벗어나습니다";
    L['Color of the actionbutton when out of range.'] = "행동바 대상 범위 멀리 있서때 색상";
    L['Out of Power'] = "기력 부족(색상)";
    L['Color of the actionbutton when out of power (Mana, Rage, Focus, Holy Power).'] = "경우 (예 : 마나, 분노, 기력힘 등) 부족 색상" ;
	L['Remove Bar %d Action Page'] = "% d 개의 액션 페이지를 제거"; 
	--HOTKEY TEXTS
	L['KEY_SHIFT'] = 'S';
	L['KEY_ALT'] = 'A';
	L['KEY_CTRL'] = 'C';
	L['KEY_MOUSEBUTTON'] = 'M';
	L['KEY_BUTTON3'] = 'M3';
	L['KEY_NUMPAD'] = 'N';
	L["KEY_PAGEDOWN"] = "P▼"
    L["KEY_PAGEUP"] = "P▲"
	L['KEY_SPACE'] = 'Sp'; 
	L['KEY_INSERT'] = 'In';
	L['KEY_HOME'] = 'Hm';
	L['KEY_DELETE'] = 'De';
	L['KEY_MOUSEWHEELUP'] = 'M▲';
	L['KEY_MOUSEWHEELDOWN'] = 'M▼';
	
	--BLIZZARD MODIFERS TO SEARCH FOR
	L['KEY_LOCALE_SHIFT'] = '(SHIFT%-)';
	L['KEY_LOCALE_ALT'] = '(ALT%-)';
	L['KEY_LOCALE_CTRL'] = '(CTRL%-)';
	
	--KEYBINDING
	L["Hover your mouse over any actionbutton or spellbook button to bind it. Press the escape key or right click to clear the current actionbutton's keybinding."] = "행동단축바나 주문책 버튼 위에 커서를 올려놓은 후 단축키를 지정합니다.  ESC나 우클릭시 지정된 단축키가 해제됩니다."
	L['Save'] = "저장";
	L['Discard'] = "취소";
	L['Binds Saved'] = "단축키 저장됨";
	L['Binds Discarded'] = "단축키 취소됨";
	L["All keybindings cleared for |cff00ff00%s|r."] = "|cff00ff00%s|r버튼에 설정된 모든 단축키 설정이 해제되었습니다."
	L[" |cff00ff00bound to |r"] = "|cff00ff00키로 다음의 행동을 실행합니다: |r"
	L["No bindings set."] = "설정된 단축키가 없음"
	L["Binding"] = "단축키 지정"
	L["Key"] = "단축키"	
	L['Trigger'] = "트리거";
	
	--CONFIG
	L["ActionBars"] = "행동 단축바";
		L["Keybind Mode"] = "단축키 설정 모드";
		
	L['Macro Text'] = "매크로 문자 표시";
		L['Display macro names on action buttons.'] = "행동바 버튼에 매크로 이름을 표시합니다.";
	L['Keybind Text'] = "단축키 문자";
		L['Display bind names on action buttons.'] = "행동바 버튼에 단축키 이름을 표시합니다.";
	L['Button Size'] = "버튼 크기";
		L['The size of the main action buttons.'] = "주 행동바 버튼의 크기";
	L['Button Spacing'] = "버튼 간격";
		L['The spacing between buttons.'] = "버튼과버튼 간격";
	L['Bar '] = "바";
	L['Backdrop'] = "배경";
		L['Toggles the display of the actionbars backdrop.'] = "행동단축바의 배경을 표시할지 여부를 결정합니다."
	L['Buttons'] = "버튼 수"
		L['The amount of buttons to display.'] = "한 줄에 배치할 버튼의 수를 결정합니다."
	L['Buttons Per Row'] = "한 줄당 버튼 갯수"
		L['The amount of buttons to display per row.'] = "한 줄에 배치할 버튼의 갯수을 결정합니다."
	L['Anchor Point'] = "첫 번째 요소 위치"
		L['The first button anchors itself to this point on the bar.'] = "첫 번째 요소를 기준으로 나머지가 나열됩니다."
	L['Height Multiplier'] = "배경 세로길이 배율"
	L['Width Multiplier'] = "배경 가로길이 배율"
		L['Multiply the backdrops height or width by this value. This is usefull if you wish to have more than one bar behind a backdrop.'] = "이 값 만큼 배경의 길이가 배로 늘어납니다. 배경 하나에 여러 행동단축바를 올리고 싶은 경우에 유용합니다."
	L['Action Paging'] = "페이지 자동전환 조건"
		L["This works like a macro, you can run different situations to get the actionbar to page differently.\n Example: '[combat] 2;'"] = "이건 마치 매크로와 비슷하게 작동하며, 다른 상황에 따라 액션바의 페이지를 다르게 적용할 수 있습니다.\n예: '[combat] 2;'";
	L['Visibility State'] = "표시 자동전환 조건"
		L["This works like a macro, you can run different situations to get the actionbar to show/hide differently.\n Example: '[combat] show;hide'"] = "이건 마치 매크로와 비슷하게 작동하며, 상황에 따라 액션바를 보이거나 숨길 수 있습니다.\n예: '[combat] show;hide'";
	L['Restore Bar'] = "기본값으로 초기화"
		L['Restore the actionbars default settings'] = "이 행동단축바에 대한 모든 수치를 기본값으로 되돌립니다."
		L['Set the font size of the action buttons.'] = "이 행동단축바에 대한 모든 수치를 폰트 크기을 수정합니다.";
	L['Mouse Over'] = "마우스 오버";
		L['The frame is not shown unless you mouse over the frame.'] = "커서를 갖다 댔을(마우스오버) 시에만 표시됩니다."
	L['Pet Bar'] = "소환수 바";
	L['Alt-Button Size'] = "대체 버튼 크기";
		L['The size of the Pet and Shapeshift bar buttons.'] = "소환수, 태세 바 버튼의 크기";
	L['ShapeShift Bar'] = "태세변환 바";
	L['Cooldown Text'] = "쿨다운 문자";
		L['Display cooldown text on anything with the cooldown spiril.'] = "쿨다운이 돌아가는 모든곳에 쿨다운 텍스트를 입힙니다.";
	L['Low Threshold'] = "최소 경계값";
		L['Threshold before text turns red and is in decimal form. Set to -1 for it to never turn red'] = "쿨다운 문자가 붉은색으로 변하는 경계값. -1로 설정하면 붉은색으로 변하지 않음.";
	L['Expiring'] = "끝남";
		L['Color when the text is about to expire'] = "끝날때의 문자 색상";
	L['Seconds'] = "초";
		L['Color when the text is in the seconds format.'] = "초 단위의 문자 색상";
	L['Minutes'] = "분";
		L['Color when the text is in the minutes format.'] = "분 단위의 문자 색상";
	L['Hours'] = "시";
		L['Color when the text is in the hours format.'] = "시 단위의 문자 색상";
	L['Days'] = "일";
		L['Color when the text is in the days format.'] = "하루 일 단위의 문자 색상";
	L['Totem Bar'] = "토템 바";
	L['Action Mode'] = "행동바 모드";
	L['Use the button when clicking or pressing the keybind on the keydown motion or on the keyup motion.'] = true;
	L['Max Paging'] = "최대 페이지";
	L['When enabled the main actionbar will use the maximum amount of pages available. This means if you have another actionbar disabled, the actionbar page will become available on the main actionbar. Having this disabled will limit the main actionbar to two pages.'] = true;
	L['Micro Bar'] = "마이크로 시스템 메뉴 표시줄";
	L['Alpha'] = "투명도";
	L['Change the alpha level of the frame.'] = "본체의 투명성 수준을 변경합니다"
	L['The button you must hold down in order to drag an ability to another action button.'] = "[버튼]당신이 다른 행동 버튼에 기능을 드래그하기 위해서는 길게해야합니다";
	L['Key Down'] = "즉시 시전";
end

--Threat
L['ABOVE_THREAT_FORMAT'] = '%s: %.0f%% [%.0f%% above |cff%02x%02x%02x%s|r]'

--UNITFRAMES
do	
    L['Powerbar min perc'] = 'Powerbar 최소 비율을 보여줍니다'; 
	L['Display Tick1'] = '디스플레이 Tick1'
	L['Display Tick2'] = '디스플레이 Tick2'
	L['Display Tick3'] = '디스플레이 Tick3'
	L['have Animation'] = "애니메이션";
	L['Configure Raid Turtle Aura'] = '공격대 버프 설정';
	L['Raid Damage reduction'] = "공격대 생존기";
	L['Configure Char Turtle Aura'] = '개인 생존기 설정';
	L['Char Damage reduction'] = '개인 생존기';
	L['Configure Buff Indicator'] = '버프 표시 구성';
	L["Position the Model horizontally."] = "초상화 수평 위치";
	L["Position the Model vertically."] = "초상화 수직 위치";
	L['Force Reaction Color'] = true;
	L['Forces reaction color instead of class color on units controlled by players.'] = true;
	L['Dragon Overlay Style'] = "정예/보스 아이콘";
	L['classic'] = "상단모드";
	L['modern'] = "전체모드";
	L['Combo Point'] = "콤보 포인트";
	L['dkRunesBorderColor'] = "DK룬 테두리 색상";
	L['Arena Show'] = "투기장 표시";   
    L['boss visibility'] = "BOSS&아군 표시";
	L["Forcing maxGroups to: %d because maxPlayers is: %d"] = "프레임 번호: %d because maxPlayers i: %d";
	L['Castbar time Decimal places'] = "시전바 시간 소수점 자릿수";
	L['Attach Text to Power'] = "기력값 기력바 위치로 이동";
	L['Colored Icon'] = "색상 아이콘";
	L['Textured Icon'] = "아이콘";
	L['Owners Name'] = "소환수 소유자 이름"
	L['Pet Name'] = "소환수 이름";
	L['Raid Pet Frames'] = "레이드 소환수 프레임";
	L['Pet frame displayed in the top of the player frame, it will automatically increase the vertical spacing to show pet frame, you need to reload UI.'] = "소환수 프레임을 플레이어 프레임 상단에 표시,소환수 프레임 사용시 자동으로 세로 간격을 증가, 다시로드해야합니다";
	L['Druid Mana'] = "드루이드 마나바";
	L['Display druid mana bar when in cat or bear form and when mana is not 100%.'] = "표범 / 곰 상태일때 마나 표시";
	L['Groups Per Row/Column'] = "한 줄 당 그룹 배치수"
	L['Player Powerbar'] = "플레이어 에너지 바";
	L['Auto-Hide'] = "자동으로 숨기기"
	L['Detach From Frame'] = "프레임에서 분리"
	L['Detached Width'] = "프레임 길이[분리후]";
	L['Class Color Override'] = "직업색 적용 여부"
	L['Override the default class color setting.'] = "이 유닛프레임의 체력바에만 직업색을 적용하도록 따로 설정하는 것이 가능합니다."
	L['Use Default'] = "기존 설정대로"
	L['Force On'] = "강제 적용"
	L['Force Off'] = "적용하지 않음"
	L['Main Tanks / Main Assist'] = "탱크 / 지원";
	L['Name (Entire Group)'] = "이름 (전체 팀)";
	L['Invert Grouping Order'] = "프레임 순서 반전";
	L['Reverses the grouping order. For example if your group is to grow right than up by default the first group is always at the bottom. With this option set then the first group will start at the bottom but as the number of groups grow it will always be near the top.'] = true;
	L["Personal"] = "개인";
	L["Others"] = "기타";
	L["Absorbs"] = "흡수";
	L['Model Rotation'] = "3d 모델 회전 각도";
	L['Solo Show'] = "솔로 표시";
	L['Party Show'] = "파티 표시";
	L['Raid Show'] = "공격대 표시";
	L['Threat Display Mode'] = "어그로획득 표시방법";
	L['Size and Positions'] = "크기와 위치";
	L['Sorting'] = "정렬";
	L['Grouping & Sorting'] = "그룹/정렬 방법"
	L['Raid-Wide Sorting'] = "빈칸없이 나열"
	L['Enabling this allows raid-wide sorting however you will not be able to distinguish between groups.'] = "이 옵션은 팀 사이에 비워 둘 수 없습니다 활성화하면 전체를 배치, 당신은 팀을 구별하지 못할 수 있습니다";
	L['Invert Grouping Order'] = "역순정렬"
	L['Enabling this inverts the grouping order when the raid is not full, this will reverse the direction it starts from.'] = "팀 배치의 방향을 반대로";
	L['Start Near Center'] = "가운데 정렬"
	L['The initial group will start near the center and grow out.'] = "가운데 정렬";
	L['GPS Arrow'] = "[GPS]화살표 방향";	
	L['Start from Center'] = "중앙에서 시작";
	L['The initial group will start near the center and grow out. Corrosponding groups will behave normally.'] = "중앙 레이아웃에서 초기 팀, 다른 팀은 일반 모드를 기반";
	L['Up'] = "위";
	L['Down'] = "아래";
	L['Growth direction from the first unitframe.'] = "첫 번째 프레임 확장 방향에서";
	L['%s and then %s'] = "%s 이후 %s"
	L['Horizontal Spacing'] = "수평 간격";
	L['Vertical Spacing'] = "수직 간격";
	L['Group Size'] = "공격대 크기";
	L['Number of units in a group.'] = "각 파티 단위의 수";
	L['Number of Groups'] = "그룹 수";
	L['Coloring (Specific)'] = "색상 [선택]";
	L['Coloring'] = "색상";
	L['Configure Auras'] = "공격대 프레임 버프 설정";
	L['Text xOffset'] = "텍스트  X 좌표";
	L['Text yOffset'] = "텍스트 Y 좌표";
	L['Text Position'] = "텍스트 위치";
	L['Offset position for text.'] = "텍스트 위치 오프셋";
	L['Inset'] = "프레임안[삽입]";
	L["Target On Mouse-Down"] = "마우스 클릭시 대상 설정";
	L["Target units on mouse down rather than mouse up. \n\n|cffFF0000Warning: If you are using the addon 'Clique' you may have to adjust your clique settings when changing this."] = true;
	L['Turtle Color'] = "생존기 색상"
	L['Color Turtle Buffs'] = "생존기류 따로 색상지정"
	L["Color all buffs that reduce the unit's incoming damage."] = "모든 버프 색상으로 대상의 공격력을 감소";
	L['Class Castbars'] = "직업 castbar";
	L['Color castbars by the class or reaction type of the unit.'] = "캐스터 직업 색상이나 목표는 색";
	L['Middle Click - Set Focus'] = "가운데 클릭 - 설정 Focus";
	L['Middle clicking the unit frame will cause your focus to match the unit.'] = "프레임에서 가운데 마우스 버튼을 클릭하여 Focus 설정";
	L["Count Font Size"] = "레이어 폰트 크기";
	L['Time Remaining'] = "남은시간이 긴 순으로"
	L['Time Remaining Reverse'] = "남은시간이 짧은 순으로"
	L['Duration'] = "지속";
	L['Duration Reverse'] = "지속 시간 반전";
	L['Glow'] = "발광";
	L['Borders'] = "테두리";
	L['Health Border'] = true;
	L['Icon: TOPLEFT'] = "아이콘: 왼쪽 상단";
	L['Icon: TOPRIGHT'] = "아이콘: 오른쪽 상단";
	L['Icon: BOTTOMLEFT'] = "아이콘: 왼쪽 아래";
	L['Icon: BOTTOMRIGHT'] = "아이콘: 오른쪽 아래";
	L['Icon: LEFT'] = "아이콘: 왼쪽";
	L['Icon: RIGHT'] = "아이콘: 우쪽";
	L['Icon: TOP'] = "아이콘: 상단";
	L['Icon: BOTTOM'] = "아이콘 : 하단";
	L["Range Check"] = "거리 체크";
	L["Check if you are in range to cast spells on this specific unit."] = true;
	L['Transparent'] = "반투명화"
	L['Make textures transparent.'] = true;
	L['Stagger Bar'] = true;
	L['Text Color'] = "텍스트 색상";
	L['Only show when the unit is not in range.'] = "장치가 범위 내에없는 경우 '에만 표시됩니다";
	L['Mouseover'] = "마우스 오버";
	L['Only show when you are mousing over a frame.'] = "마우스가 단위로 이동하는 경우에만 표시";
	L['Ascending'] = "상승";
	L['Descending'] = "내림차순";
	L["Don't display auras that are not yours."] = "개인 버프아님 표시하지 않음";
	L["Don't display any auras found on the 'Blacklist' filter."] = "차단 목록 버프는 표시하지 않음";
	L["If no other filter options are being used then it will block anything not on the 'Whitelist' filter, otherwise it will simply add auras on the whitelist in addition to any other filter settings."] = "다른 필터는 사용하지 않은 경우,등록 리스트 필터 후광에 표시";
	L["Don't display auras that have no duration."] = "시간이없는 오라는 표시하지 않음";
	L["Don't display auras that cannot be purged or dispelled by your class."] = "클래스에 의해 제거 또는 무효화 할 수없는 오라는 표시하지 않음";
	L["Don't display raid buffs such as Blessing of Kings or Mark of the Wild."] = "팀을 표시하지 않습니다 BUFF,예를 들면 야생 또는 축복";
	L['Select an additional filter to use. If the selected filter is a whitelist and no other filters are being used (with the exception of Block Non-Personal Auras) then it will block anything not on the whitelist, otherwise it will simply add auras on the whitelist in addition to any other filter settings.'] = true;
	L['Position Override'] = "위치 범위";
	L['This will determine how the party/raid group will grow out when the group is not full. For example setting this to BOTTOMLEFT would cause the first raid frame to spawn from the BOTTOMLEFT corner of where the mover is positioned.'] = true;
	L['Display Text'] = "텍스트를 표시";
	L['Text Threshold'] = "텍스트 임계 값";
	L['At what point should the text be displayed. Set to -1 to disable.'] = "표시 텍스트에 설정하면, 비활성화 -1을 설정";

	L["If the unit is friendly to you."] = "당신에게 우호적인 경우";
	L["If the unit is an enemy to you."] = "당신에게 적대적인 경우";
	L['CCDebuffs'] = "제어 DEBUFF";
	L['TurtleBuffs'] = "생존기 Buffs";
	L['PlayerBuffs'] = "플레이어 BUFF";
	L['Blacklist'] = "차단 목록"
	L['Whitelist'] = "주문 목록";
	L['RaidDebuffs'] = "공격대 DEBUFF";
	L['Buff Indicator'] = "버프 알람"
	L['Buff Indicator (Pet)'] = "버프 알람(Pet)"
	L['AuraBar Colors'] = "오라바 색상";
	L['Blacklist (Strict)'] = "차단 목록 (Strict)";
	L["Transparent Power"] = "투명 Power 바";
	L['Show Aura From Other Players'] = "다른 유저가 걸어준 버프도 표시"
	L['Show When Not Active'] = "비활성 표시";
	L['Interrupting the voice prompts'] = "마법차단 음성메세지";
	L["Block Non-Personal Auras"] = "남이 걸은 건 제외"
	L["Block Non-Whitelisted Auras"] = "차단목록에 있는건 제외";
	L['Block Non-Dispellable Auras'] = "해제할 수 없으면 제외"
	L['By Type'] = "유형";
    L['Color aurabar debuffs by type.'] = "바 색상 유형에 따라 표시됩니다";
	L['TOPLEFT'] = "좌측 상단";
	L['LEFT'] = "좌측";
	L['BOTTOMLEFT'] = "좌측 하단";
	L['RIGHT'] = "우측";
	L['TOPRIGHT'] = "우측 상단";
	L['BOTTOMRIGHT'] = "우측 하단";
	L['CENTER'] = "중앙";
	L['TOP'] = "상단";
	L['BOTTOM'] = "하단";
	L["Affliction"] = "고통";
    L["Demonology"] = "악마";
    L["Destruction"] = "파괴";
    L['Interruptable'] = "차단이 가능한 기술"
    L['Non-Interruptable'] = "차단할 수 없는 기술"
	L['Harmony'] = "격노";
	L['Blood'] = "혈기"
	L['Unholy'] = "신성";
	L['Frost'] = "냉기"
	L['Death'] = "죽음";
	L['Holy Power'] = "성스러운 힘";
	L['Arcane Charges'] = "비전 충전물"
	L['Shadow Orbs'] = "어둠의 구슬"
	L['Lunar'] = "개월";
	L['Solar'] = "날짜 수";
	L['Class Resources'] = "직업별 특수 자원바"
	L['Center'] = "센터";
	L['JustifyH'] = "글자 가로 정렬방법"
	L["Sets the font instance's horizontal text alignment style."] = "수평 텍스트 정렬 폰트 인스턴스를 설정";
	L['Spells'] = "기능";
	L['This filter is meant to be used when you only want to whitelist specific spellIDs which share names with unwanted spells.'] = true;
	L['This filter is used for both aura bars and aura icons no matter what. Its purpose is to block out specific spellids from being shown. For example a paladin can have two sacred shield buffs at once, we block out the short one.'] = "특정 기술의 ID가 표시되어있는 기술을 방지하는 것입니다,예를 들어 : 성기사 한번에 두 신성한 방패 버프 사용시,디스플레이 짧은 버프을 중지 ";
	L['Style'] = "스타일 선택";
	L['Select the display method of the portrait.'] = "2D 또는 3D 선택";
	L['2D'] = true;
	L['3D'] = true;
	L['Friendly'] = "아군";
	L['Enemy'] = "적군";
	L['Allow Dispellable Auras'] = true;
	L["Block Raid Buffs"] = "시너지 버프류 제외"
	L["Block Auras Without Duration"] = "지속시간이 없으면 제외"
	L["Block Blacklisted Auras"] = "차단 목록 있는건 제외"
	L["Allow Whitelisted Auras"] = "주문 목록 버프 허용";
	L["Allow Personal Auras"] = "개인 버프 허용";
	L['Player Frame Aura Bars'] = "플레이어 프레임 오라 바";
	L['Filter Auras Not Dispellable By Me'] = "필터 auras를 dispelled 할 수 없습니다";
	L['Allow displaying of auras that can be dispelled by me.'] = true;
	L['Click Through'] = "마우스 무시"
	L['Ignore mouse events.'] = "마우스 이벤트 무시";
	L['Additional Filter'] = "추가 필터";
    L['Filter Non-Personal Auras'] = "필터 소유하고 있는 Auras";
    L['Use Blacklist Filter'] = "차단 목록 필터 사용";
    L['Use Whitelist Filter'] = "주문 목록 필터 사용";
    L['Filter Auras with No Duration'] = "필터 시간 Auras";
    L['Filter Raid Buffs'] = "팀 필터 Buff";
	L['The spell "%s" has been added to the Blacklist unitframe aura filter.'] = "기능 %s 차단 목록 리스트는 단위 프레임 분위기 필터에 추가됩니다";
	L['match frame size'] = "프레임 크기를 일치";
	L['Focus'] = "주시";
	L['Display icon on arena frame indicating the units talent specialization or the units faction if inside a battleground.'] = "투기장 프레임 재능 아이콘이나 전장에서";
	L['PVP Trinket'] = "PvP 장신구";
	L['Spec Icon'] = "pvp 아이콘";
	L['Assist Target'] = "대상 지원";
    L['Tank Target'] = "탱크 대상";
	L['Growth Direction'] = "확장 방향";
	L['Current / Max'] = "현재 / 최대";
	L['Current'] = "현재";
	L['Remaining'] = "남음";
	L['Format'] = "형식";
	L['X Offset'] = "X 축 기준 좌표";
	L['Y Offset'] = "Y 축 기준 좌표";
	L['RaidDebuff Indicator'] = "공격대 디버프 알람";
	L['Debuff Highlighting'] = "디버프 강조";
		L['Color the unit healthbar if there is a debuff that can be dispelled by you.'] = "당신이 해제할 수 있는 디버프에 걸리면 체력바 색상을 변경합니다.";
	L['Disable Blizzard'] = "블리자드 기본 비활성화";
		L['Disables the blizzard party/raid frames.'] = "블리자드 기본 파티/레이드 프레임을 끕니다.";
	L['OOR Alpha'] = "거리 투명도";
		L['The alpha to set units that are out of range to.'] = "사거리에서 벗어난 유닛의 투명도입니다.";
	L['You cannot set the Group Point and Column Point so they are opposite of each other.'] = "";
	L['Orientation'] = "방향";
		L['Direction the health bar moves when gaining/losing health.'] = "체력을 얻거나 잃었을때 체력바의 움직이는 방향을 조절합니다.";
		L['Horizontal'] = "가로";
		L['Vertical'] = "세로";
	L['Camera Distance Scale'] = "카메라 거리";
		L['How far away the portrait is from the camera.'] = "카메라와 초상화간의 거리";
	L['Offline'] = "오프라인";
	L['UnitFrames'] = "유닛프레임";
	L['Ghost'] = "유령";
	L['Smooth Bars'] = "부드러운 바";
		L['Bars will transition smoothly.'] = "바가 부드럽게 움직입니다.";
	L["The font that the unitframes will use."] = "유닛프레임에서 사용될 폰트.";
		L["Set the font size for unitframes."] = "유닛프레임에서의 폰트 크기를 조절합니다.";
	L['Font Outline'] = "폰트 외곽선";
		L["Set the font outline."] = "폰트 외곽선의 타입을 조절합니다.";
	L['Bars'] = "바";
	L['Fonts'] = "폰트";
	L['Class Health'] = "직업별 체력바";
		L['Color health by classcolor or reaction.'] = true;
	L['Class Power'] = "직업별 기력바";
		L['Color power by classcolor or reaction.'] = "기력, 마나바 색상을 직업색상이나 유닛의 반응으로 합니다.";
	L['Health By Value'] = "값에 따른 체력바";
		L['Color health by amount remaining.'] = "체력바 색상을 체력의 양에 따라 달리합니다.";
	L['Custom Health Backdrop'] = "사용자 체력바 배경";
		L['Use the custom health backdrop color instead of a multiple of the main health color.'] = "사용자가 설정한 색상 체력바의 배경색으로 지정.";
	L['Class Backdrop'] = "직업별 배경";
		L['Color the health backdrop by class or reaction.'] = "체력바 배경색상을 직업색상이나 유닛의 반응으로 합니다.";
	L['Health'] = "체력";
	L['Health Backdrop'] = "체력 배경";
	L['Tapped'] = "타 플레이어가 점유한 색상";
	L['Disconnected'] = "접속끊김";
	L['Powers'] = "마나/기력";
	L['Reactions'] = "반응";
	L['Bad'] = "적대적";
	L['Neutral'] = "중립적";
	L['Good'] = "우호적";
	L['Player Frame'] = "플레이어 프레임";
	L['Width'] = "길이";
	L['Height'] = "높이";
	L['Low Mana Threshold'] = "낮은 Mana 임계 값";
		L['When you mana falls below this point, text will flash on the player frame.'] = "마나 설정값보다 떨어지면 플레이어 창에서 마나 적음 경고.";
	L['Combat Fade'] = "비전투 시 숨김";
		L['Fade the unitframe when out of combat, not casting, no target exists.'] = "비전투 혹은 캐스팅, 타겟이 없는 상태일시 유닛프레임을 숨김.";
	L['Health'] = "체력";
		L['Text'] = "문자";
		L['Text Format'] = "문자 형식";	
	L['Current - Percent'] = "현재 - 퍼센트";
    L['Current - Max | Percent'] = "현재 값 - 최대 | 비율";
	L['Current - Max'] = "현재 - 최대";
	L['Current'] = "현재";
	L['Percent'] = "퍼센트";
	L['Deficit'] = "손실량";
	L['Filled'] = "프레임과 동일하게";
	L['Spaced'] = "간격[공백]";
	L['Power'] = "마나/기력";
	L['Offset'] = "오프셋";
		L['Offset of the powerbar to the healthbar, set to 0 to disable.'] = "체력바와 파워바 사이의 오프셋(거리), 0으로 설정.";
	L["Alt-Power"] = "Alt-파워";
	L['Overlay'] = "덮어 씌우기";
		L['Overlay the healthbar']= "체력바 위에 덮어 씌우기";
	L['Portrait'] = "초상화";
	L['Name'] = "이름";
	L['Up'] = "위";
	L['Down'] = "아래";
	L['Left'] = "왼쪽";
	L['Right'] = "오른쪽";
	L['Num Rows'] = "줄 갯수";
	L['Per Row'] = "한 줄당 갯수";
	L['Buffs'] = "버프";
	L['Debuffs'] = "디버프";
	L['Y-Growth'] = "세로 나열 방향";
	L['X-Growth'] = "가로 나열 방향";
		L['Growth direction of the buffs'] = "버프의 나열 방향을 정합니다.";
	L['Initial Anchor'] = "초기 기준점";
		L['The initial anchor point of the buffs on the frame'] = "프레임의 버프 초기 기준점을 설정합니다.";
	L['Castbar'] = "시전바";
	L['Icon'] = "아이콘";
	L['Latency'] = "지연시간";
	L['Color'] = "색상";
	L['Interrupt Color'] = "차단가능 색상";
	L['Match Frame Width'] = "프레임 길이와 일치";
	L['Fill'] = "채우기";
	L['Classbar'] = "직업바";
	L['Position'] = "위치";
	L['Target Frame'] = "대상 프레임";
	L['Text Toggle On NPC'] = "NPC 이름만 보기";
		L['Power text will be hidden on NPC targets, in addition the name text will be repositioned to the power texts anchor point.'] = "대상이 NPC일 경우에 파워를 숨기고 그 위치에 이름을 표시합니다.";
	L['Combobar'] = "콤보바";
	L['Use Filter'] = "필터 사용";
		L['Select a filter to use.'] = "사용할 필터를 선택하세요.";
		L['Select a filter to use. These are imported from the unitframe aura filter.'] = "사용할 필터를 선택하세요. 이것은 유닛프레임 오라 필터에서 추출된 것입니다.";
	L['Personal Auras'] = "개인적인 오라";
		L['If set only auras belonging to yourself in addition to any aura that passes the set filter may be shown.'] = "여러 버프/디버프 중 당신에 의한 오라만 보여집니다.";
	L['Create Filter'] = "필터 생성"
		L['Create a filter, once created a filter can be set inside the buffs/debuffs section of each unit.'] = "각 유닛의 버프/디버프에 필터를 생성합니다."
	L['Delete Filter'] = "필터 삭제";
		L['Delete a created filter, you cannot delete pre-existing filters, only custom ones.'] = "생성된 필터를 제거합니다. 단, 추가로 생성한 필터만 제거가 가능합니다."
	L["You can't remove a pre-existing filter."] = "기존 필터를 제거할 수 없습니다."
	L['Select Filter'] = "필터 선택";
	L['Whitelist'] = "사용 목록"
	L['Blacklist'] = "차단 목록"
	L['Filter Type'] = "필터 종류"
		L['Set the filter type, blacklisted filters hide any aura on the like and show all else, whitelisted filters show any aura on the filter and hide all else.'] = "필터 형식을 설정합니다. 차단 목록 형태는 설정된 오라를 제외한 모든 오라를 표시하며 요구 목록 형태는 설정된 오라만을 표시합니다."
	L['Add Spell'] = "주문 추가";
		L['Add a spell to the filter.'] = "필터에 주문을 추가합니다."
	L['Remove Spell'] = "주문 제거"
		L['Remove a spell from the filter.'] = "필터에서 주문을 제거합니다."
	L['You may not remove a spell from a default filter that is not customly added. Setting spell to false instead.'] = "기본 필터에 설정된 기본 주문들은 삭제할 수 없습니다. 대신 비활성화는 가능합니다."
	L['Unit Reaction'] = "유닛 반응";
		L['This filter only works for units with the set reaction.'] = "이 필터는 설정된 유닛의 반응에 따라 작동합니다.";
		L['All'] = "모두";
		L['Friend'] = "우호적";
		L['Enemy'] = "적대적";
	L['Duration Limit'] = "시간 제한";
		L['The aura must be below this duration for the buff to show, set to 0 to disable. Note: This is in seconds.'] = "이 시간 밑으로 떨어지는 버프만 보여지게 설정합니다. 0으로 설정하면 비활성화 됩니다. 참고 : 이것은 초 단위입니다.";
	L['TargetTarget Frame'] = "대상의 대상 프레임";
	L['TargetTargetTarget Frame'] = "대상의 대상에 대상 프레임";
	L['Attach To'] = "위치";
		L['What to attach the buff anchor frame to.'] = "버프 기준점을 어디에 붙일지 정합니다.";
		L["What to attach the debuff anchor frame to."] = "Debuff 앵커는 어디에 붙어";
		L['Frame'] = "프레임";
	L['Anchor Point'] = "기준점";
		L['What point to anchor to the frame you set to attach to.'] = "당신이 설정한 위치에서의 기준점 위치를 정합니다.";
	L['Focus Frame'] = "주시대상 프레임";
	L['FocusTarget Frame'] = "주시대상의 대상 프레임";
	L['Pet Frame'] = "소환수 프레임";
	L['PetTarget Frame'] = "소환수의 대상 프레임";
	L['Boss Frames'] = "보스 프레임";
	L['Growth Direction'] = "나열 방향"
	L['Arena Frames'] = "투기장 프레임";
	L['Profiles'] = "프로필";
	L['New Profile'] = "새 프로필";
	L['Delete Profile'] = "프로필 삭제";
	L['Copy From'] = "복사해오기";
	L['Talent Spec #1'] = "특성 #1";
	L['Talent Spec #2'] = "특성 #2";
	L['NEW_PROFILE_DESC'] = '여기서 새 유닛프레임 프로필을 만들 수 있으며, 특성에 기반해 당신이 현재 사용하는 프로필을 부를 수도 있습니다. 또한 지우거나, 복사하거나 초기화도 여기서 할 수 있습니다.';
	L["Delete a profile, doing this will permanently remove the profile from this character's settings."] = "프로필을 삭제합니다. 이 작업은 이 캐릭터의 설정을 영구히 삭제합니다.";
	L["Copy a profile, you can copy the settings from a selected profile to the currently active profile."] = "프로필을 복사합니다. 현재 활성화 된 프로필을 선택한 프로필의 내용으로 복사합니다.";
	L["Assign profile to active talent specialization."] = "특성의 활성화에 따라 사용할 프로필을 배정합니다.";
	L['Active Profile'] = "활성화된 프로필";
	L['Reset Profile'] = "프로필 초기화";
		L['Reset the current profile to match default settings from the primary layout.'] = "현재 프로필을 리셋하여 주 레이아웃의 설정과 맞춥니다.";
	L['Party Frames'] = "파티 프레임";
	L['Group Point'] = "그룹 포인트";
		L['What each frame should attach itself to, example setting it to TOP every unit will attach its top to the last point bottom.'] = true;
	L['Column Point'] = "세로(행) 포인트";
		L['The anchor point for each new column. A value of LEFT will cause the columns to grow to the right.'] = true;
	L['Max Columns'] = "최대 행의 갯수";
		L['The maximum number of columns that the header will create.'] = "최대 디스플레이 얼마나 많은 열";
	L['Units Per Column'] = "한 행당 유닛의 갯수";
		L['The maximum number of units that will be displayed in a single column.'] = "유닛의 수는 최대";
	L['Column Spacing'] = "행간 간격";
		L['The amount of space (in pixels) between the columns.'] = "행간의 간격을 설정합니다.";
	L['xOffset'] = "X 축 기준 좌표";
		L['An X offset (in pixels) to be used when anchoring new frames.'] = "새로운 프레임 오프셋 값의 X 방향";
	L['yOffset'] = "Y 축 기준 좌표";
		L['An Y offset (in pixels) to be used when anchoring new frames.'] = "Y 방향의 새로운 프레임 오프셋 값";
	L['Show Party'] = "파티 보기";
		L['When true, the group header is shown when the player is in a party.'] = "활성화시, 그룹 헤더가 파티에 속해있을 때 보여집니다.";
	L['Show Raid'] = "공격대 표시";
		L['When true, the group header is shown when the player is in a raid.'] = "활성화시, 그룹 헤더가 레이드에 속해있을 때 보여집니다.";
	L['Show Solo'] = "솔로 보기";
		L['When true, the header is shown when the player is not in any group.'] = "활성화시, 플레이어가 어느 그룹에도 속하지 않았다고 헤더가 보여집니다.";
	L['Display Player'] = "플레이어 표시";
		L['When true, the header includes the player when not in a raid.'] = "활성화시, 레이드에 참여하지 않은 플레이어를 헤더에 포함합니다.";
	L['Visibility'] = "표시";
		L['The following macro must be true in order for the group to be shown, in addition to any filter that may already be set.'] = "여기에 매크로가 표시됩니";
	L['Blank'] = "공백";
	L['Buff Indicator'] = "버프 표시[색상&아이콘]";
	L['Color Icons'] = "색상 아이콘";
		L['Color the icon to their set color in the filters section, otherwise use the icon texture.'] = "컬러 디스플레이 아이콘,그렇지 않으면, 아이콘 자료를 사용";
	L['Size'] = "크기";
		L['Size of the indicator icon.'] = "지시 아이콘의 크기";
	L["Select Spell"] = "주문 선택";
	L['Add SpellID'] = "주문ID 추가";
	L['Remove SpellID'] = "주문ID 삭제";
	L["Not valid spell id"] = "올바른 주문ID가 아닙니다.";
	L["Spell not found in list."] = "리스트에서 주문을 찾지 못하였습니다.";
	L['Show Missing'] = "사라진 것 보기";
	L['Any Unit'] = "모든 단위";
	L['Move UnitFrames'] = "유닛프레임 이동";
	L['Reset Positions'] = "위치 초기화";
	L['Sticky Frames'] = "접착식 프레임";
	L['Attempt to snap frames to nearby frames.'] = "창 옆에있는 창 자동 흡착,잠금을 해제하기 편리한 위치를 조정";
	L['Raid25 Frames'] = "레이드 25 프레임";
	L['Raid40 Frames'] = "레이드 40 프레임";
	L['Copy From'] = "복사하기";
	L['Select a unit to copy settings from.'] = "에서 설정을 복사하는 단위를 선택하세요";
	L['You cannot copy settings from the same unit.'] = "당신은 동일한 단위의 설정을 복사할 수 없습니다";
	L['Restore Defaults'] = "기본값 복원";
	L['Role Icon'] = "역할 아이콘";
	L['Smart Raid Filter'] = "자동 공격대 설정";
	L['Override any custom visibility setting in certain situations, EX: Only show groups 1 and 2 inside a 10 man instance.'] = "상황에 따라 맞춤 레이드 표시를 사용합니다. 예: 10인 인스턴스 던전 진입 시 1, 2파티만 표시됨.";
	L['Heal Prediction'] = "예상 치유량";
	L['Show a incomming heal prediction bar on the unitframe. Also display a slightly different colored bar for incoming overheals.'] = "들어오는 힐의 바를 유닛프레임에 표시합니다. 또한 들어오는 오버힐을 다른 색상으로 표시합니다.";
	L['Assist Frames'] = "지원공격 전담 프레임"
	L['Tank Frames'] = "방어전담 프레임"
	L['Swing'] = "스윙 바[공속바]";
	L['Swing Bar'] = "스윙 바";
	L['Vengeance'] = "복수";
	L['Vengeance Bar'] = "복수 바";
	
	L['Party Pets'] = "파티 펫";
	L['Party Targets'] = "파티 대상";
	L["Display Pets"] = "애완 동물을 표시";
	L['Ticks'] = "틱"	L['Display tick marks on the castbar for channelled spells. This will adjust automatically for spells like Drain Soul and add additional ticks based on haste.'] = "주문에 대한 castbar에 표시합니다. 이 영혼 흡수 같은 주문에 대해 자동으로 가속에 따라 추가 틱을 추가.";
	
	L['CCDebuffs'] = "제어 DEBUFF"
	L['TurtleBuffs'] = "생존기 DEBUFF"
	L['DebuffBlacklist'] = "차단 DebuffB"
	L['RaidDebuffs'] = "공격대 DEBUFF"
	L['RaidDebuffs2'] = "공격대 DEBUFF 아이콘2"
	
	L['Totem Time'] = "토템 타이머";
	L['Attention Frames'] = "주시 프레임";
	L['%s frame(s) has a conflicting anchor point, please change either the buff or debuff anchor point so they are not attached to each other. Forcing the debuffs to be attached to the main unitframe until fixed.'] = "%s 의 위치 기준 프레임이 상충되고 있습니다. 서로가 서로의 위치를 참조하지 않게 버프나 디버프 중 하나의 위치를 바꿔주세요. 수정되기 전까지 강제로 유닛프레임이 기준으로 됩니다. ";	
	L['Spark'] = "플래쉬";
	L['Display a spark texture at the end of the castbar statusbar to help show the differance between castbar and backdrop.'] = true;
	L['Frequent Updates'] = "자주 업데이트";
	L['Rapidly update the health, uses more memory and cpu. Only recommended for healing.'] = true;	
	L['targetGlow'] = "대상 테두리 발광";
	L['In the party and raid frame for is your target to add a classcolor border.'] = true;
	L['Rest Icon'] = "휴식 아이콘";
	L['Display the rested icon on the unitframe.'] = "프레임 휴식 아이콘";
	L["Eui UF Style"] = "EUI프레임 기본제공;\n아래 번호선택\n 그외 직접 설정창에서 값조정후 사용해주세요";
	L["Display Target"] = "대상 표시";
	L["Display the target of the cast on the castbar."] = "시전 바에 시전바 대상을 표시";
	L['Double Icon'] = "더블 아이콘";
	
	L["Short"] = "짧은";
	L["Medium"] = "중간";
	L["Long"] = "긴";
	L["Long (Include Level)"] = "긴(포함 수준)";
	L["Length"] = "길이";
	L["Tanks First"] = "탱크 우선순위";
	L['Size Override'] = "크기 보호";
	L['If not set to 0 then override the size of the aura icon to this.'] = "그렇지 않은 경우 0.이 값은 정의된 후광 아이콘의 크기를 무시합니다";	
	L["Set the priority order of the spell, please note that prioritys are only used for the raid debuff module, not the standard buff/debuff module. If you want to disable set to zero."] = "마법 우선순위를 설정.참고하세요 ..우선은 사용됩니다 RAID DEBUFF모듈,대신 표준에BUFF/ DEBUFF모듈,당신이 비활성화하려면 0으로 설정됩니다";
	L["Priority"] = "우선 순위";
	L['Display Frames'] = "미리보기";
	L['Force the frames to show, they will act as if they are the player frame.'] = "필수 프레임 디스플레이";	
	L['Show Auras'] = "버프 미리보기";
	L['RL / ML Icons'] = "RL / ML 아이콘";
	L['Focus Castbar'] = "주시대상 Castbar";
	L['Player Castbar'] = "플레이어 Castbar";
	L['Target Castbar'] = "대상 Castbar";
	L['Custom Texts'] = "사용자 정의 텍스트";
	L['Create a custom fontstring. Once you enter a name you will be able to select it from the elements dropdown list.'] = true;
	L['Smart Auras'] = "스마트 Auras";
	L['Disabled'] = "사용 안 함";
	L['Friendlies: Show Debuffs'] = "동명: 표시 Debuff"
	L['Friendlies: Show Buffs'] = "동명: 표시 Buff"
	L['Use Whitelist'] = "사용 사용 목록";
	L['If set then if the aura is found on the whitelist filter it will display. Note: You can change between only doing this on friendly or enemy units.'] = true;
	L['Use Blacklist'] = "차단 목록 사용";
	L['If set then if the aura is found on the blacklist filter it will not display. Note: You can change between only doing this on friendly or enemy units.'] = true;
	L['Allow displaying of auras that do not have a duration.'] = "오라 시간 표시를 허용";
	L['If set, only auras belonging to yourself in addition to any aura that passes the set filter(s) may be shown. Note: You can change between only doing this on friendly or enemy units.'] = "설정하는 경우에만 자신의 캐스트와 오라 필터를 표시합니다";
	L['No Consolidated'] = "종합";
	L['Allow displaying of auras that are considered consolidated by Blizzard.'] = "블리자드 오라 허용 표시";
	L['When set the Buffs and Debuffs will toggle being displayed depending on if the unit is friendly or an enemy. This will not effect the aurabars module.'] = true;
	L['Friendly Aura Type'] = "아군 버프/디버프 선택";
	L['Set the type of auras to show when a unit is friendly.'] = "디스플레이의 종류를 설정";
	L['Enemy Aura Type'] = "적 버프/디버프 선택";
	L['Set the type of auras to show when a unit is a foe.'] = "단위 표시 적대적 설정 Aura 유형 경우";
	L['TEXT_FORMAT_DESC'] = [=[글자가 표시되는 형식을 변경할 수 있습니다.

예: 
[namecolor][name] [difficultycolor][smartlevel] [shortclassification]
[healthcolor][health:current-max]
[powercolor][power:current]

마나[기력] / 생명력 형식:
|cff2eb7e4< health(생명력) / power(자원) 형식 >|r
|cffceff00current|r : 현재 수치
|cffceff00percent|r : 현재 양을 %로 표시
|cffceff00current-max|r : [현재 수치]-[최대값]
|cffceff00current-percent|r : [현재 수치]-[%]
|cffceff00current-max-percent|r : [현재 수치]-[최대값]-[%]
|cffceff00deficit|r : 손실치만 표시하며 현재 수치가 최대치이면 표시하지 않음

최대 이름 표시:
'name:veryshort' - 최대4자 문자 표시
'name:short' - 최대6자 문자 표시
'name:medium' - 최대15자 문자 표시
'name:long' - 최대20자 문자 표시
'raidgroup' - 팀 번호 표시 
'anticipation' - 예상
'cpoints' - 콤보 포인트 보기
자세한 내용은 다음 사이트를 방문하시기 바랍니다 http://www.inven.co.kr/board/powerbbs.php?come_idx=2639]=];	
end

--Datatext
do
	L['Align Actionbar Infobar'] = "행동바 와 정보바 일치";
	L['Align Actionbar Infobar desc'] = "고 저 중 해상도 사용자 , 자동으로 행동바 위치와 정보바 위치가 일치하도록 조정됩니다";
	L["Building(s) Report:"] = '주문 보고서:';
	L["Mission(s) Report:"] = '보고서:';
	L['Invalid Equipment: |cffFFFFFF'] = "잘못된 장비 설정: |cffFFFFFF";
	L['Spec Binding Equipment'] = "특성 장비 바인딩";
	L["Arena"] = "투기장";
	L["Combat"] = "전투";
	L["Left button:"] = "마우스 왼쪽 버튼으로 클릭:";
	L["Send player's coord to chatframe"] = "플레이어 좌표 위치 대화창 알림";
	L["Right button:"] = "오른쪽:";
	L["Open world map"] = "세계지도 열기";
	L['TopDataTextsBar1'] = "상단 패널1";
	L['TopDataTextsBar2'] = "상단 패널2";
	L['TopDataTextsBar3'] = "상단 패널3";
	L['TopDataTextsBar4'] = "상단 패널4";
	L['E_Coord'] = "플레이어 좌표";
	L['E_Range'] = "대상 거리";
	L['E_Menu'] = "시스템 메뉴";
	L['E_Shortopt'] = "바로 가기";
	L['E_Raidtool'] = "팀 도구";
	L['E_Zone'] = "지역 이름";
	L['TopInfobar width'] = "상단 바 길이";
	L['TopInfobar height'] = "상단 바 높이";
	
	L['Spec'] = "특성";
	L['|cffFFFFFFLeft Click:|r Change Talent Specialization'] = '|cffFFFFFF마우스 왼쪽 버튼 클릭:|r 특성 전환';
	L['|cffFFFFFFRight Click:|r Change Loot Specialization'] = '|cffFFFFFF마우스 오른쪽 버튼 클릭:|r 전문화 변경';
	L['Oondasta'] = "운다스타";
	L['Nalak'] = "나락크";
	L["Combat Time"] = "전투 시간";
	L['Panel Transparency'] = "패널 투명성";
	L["Reset Data: Hold Shift + Right Click"] = "데이터를 재설정: Shift 키 + 마우스 오른쪽 버튼 클릭";
	L["World Boss(s)"] = "필드 네임드(s):";
	L['Sha of Anger'] = "분노의 샤";
	L['Galleon'] = "갈레온";
	L['Celestials'] = true;
	L['Ordos'] = true;
	L['Crit'] = "Crit";
	L['Datatext Panel (Left)'] = "좌측 정보문자 탭 사용"
	L['Datatext Panel (Right)'] = "우측 정보문자 탭 사용"
	L['Display data panels below the chat, used for datatexts.'] = "패널의 하단에 정보문자 탭을 추가합니다. 이 탭에 정보문자가 있게 됩니다."
	L['ABLeftInfobar'] = "좌측 행동바5 아래";
    L['ABRightInfobar'] = "우측 행동바3 아래";
    L['MainABInfobar'] = "행동바1 아래";
	L["Game Time:"] = "게임 시간:";
	L['Orb Possessions'] = true;
	L['Victory Points'] = "승리 포인트";
	L['Carts Controlled'] = true;
	L['Bandwidth'] = "대역폭";
	L['Download'] = "다운로드";
	L['Total Memory:'] = "총 메모리:";
	L['Home Latency:'] = "로컬 지연시간:";
	L['World Latency:'] = "세계 지연 시간";
	
	L.goldabbrev = "|cffffd700●|r"
	L.silverabbrev = "|cffc7c7cf●|r"
	L.copperabbrev = "|cffeda55f●|r"	
	
	L['Session:'] = "세션:";
	L["Character: "] = "캐릭터: ";
	L["Server: "] = "서버: ";
	L["Total: "] = "총: ";
	L["Saved Raid(s)"]= "귀속된 던전";
	L["Currency:"] = "화폐:";	
	L["Earned:"] = "수입:";	
	L["Spent:"] = "지출:";	
	L["Deficit:"] = "적자:";	
	L["Profit:"	] = "흑자:";	
	
	L["DataTexts"] = "정보문자"
	L["DATATEXT_DESC"] = "정보문자에 관련된 옵션들입니다."
	L["Multi-Spec Swap"] = "이중 특성 전환";
	L['Swap to an alternative layout when changing talent specs. If turned off only the spec #1 layout will be used.'] = "특성 교체 시 대체 레이아웃을 활성화함. 만약 이것을 끄면 오직 #1의 레이아웃만 사용됩니다.";
	L['24-Hour Time'] = "24시간제";
	L['Toggle 24-hour mode for the time datatext.'] = "시간 정보글자를 24시간제로 토글함";
	L['Local Time'] = "현지 시간";
	L['If not set to true then the server time will be displayed instead.'] = "비활성화시 서버 시간을 대신 표시합니다.";
	L['Primary Talents'] = "주 특성";
	L['Secondary Talents'] = "보조 특성";
	L['left'] = '좌측';
	L['middle'] = '중앙';
	L['right'] = '우측';
	L['LeftChatDataPanel'] = '좌측 대화창';
	L['RightChatDataPanel'] = '우측 대화창';
	L['LeftMiniPanel'] = '미니맵 좌측';
	L['RightMiniPanel'] = '미니맵 우측';
	L['EuiTopLeftDataTexts'] = '상단 정보바 좌측';
	L['EuiTopRightDataTexts'] = '상단 정보바 우측';
	L['Friends'] = '친구';
	L['Friends List'] = '친구 목록';
	
	L['Head'] = "머리";
	L['Shoulder'] = "어깨";
	L['Chest'] = "가슴";
	L['Waist'] = "허리";
	L['Wrist'] = "손목";
	L['Hands'] = "손";
	L['Legs'] = "다리";
	L['Feet'] = "발";
	L['Main Hand'] = "주장비";
	L['Offhand'] = "보조장비";
	L['Ranged'] = "원거리장비";
	L['Mitigation By Level: '] = "레벨에 따른 점감";
	L['lvl'] = "레벨";
	L["Avoidance Breakdown"] = "방어합 수치";
	L['AVD: '] = "방어율:";
	L['Unhittable:'] = "100% 방어행동까지";
	L['AP'] = "전투력";
	L['SP'] = "주문력";
	L['HP'] = "주문력";
	L['allunavailable'] = "전쟁의 정보를 얻을 수 없습니다."
	L['nodungeons'] = true;
	
	L["Armor"] = "방어도";
	L["Attack Power"] = "공격력";
	L["Avoidance"] = "방어 합";
	L["Crit Chance"] = "치명타&극대화";
	L["DTName"] = true;
	L["Durability"] = "내구도";
	L["Friends"] = "친구";
	L["Gold"] = "골드";
	L["Guild"] = "길드";
	L["Spell/Heal Power"] = "치유량/주문력";
	L["System"] = "시스템 정보";
	L["Time"] = "시간";
	L["Bags"] = "가방";
	L["Call to Arms"] = "인던 신청";
	L["Spec Switch"] = "특성 교환 버튼";
	L['Talent/Loot Specialization'] = "특성/전리품 전환 버튼";
	L["Mana Regen"] = "마나 회복"
	L["Expertise"] = STAT_EXPERTISE
	L["DPS"] = "DPS"
	L["HPS"] = "HPS"
	L["Haste"] = STAT_HASTE
	L["Hit Rating"] = "적중도";
	L["Mastery"] = STAT_MASTERY
	L["AddOnSkins"] = "애드온 스킨"
	L["OfflineDataCenter"] = "오프라인 데이터"
	L["Resolve"] = GetSpellInfo(158300)
	L["PvP Power"] = "PvP Power"
	L["PvP Resilience"] = "PvP 탄력"
	L["RaidBuilder"] = "RaidBuilder"
	L["combat/Arena Time"] = "전투시간"
	L["HPS"] = "HPS"
	
	L['Total CPU:'] = "총 CPU :" -- Needs review
	L['(Hold Shift) Memory Usage'] = [=[ 메모리 사용(Shift 키)]=] -- Needs review
	L['Flags Captured'] = "직업 깃발";
	L['Flags Returned'] = "깃발 반납";
	L['Graveyards Assaulted'] = "무덤 공격";
	L['Graveyards Defended'] = "무덤 방어";
	L['Towers Assaulted'] = "전초 기지 습격";
	L['Towers Defended'] = "기지 방어";
	L['Demolishers Destroyed'] = "공성전 차량 파괴";
	L['Gates Destroyed'] = "파괴의 문";
	L['Bases Assaulted'] = "기지 습격";
	L['Bases Defended'] = "기지 방어";
	L['Battleground datatexts temporarily hidden, to show type /bgstats or right click the "C" icon near the minimap.'] = "전장전용 정보문자를 일시적으로 표시하지 않습니다. 다시 보고 싶으면 |cffceff00/bgstats|r 나 미니맵에 있는 C 버튼을 우클릭하세요.";
	L['Toggle Configuration'] = "ElvUI 설정창 열기";
	L['Show BG Texts'] = "BG의 텍스트를 표시";
	L['Battleground datatexts will now show again if you are inside a battleground.'] = "만약 전장 정보 텍스트가 전장에 다시 표시됩니다";
	L['Battleground Texts'] = "전장 텍스트";
	L['When inside a battleground display personal scoreboard information on the main datatext bars.'] = "개인 점수 정보, 전장에서 텍스트 정보";
	L['Stats For:'] = "통계:";
end

--Tooltip
do
	L["Custom Faction Colors"] = "사용자 지정 색상";
	L["Mount Info"] = "|cffC495DDEui탈것정보|r ";
	L["Mount Info haved"] = true;
	L["Mount Info not haved"] = true;
	L["Bags Only"] = '가방';
	L["Bank Only"] = '은행';
	L["Both"] = '전체';
	L['Hated'] = true;
	L['Hostile'] = true;
	L['Unfriendly'] = true;
	L['Neutral'] = true;
	L['Friendly'] = true;
	L['Honored'] = true;
	L['Revered'] = true;
	L['Exalted'] = true;
	L["Transmogrify"] = true;
	L["Transmogrify sort"] = true;
	L["key to view Set effect"] = "셋트 효과 볼 수있는 버튼";
	L[" 's Bag"] = "가방";
	L[" 's Bank"] = "은행";
	L['Hold down the ALT key'] = "ALT 키를 누른 상태";
	L['Show the number of items for all Character'] = "모든 역할 항목의 수를 나타냅니다";
	L["No Transparent Theme"] = "투명 테마 없음";
	L['Guild Ranks'] = "길드 등급 표시";
	L['Display guild ranks if a unit is guilded.'] = "해당 대상이 길드에 가입되있으면 길드 등급을 표시";
	L['Player Titles'] = "길드 칭호 표시";
	L['Display player titles.'] = "해당 대상이 길드에 가입되있으면 길드 등급을 표시";
	L["Who's targeting who?"] = "누구를 대상으로 잡고있는지 표시";
	L['Display the health text on the tooltip.'] = "툴팁에 체력 텍스트를 표시";
	L['Health Height'] = "체력 높이";
	L['Set the height of the tooltip healthbar.'] = "툴팁 healthbar의 높이를 설정";
	L['Spell/Item IDs'] = "아이템/주문 ID 표시"
    L['Display the spell or item ID when mousing over a spell or item tooltip.'] = "마우스에 표시되는 스킬이나 아이템 메시지가 나타납니다 ID";
    L['Item Count'] = "아이템 개수";
    L['Display how many of a certain item you have in your possession.'] = "현재 아이템 표시";
	L['Always Hide'] = "항상 숨기기";
	L['Never Hide'] = "항상 보이기";
	L["Your Status: Completed on "] = "상태:완료";
    L["Your Status: Incomplete"] = "당신의 상태 : 작성 중";
    L["Your Status:"] = "당신의 상태";
	L["TOOLTIP_DESC"] = "툴팁에 관련된 옵션들입니다."
	L['Targeted By:'] = "대상을 잡은 사람";
	L['Tooltip'] = '툴팁 (Tooltip)';
	L['Count'] = "갯수";
	L['Anchor Mode'] = "기준점 모드";
	L['Set the type of anchor mode the tooltip should use.'] = "툴팁에 사용될 기준점 모드를 설정합니다.";
	L['Talent Spec'] = "특성 정보";
	L['Display the players talent spec in the tooltip, this may not immediately update when mousing over a unit.'] = "마우스 오버시 플레이어의 특성 표시, 이 정보는 실시간으로 업데이트되지 않습니다";
	L['Cursor Anchor'] = "커서[마우스] 위치";
	L['Should tooltip be anchored to mouse cursor'] = "툴팁은 마우스 커서에 고정되어야한다";
	L['Anchor'] = "고정 된 위치";
	L['UF Hide'] = "유닛 프레임 숨기기 메시지";
	L["Don't display the tooltip when mousing over a unitframe."] = "마우스 포인터가 표시되지 않을 때 유닛 프레임 마우스 팁";
	L["Target Info"] = "대상 정보";
	L["When in a raid group display if anyone in your raid is targetting the current tooltip unit."] = "레이드 그룹 내에서 현재 툴팁 대상을 누가 대상으로 잡았는지 보여줍니다.";
	L["Combat Hide"] = "전투 시 숨김";
	L["Hide tooltip while in combat."] = "전투 중엔 숨김";
	L['Item-ID'] = "아이템-ID 등록";
	L['Display the item id on item tooltips.'] = "툴팁에 아이템 ID를 표시함";
	L["Yard"] = "미터";
	L["Range"] = "대상 거리";
	L["Current Talent"] = "현재 특성";
	L["Reserve Talent"] = "예비 특성";
	L["AvgItemLvl"] = "평균 장비 Lvl";
end

--Chat
do
	L['LFG Icons'] = "역할 아이콘 표시"
	L['Display LFG Icons in group chat.'] = "말한 사람에게 역할 아이콘이 설정되어 있는 경우 이름에 같이 표시할지 여부를 결정합니다."
	L["Tab Font"] = "채팅탭 글꼴"
	L["Tab Font Size"] = "채팅탭 글꼴 크기"
	L["Tab Font Outline"] = "탭 폰트 테투리";
	L['Combat to hide backdrop'] = "전투중 채팅 박스 숨기기";
	L['Tab Panel Transparency'] = "탭 반투명"
	L['Embed to Left Chat Window'] = "임베디드 좌측 대화창으로 이동";
	L['Send to Screen'] = "Send to Screen";
	L['Chat EditBox Position'] = "대화입력창 위치"
    L['Position of the Chat EditBox, if datatexts are disabled this will be forced to be above chat.'] = "대화 입력창의 위치를 결정합니다. 만약 정보문자 항목에서 패널에 정보문자를 표시하지 않게 해놨다면 위치가 채팅창 위로 고정됩니다."
    L['Below Chat'] = "채팅창 아래에 배치"
    L['Above Chat'] = "채팅창 위에 배치"
	L['Lock Positions'] = "패널에 채팅창 고정"
    L['Attempt to lock the left and right chat frame positions. Disabling this option will allow you to move the main chat frame anywhere you wish.'] = "좌우측 패널에 채팅창 고정 여부를 결정합니다. 체크 해제 시 좌측에 고정된 기본 채팅창도 움직일 수 있습니다."
	L['Chat History'] = "이전 채팅내역 기억"
	L['Log the main chat frames history. So when you reloadui or log in and out you see the history from your last session.'] = "애드온 리로드나 로그아웃 이전의 채팅내역을 보존하여 접속했을 때 보여줍니다."
	L['Fade Chat'] = "오래된 메시지 숨기기"
	L['Fade the chat text when there is no activity.'] = "시간이 오래 지난 이전의 메시지를 채팅창에서 보이지 않게 합니다. 삭제하는 것은 아니니 마우스 휠링으로 안보이게 한 이전의 메시지를 다시 확인할 수 있습니다."
	L['CHAT_DESC'] = "채팅과 패널에 관련된 옵션들입니다."
	L["Chat"] = "대화창";
	L['Invalid Target'] = "잘못된 대상"
	L['BG'] = true;
	L['BGL'] = true;
	L['G'] = true;
	L['O'] = true;
	L['P'] = true;
	L['PL'] = true;
	L['R'] = true;
	L['RL'] = true;
	L['RW'] = true;
	L['DND'] = true;
	L['AFK'] = true;
	L['I'] = true;
	L['IL'] = true;
	L['whispers'] = true;
	L['says'] = true;
	L['yells'] = true;
	L['Hyperlink Hover'] = "링크 툴팁 표시"
	L['Display the hyperlink tooltip while hovering over a hyperlink.'] = "각종 링크에 커서를 갖다 댄(마우스오버) 동안에 링크에 대한 툴팁을 표시합니다."
	L['Spam Interval'] = "중복메시지 제한 기간"
	L['Prevent the same messages from displaying in chat more than once within this set amount of seconds, set to zero to disable.'] = "같은 내용의 메시지는 이 값만큼 정해진 시간 내에선 한번만 보여줍니다.|n|n0으로 설정하면 이 기능을 끕니다."
	L['Scroll Interval'] = "자동 스크롤링 시간"
	L["Number of time in seconds to scroll down to the bottom of the chat window if you are not scrolled down completely."] = "채팅창의 스크롤이 맨 아래가 아니라면 이 값 만큼 시간이 지났을 때 맨 아래로 자동 스크롤링 됩니다."
	L["You need to be at least level %d to whisper me."] = "나에게 귓속말 할때 적어도 레벨 % d 개 필요";
	L["You have reached the maximum amount of friends, remove 2 for this module to function properly."] = "네 친구가 가득, 두칸이 기능을 사용하기 위해 남겨";
	L['Whisper Level'] = true;
	L["Minimum level of the sender to able to whisper you."] = true;
	L["BigFootChannel"] = "월드 채널";
	L["Auto join BigFootChannel"] = true;
	L["Copy Text"] = "내용 복사"
    L["Sticky Chat"] = "채널 고정"
	L["When opening the Chat Editbox to type a message having this option set means it will retain the last channel you spoke in. If this option is turned off opening the Chat Editbox should always default to the SAY channel."] = "이 옵션 세트를 갖는 메시지를 입력 채팅 Editbox를 열 때하면이 옵션이 Editbox 항상해라 채널을 기본값으로해야 채팅을 여는 꺼져있다면 자네가 말을 마지막으로 채널을 유지 것을 의미합니다."
	L['List of words to color in chat if found in a message. If you wish to add multiple words you must seperate the word with a comma. To search for your current name you can use %MYNAME%.\n\nExample:\n%MYNAME%, ElvUI, RBGs, Tank'] = "쉼표로 구분된 키워드 목록을 수정할 수 있습니다,정보가이 키에 발견하는 경우단어는 다른 색깔로 표시됩니다;"
	L['Keywords'] = "강조할 키워드"
	L["Embedded Addon"] = "임베디드 Addon";
	L["Select an addon to embed to the right chat window. This will resize the addon to fit perfectly into the chat window, it will also parent it to the chat window so hiding the chat window will also hide the addon."] = "우측 대화창에 스카디.오멘.리카 삽입하기";
	L["embedcombat"] = "전투시 우측 대화창 숨김";
	L["embedcombat_desc"] = "전투시는 자동으로 우측 대화창은 기본적으로 숨기기";
	L["Whisper Alert"] = "귓속말 알림";
	L["Keyword Alert"] = "키워드 소리";
	L['Emotion Icons'] = "이모티콘";
	L['Display emotion icons in chat.'] = "채팅에서 이모티콘 표시";	
end

--Skins
do
	L["Death Recap"] = '죽음의 요약';
	L['Quest Choice'] = "퀘스트 선택";
	L['Loss Control'] = "제어 효과 표시";
	L['Void Storage'] = "공허 보관소";
	L['Item Upgrade'] = "아이템 강화 창"
	L["You do not own this pet."] = "당신은 애완 동물의 종류가 없습니다";
	L["Owned: "] = "내 애완 동물:";
	L['Black Market AH'] = "암시장";
	L['Transmogrify Frame'] = "프레임 모습을 변경";
	L['Open Tukui_UIPackages_Skins option'] = "플러그 스킨 옵션을 열기";
	L["Skins"] = "스킨";
	L["SKINS_DESC"] = "다른 애드온이나 게임 내 여러 프레임에 체크 시 스킨을 적용합니다."
	L['Spacing'] = '공백';
	L['The spacing in between bars.'] = '바 사이의 간격을 조절합니다.';
	L["TOGGLESKIN_DESC"] = "체크 시 해당 프레임에 스킨을 사용합니다."
	L["Encounter Journal"] = "던전 도감";
	L["Bags"] = "가방";
	L["Reforge Frame"] = "재연마 창";
	L["Calendar Frame"] = "달력";
	L["Achievement Frame"] = "업적 창";
	L["LF Guild Frame"] = "길드 찾기";
	L["Inspect Frame"] = "살펴보기 창";
	L["KeyBinding Frame"] = "단축키 창";
	L["Guild Bank"] = "길드 은행";
	L["Archaeology Frame"] = "고고학 창";
	L["Guild Control Frame"] = "길드 설정 창";
	L["Guild Frame"] = "길드 창";
	L["TradeSkill Frame"] = "전문기술 창";
	L["Raid Frame"] = "공격대 창";
	L["Talent Frame"] = "특성 창";
	L["Glyph Frame"] = "문양 창";
	L["Auction Frame"] = "경매 창";
	L["Barbershop Frame"] = "미용실 창";
	L["Macro Frame"] = "매크로 창";
	L["Debug Tools"] = "디버그 창";
	L["Trainer Frame"] = "스킬 훈련 창";
	L["Socket Frame"] = "소켓 창";
	L["Achievement Popup Frames"] = "업적 달성 팝업창";
	L["BG Score"] = "전장 점수판";
	L["Merchant Frame"] = "상인 창";
	L["Mail Frame"] = "우편 창";
	L["Help Frame"] = "도움말 창";
	L["Trade Frame"] = "거래 창";
	L["Gossip Frame"] = "NPC 대화 창";
	L["Greeting Frame"] = "인사말 프레임"
	L["World Map"] = "세계 지도";
	L["Taxi Frame"] = "차원문 창";
	L["LFD Frame"] = "파티찾기 창";
	L["Quest Frames"] = "|cffff0000[퀘스트 설정]";
	L["Petition Frame"] = "확인 창";
	L["Dressing Room"] = "미리보기 창";
	L["PvP Frames"] = "투기장 창";
	L["Non-Raid Frame"] = "비-공격대 창";
	L["Friends"] = "친구";
	L["Spellbook"] = "마법책";
	L["Character Frame"] = "캐릭터 창";
	L["LFR Frame"] = "공격대 찾기 창";
	L["Misc Frames"] = "기타 창";
	L["Tabard Frame"] = "휘장 창";
	L["Guild Registrar"] = "길드 등록";
	L["Time Manager"] = "시계";	
	L['Embedded Bar Height'] = "임베디드 바 높이";
	L['The height of the bars while skada is embedded.'] = "skada가 내장되는 동안 막대의 높이";
	L["Mounts & Pets"] = "Mounts & 펫";
	L["Pet Battle"] = "펫 배틀";
end

--Misc
do
	L["Average Group iLvl:"] = "파티 평균템렙"
	L["Important Group Members:"] = "중요 멤버"
	L["iLvl"] = "템렙";
	L['Enhance Raid Browser'] = "기타공격대창 향상"
	L['Enhance the raid browser frame by adding item level and talent spec information, also add average item level of group information to tooltips.'] = true;
	L["Move it"] = "패널 위치";
	L['Link All'] = "모두 링크";
	L['Bags'] = "가방";
	L['Totems'] = "토템";
	L['No Guild'] = "길드 없음";
    L['Left Chat'] = "좌측 패널";
    L['Right Chat'] = "우측 패널";
	L["Experience Bar"] = "경험치 바";
	L["Reputation Bar"] = "평판 바";
	L['Experience'] = "경험치";
	L['Bars'] = "바";
	L['XP:'] = "경험치:";
	L['Remaining:'] = "남음:";
	L['Rested:'] = "휴식:";
	
	L['Empty Slot'] = "빈 슬롯";
	L['Fishy Loot'] = "낚시 루팅";
	L["Can't Roll"] = "굴릴 수 없음";
	L['Disband Group'] = "그룹 해체";
	L['Raid Menu'] = "공격대 메뉴";
	L['Your items have been repaired for: '] = "자동으로 수리하고 비용을 지불했습니다:";
	L["You don't have enough money to repair."] = "수리 비용이 부족합니다.";
	L['Auto Repair'] = "자동 수리";
	L['Automatically repair using the following method when visiting a merchant.'] = "수리가 가능한 상점을 열면 이 옵션에서 선택한 자금으로 장비를 자동 수리합니다."
	L['Your items have been repaired using guild bank funds for: '] = "길드자금으로 수리하고 비용을 지불했습니다:";
	L['Loot Roll'] = "주사위 굴림창";
	L['Enable\Disable the loot roll frame.'] = "주사위 굴림창 활성/비활성";
	L['Loot'] = "전리품창";
	L['Enable\Disable the loot frame.'] = "전리품창 활성/비활성";
	
	L['Exp/Rep Position'] = "경험치/평판바 위치";
	L['Change the position of the experience/reputation bar.'] = "경험치/평판 바의 위치를 조절합니다.";
	L['Top Screen'] = "화면 최상단";
	L["Below Minimap"] = "미니맵 아래";
	L['Map Transparency'] = "맵 투명도";
	L['Controls what the transparency of the worldmap will be set to when you are moving.'] = "세계 지도의 투명도를 조절합니다.";
	L['Font'] = "폰트";
end

--Bags
do
	L['Display the tag is itemlevel less than value'] = '레벨이 표시 지정된 값 표시 미만';
	L['Set to 0 to disable.'] = '사용하지 않으려면 0으로 설정합니다.';
	L['tag format'] = '마커 표시 형식';
	L['asterisk'] = '별표';
	L['number'] = '수치';
	L["Search Syntax"] = "검색 구문";
	L["SEARCH_SYNTAX_DESC"] = [=[With the new addition of LibItemSearch, you now have access to much more advanced item searches. The following is a documentation of the search syntax. See the full explanation at: https://github.com/Jaliborc/LibItemSearch-1.2/wiki/Search-Syntax.

	Specific Searching:
		• q:[quality] or quality:[quality]. For instance, q:epic will find all epic items.
		• l:[level], lvl:[level] or level:[level]. For example, l:30 will find all items with level 30.
		• t:[search], type:[search] or slot:[search]. For instance, t:weapon will find all weapons.
		• n:[name] or name:[name]. For instance, typing n:muffins will find all items with names containing "muffins".
		• s:[set] or set:[set]. For example, s:fire will find all items in equipment sets you have with names that start with fire.
		• tt:[search], tip:[search] or tooltip:[search]. For instance, tt:binds will find all items that can be bound to account, on equip, or on pickup.

		
	Search Operators:
		• ! : Negates a search. For example, !q:epic will find all items that are NOT epic.
		• | : Joins two searches. Typing q:epic | t:weapon will find all items that are either epic OR weapons.
		• & : Intersects two searches. For instance, q:epic & t:weapon will find all items that are epic AND weapons
		• >, <, <=, => : Performs comparisons on numerical searches. For example, typing lvl: >30 will find all items with level HIGHER than 30.


	The following search keywords can also be used:
		• soulbound, bound, bop : Bind on pickup items.
		• bou : Bind on use items.
		• boe : Bind on equip items.
		• boa : Bind on account items.
		• quest : Quest bound items.]=];
	L['Deposit Reagents'] = "가방->재료은행 이동";
	L['Show/Hide Reagents'] = "재료 가방 표시/숨기기";
	L["Reagent Bank"] = "재료 은행";
	L['Purchase Bags'] = "가방 구매";
	L['Blizzard Style'] = "블리자드 스타일";
	L["Gold Format"] = "골드 형식";
	L["The display format of the money text that is shown in the gold datatext and its tooltip."] = "메시지 텍스트의 동전과 동전의 그의 팁 형식을 표시";
	
	L['Item Count (Bank)'] = "항목 개수[은행]";
	L['Display how many of a certain item you have in your bank (includes reagent bank).'] = "은행에있는 항목의 수를 표시합니다(재료 포함)";
	L["Size and Position"] = "크기 및 위치";
	L['Condensed'] = "요약";
	L['Full'] = "전체";
	L['Money Format'] = "골드 형식";
	L['Short (Whole Numbers)'] = "간단히(整전체 숫자)";
	L['Short'] = "간단히";
	L['Show Coins'] = "골드 표시 방법";
	L['Smart'] = '스마트';
	L['The display format of the money text that is shown at the top of the main bag.'] = "골드을 상단에 표시";
	L['Use coin icons instead of colored text.'] = "문자 대신 아이콘으로 표시";
	L["X Offset Bags"] = "가방 X 좌표";
	L["Y Offset Bags"] = "가방 Y 좌표";
	L["X Offset Bank"] = "은행 X 좌표";
	L["Y Offset Bank"] = "은행 Y 좌표";
	L["Bank"] = "은행";
	L["Restore Defaults Postion"] = "가방 위치 재설정";
	L["Restore Offline Data"] = "모든 오프라인 데이터 재설정";
	L['Offline Bag'] = "오프라인 배낭";
	L['Offline Bank'] = "오프라인 은행";
	L['Ignore Items'] = "아이템 무시";
	L['List of items to ignore when sorting. If you wish to add multiple items you must seperate the word with a comma.'] = true;
	L['Currency Format'] = "통화 형식";
    L['The display format of the currency icons that get displayed below the main bag. (You have to be watching a currency for this to display)'] = "통화 표시 형식의 가방 바닥,(당신은 표시를 확인 필요)";
    L["Icons Only"] = "아이콘";
    L["Icons and Text"] = "아이콘과 텍스트";
	L['Already Running.. Bailing Out!'] = "이미 실행중입니다. 잠시만 기다려 주세요";
    L['You must be at a bank.'] = "당신은 은행에 있어야합니다";
    L['Confused.. Try Again!'] = "작업에 혼선이 있었습니다. 다시 시도해 주세요";
    L['Sort Inverted'] = "아래로 정렬"
    L['Stack Bags to Bank'] = "은행으로 수량 정리"
    L['Stack Bank to Bags'] = "가방으로 수량 정리"
	L['Click to search..'] = "검색하려면 클릭하세요";
	L['Sort Bags'] = "가방 정리";
	L['Stack Items'] = "수량 정리"
	L['Vendor Grays'] = "회색 아이템 팔기";
	L['Toggle Bags'] = "가방 토글";
	L['You must be at a vendor.'] = "상인을 만나야 가능합니다.";
	L['Vendored gray items for:'] = "모든 잡동사니를 팔았습니다.";
	L['No gray items to sell.'] = "처분할 회색 아이템이 없습니다.";
	L['Hold Shift:'] = "쉬프트를 누른 상태:";
	L['Stack Special'] = "특수 덩어리 정리";
	L['Sort Special'] = "특수물품 정리";
	L['Purchase'] = "구입";
	L["Can't buy anymore slots!"] = "더 이상 가방 칸을 늘릴 수 없습니다!";
	L['You must purchase a bank slot first!'] = "우선 은행 슬롯을 구매해야 합니다!";
	L['Enable\Disable the all-in-one bag.'] = "통합가방 활성/비활성";
	L['Delete Grays'] = "회색 아이템 삭제";
	L['Deleted %d gray items. Total Worth: %s'] = "% d 개의 회색 아이템을 삭제합니다:% S";
	L["Are you sure you want to delete all your gray items?"] = "모든 잡동사니를 버리겠습니까?";
	L['No gray items to delete.'] = "잡동사니가 없습니다";
	L["Ascending"] = "위로 정렬";
	L["Bag-Bar"] = "가방 - 바";
	L["Descending"] = "아래로 정렬";
	L["Enable Bag-Bar"] = "활성화 가방-바";
	L["Enable/Disable the Bag-Bar."] = "사용 / 사용 안 함 가방-바.";
	L["Set the size of your bag buttons."] = "가방바에서 슬롯의 크기를 결정합니다."
	L["Sort Direction"] = "정렬 방향";
	L["The direction that the bag frames be (Horizontal or Vertical)."] = "가방 프레임있을 것으로 방향 (수평 또는 수직).";
	L["The direction that the bag frames will grow from the anchor."] = "가방 프레임은 앵커로 성장할 것으로 방향.";
	L["Bar Direction"] = "바 방향";
end

--AuraWatch
do
	L["Count Font Size"] = "카운트 글꼴 크기";
	L["Spellname Font Size"] = "스킬 이름 글꼴 크기";
	L["Update interval"] = "업데이트 간격";
	L["The smaller the interval, the greater the impact on performance, low-performance computers preferably not less than 0.2"] = true;
	L["AuraWatch"] = "AuraWatch";
	L["Sora's AuraWatch"] = "Sora's AuraWatch 스킬 모니터링 모듈, 전문 타이밍 표시줄을 사용하지 마십시오";
	L["Choise Aura group"] = "선택 버프 목록";
	L["Add New Aurar"] = "새 스킬 추가";
	L["Delete Aura"] = "새 스킬 삭제";
	L["AuraID："] = "스킬 ID";
		L["Input BUFF/DEBUFF's AuraID, SpellID or ItemID"] = "버프 / debuff의 맞춤법 ID, 스킬 ID 또는 아이템 ID를 입력하세요";
	L["Monitor Type: "] = "모니터링 유형";
	L["Aura"] = "BUFF/DEBUFF";
	L["Spell CD"] = "주문 CD";
	L["Item ID"] = "아이템 CD";
	L["Monitor Object: "] = "감시 대상";
	L["Filter by caster: "] = "캐스터에 의해 필터링합니다";
	L["Filter by Stacked layers: "] = true;
	L["Choise Group:"] = "그룹을 선택";
	L["Add Group"] = "주문 그룹을 추가";
	L["New Group"] = "새로운 주문 그룹 (이름이 변경하세요)";
	L["Delete Group"] = "주문 그룹을 제거";
	L["Group Name"] = "주문 그룹의 이름";
		L["Input Group's Name"] = "주문 그룹 이름을 입력";
	L["Display Mode"] = "모드 표시";
	L["Icon Mode"] = "아이콘 모드";
	L["Bar Mode"] = "바 모드";
	L["Direction"] = "방향";
	L["Growth direction"] = "나열 방향"
	L["LEFT"] = "좌측";
	L["RIGHT"] = "우측";
	L["UP"] = "위쪽";
	L["DOWN"] = "아래쪽";
	L["Interval"] = "간격";
	L["Icon Size"] = "아이콘 크기";
	L["Bar Width"] = "바 폭";
end

--Clickset
do
	L["ClickSet"] = "클릭 캐스팅"
	L["CLICKSET_DESC"] = "클릭 캐스팅 설정 페이지";
	L["default"] = "기본"
	L["MouseButton1"] = "마우스 왼쪽 버튼"
	L["MouseButton2"] = "오른쪽 마우스 버튼"
	L["MouseButton3"] = "마우스 중간 버튼"
	L["MOUSE WHEEL UP"] = "휠 위로"
	L["MOUSE WHEEL DOWN"] = "휠 아래로"
	L["MouseButton4"] = "네번째 마우스 버튼"
	L["MouseButton5"] = "다섯째 마우스 단축"
	L["CustomClickSetSpell"] = "사용자 스킬 클릭"
		L["clickset_newname"] = "클릭_새로운 주문"
			L["clickset_newname_desc"] = "클릭_새로운 주문_내림차 순서"
		L["clickset_newname_err1"] = "클릭_새로운 주문_err1"
		L['clickset_deletename'] = "클릭_주문 삭제"
			L['clickset_deletename_desc'] = "클릭_주문 삭제_내림차 순서"
		L["clickset_deletename_err"] = "클릭_삭제 주문_err"
		L["clicksetlist"] = "스킬  목록을 클릭";
		
		L["DEFAULT_DESC"] = "프로그램에 대한 기본 클릭으로 활성화";
		L["type1"] = "마우스 왼쪽 버튼";
			L["TYPE1_DESC"] = "프레임에 마우스 왼쪽 버튼 클릭"
		L["shiftztype1"] = "Shift+마우스 왼쪽 버튼";
			L["SHIFTZTYPE1_DESC"] = "Shift+마우스 왼쪽 버튼 클릭";
		L["ctrlztype1"] = "Ctrl+마우스 왼쪽 버튼";
			L["CTRLZTYPE1_DESC"] = "Ctrl+마우스 왼쪽 버튼 캐스팅 클릭";
		L["altztype1"] = "Alt+마우스 왼쪽 버튼";
			L["ALTZTYPE1_DESC"] = "Alt+마우스 왼쪽 버튼에서 캐스팅 클릭";
		L["altzctrlztype1"] = "Alt+Ctrl+마우스 왼쪽 버튼";
			L["ALTZCTRLZTYPE1_DESC"] = "Alt+Ctrl+마우스 왼쪽 버튼 캐스팅 클릭";
		L["shiftzaltztype1"] = "Shift+Alt+마우스 왼쪽 버튼"
			L["SHIFTZALTZTYPE1_DESC"] = "Shift+Alt+마우스 왼쪽 버튼"
		L["type2"] = "오른쪽 마우스 버튼";
			L["TYPE2_DESC"] = "마우스 오른쪽 버튼 클릭";
		L["shiftztype2"] = "Shift+오른쪽 마우스 버튼";
			L["SHIFTZTYPE2_DESC"] = "Shift+마우스 왼쪽 버튼 클릭";
		L["ctrlztype2"] = "Ctrl+마우스 오른쪽 버튼";
			L["CTRLZTYPE2_DESC"] = "Ctrl+마우스 왼쪽 버튼 클릭";
		L["altztype2"] = "Alt+마우스 오른쪽 버튼";
			L["ALTZTYPE2_DESC"] = "Alt+마우스 왼쪽 버튼 클릭";
		L["altzctrlztype2"] = "Alt+Ctrl+오른쪽 버튼"
			L["ALTZCTRLZTYPE2_DESC"] = "Alt+Ctrl+마우스 왼쪽 버튼 클릭"
		L["shiftzaltztype2"] = "Shift+Alt+오른쪽"
			L["SHIFTZALTZTYPE2_DESC"] = "Shift+Alt+마우스 오른쪽 단추로 클릭"			
		L["type3"] = "마우스 버튼";
			L["TYPE3_DESC"] = "마우스 버튼 클릭"
		L["shiftztype3"] = "Shift+마우스 중간 버튼"
			L["SHIFTZTYPE3_DESC"] = "Shift+마우스 왼쪽 버튼 클릭하십시오"
		L["ctrlztype3"] = "Ctrl+마우스 중간 버튼"
			L["CTRLZTYPE3_DESC"] = "Ctrl+마우스 왼쪽 버튼 클릭하십시오"
		L["altztype3"] = "Alt+마우스 중간 버튼"
			L["ALTZTYPE3_DESC"] = "Alt+마우스 왼쪽 버튼 클릭하십시오"
		L["altzctrlztype3"] = "Alt+Ctrl+마우스 중간 버튼"
			L["ALTZCTRLZTYPE3_DESC"] = "Alt+Ctrl+마우스 왼쪽 버튼 클릭하십시오"
		L["shiftzaltztype3"] = "Shift+Alt+마우스 버튼"
			L["SHIFTZALTZTYPE3_DESC"] = "Shift+Alt+마우스 가운데 버튼 클릭"			
		L["shiftztype4"] = true;
			L["SHIFTZTYPE4_DESC"] = true;
		L["ctrlztype4"] = true;
			L["CTRLZTYPE4_DESC"] = true;
		L["altztype4"] = true;
			L["ALTZTYPE4_DESC"] = true;
		L["altzctrlztype4"] = true;
			L["ALTZCTRLZTYPE4_DESC"] = true;
		L["type4"] = true;
			L["TYPE4_DESC"] = true;
		L["shiftztype5"] = true;
			L["SHIFTZTYPE5_DESC"] = true;
		L["ctrlztype5"] = true;
			L["CTRLZTYPE5_DESC"] = true;
		L["altztype5"] = true;
			L["ALTZTYPE5_DESC"] = true;
		L["altzctrlztype5"] = true;
			L["ALTZCTRLZTYPE5_DESC"] = true;
		L["type5"] = true;
			L["TYPE5_DESC"] = true;
		L["menu"] = "메뉴";
		L["target"] = "목표";
	L["value type"] = "체력 값 선택";
	L["set value type"] = "숫자 디스플레이 설정 K (천), 또는 W (만) 약어";
	L["0"] = "실수치";
	L["K"] = "K";
	L["W"] = "W";	
	L["CNW"] = "만"
	
	L["Eui AB Style"] = "EUI 행동바 스타일[3종류]"
	L["EuiABStyle_desc"] = "행동바 레이아웃 스타일을 제공합니다, \n그 외 사용자 직접 레이아웃을 설정하십시오'None'"
	L["Low ScreenResolution Style"] = "저해상도 스타일"
	L["Middle ScreenResolution Style"] = "중해상도 스타일"
	L["High ScreenResolution Style"] = "고해상도 스타일"

	L["Incoming Heals"] = "예상 치료"
	L["Show predicted incoming heals"] = "예상 치료 값 표시"
	
	L['Primary'] = "주 특성";
	L['Secondary'] = "부 특성";
	
	L['Calendar'] = "달력"
	L["GameMenu"] = "게임 옵션"
	
	L["Force Name Classcolor"] = "직업 이름 색상"
end	

--singleFunc
do
	L['singleFunc'] = "EUI 전용 애드온 관리";
	L['singleFunc desc'] = "보조 기능 플러그인을 전환이 가능합니다";
	L['BigFootBank'] = "[암시장]";
	L["EuiGarrison"] = "[추종자]";
	L["GarrisonMissionManager"] = "GarrisonMissionManager";
	L["BodyGuardAway"] = 'BodyGuardAway';
	L["Hold CTRL while clicking the bodyguard, show DiagFrame"] = "Ctrl 키 눌러 대화 상자를 표시합니다";
	L['Show BigFootBank UI'] = "암 시장 열기";
	L['ExtraCD'] = "[ExtraCD]";
	L['Show ExtraCD Config'] = "ExtraCD 설정";
	L['HandyNotes_DraenorTreasures'] = "[HandyNotes]";
	L['Show HandyNotes_DraenorTreasures Config'] = '핸디노트_드군 보물 설정';
	L['MikScrollingBattleText'] = "[MSBT]";
	L['Show MikScrollingBattleText Config'] = "MSBT 설정";
	L['Toggle Blz CombatText'] = "와우 기본 전투 메세지 전환";
	L['DBM-Core'] = "DBM 알람 모듈";
	L['Show DBM Config'] = "DBM 설정";
	L['OffileDataCenter'] = "[OfflineDataCenter]";
	L['Show OfflineDataCenter Frame'] = "OfflineDataCenter 열기";
	L['Show OfflineDataCenter Config Frame'] = "OfflineDataCenter 설정";
	L['RaidBuilder'] = "[RaidBuild]";
	L['Show RaidBuilder Config Frame'] = "RaidBuild 표시";
	L['Toggle RaidBuilder BrokerPanel'] = "RaidBuild 데이터 수집"
	L['Skada'] = "[Skada]";
	L['Show Skada Config Frame'] = "Skada 설정";
	L['Toggle Skada Window'] = "Skada 임베디드 전환";
	L['Reset Skada Profile'] = "Skada 재 설정";
	L['Test DBM Sound'] = "테스트 DBM 소리";
	L['TomTom'] = "[TomTom]";
	L['Toggle TomTom Arrow'] = "화살표 전환";
	L['Toggle TomTom Block'] = "좌표 전환";	
	L['GatherMate2'] = "[GatherMate2]";
	L['GatherMate2 Toggle Minimap'] = "작은지도 표시";
	L['GatherMate2 Toggle Treasure'] = "보물 상자 표시";
	L['GatherMate2 import data'] = "데이터 가져오기";
	L['GladiatorlosSA'] = "[GladiatorlosSA]";
	L['Alert works anywhere'] = "경고 음성 어디서나 작동";
	L['Alert only works in arena'] = "전장에서만 작동";
	L['Alert only works in BG'] = "경고 BG에서 작동";
	L['Alert works anywhere else then anena, BG, dungeon instance'] = "던전 공격대에서 작동";
	L['GladiatorlosSA Config Frame'] = "설정";
	L['CoolLine'] = "[CoolLine]";
	L['CoolLine Config Frame'] = "CoolLine 설정";
	L['RareScanner'] = "[RareScanner]";
	L['RareScanner Config Frame'] = "RareScanner 설정";
	L['AuctionLite'] = "[AuctionLite]";
	L['AuctionLite Config Frame'] = "AuctionLite 설정";
	L['GearStatsSummary'] = "[GearStatsSummary]";
	L['_Cursor'] = "[_Cursor]";
	L['_Cursor Config Frame'] = "_Cursor 설정";
	L['ThogarAssist'] = '기관사 토가르 레일 도우미'
	L['ThogarAssist Config Frame'] = '기관사 토가르 레일 도우미 설정'
	L['OregorgerHelper'] = 'Oregorger 도우미'
	L['Unlock OregorgerHelper'] = 'Oregorger 도우미 잠금해제'
	L['Lock OregorgerHelper'] = 'Oregorger 도우미 잠금'
	L["Drag arrow to move OregorgerTracker frame postion."] = "'광물먹보 도우미 위치를 변경하고 설정을 저장하기 위해 다시 잠금을 클릭 녹색 점과 작은 화살표를 드래그 합니다.';";
end

--Sequences
do
	L["Your current role of the macro is full, please manually delete to continue."] = "매크로 현재 역할이 가득, 수동으로 계속 삭제하시기 바랍니다"
	L["Macro List"] = "매크로 목록";
	L["Sequences"] = "매크로 키 출력";
	L["Sequences description"] = '사용자가 한 번의 클릭으로 출력 매크로 만들기;매크로 목록에서  특성에 맞는 매크로을 선택할 수 있습니다,만들기를 클릭,수동으로 행동바에 매크로 이동.\n현재 작업중.';
	L["Create Macro"] = "매크로 만들기";
	L["You can manually placed a key output of the macro to on your actionbar."] = "행동바에 수동으로 키 출력 매크로를 배치 할 수 있습니다";
end

--euiscript
do
	L["Alliance Mine"] = "얼라이언스 광산";
	L["Horde Mine"] = "호드 광산";
	L["Salvage Yard"] = "재활용";
	L["auto sell item list"] = "자동 판매 아이템 목록(활성화/비활성화)";
	L['poi'] = "화면 중앙 포인트 표시";
	L['poi color'] = '포인트 색상';
	L['ws spell readme'] = "ws spell readme";
	L['ws spell count'] = 'ws spell count';
	L['healthValue'] = "체력 임계 값";
	L["Macro content, modification is invalid"] = "매크로 내용,수정이 잘못되었습니다";
	L['Square minimap icons direction'] = "미니 맵 아이콘 방향";
	L["Player Spell Say"] = "공대원 차단시 스킬 알림";
	L.ANNOUNCE_FP_USE = "%s 사용 %s."
	L["Queue To Max"] = "퀘스트 최대 량";
	L['have a quest'] = "퀘스트가 존재합니다";
	L['QSAlert'] = "퀘스트 팁";
	L["FriendGroups"] = "친구 그룹";
	L["[no group]"] = "[아니오 그룹]";
	L["Create new group"] = "새 그룹 만들기";
	L["Add to group"] = "그룹에 추가";
	L["Remove from group"] = "그룹에서 제거";
	L["Enter new group name"] = "새 그룹 이름을 입력";
	L["Invite all to party"] = "파티에 모두를 초대";
	L["Rename group"] = "그룹 이름 바꾸기";
	L["Remove group"] = "그룹 삭제";
	L["Settings"] = "설정";
	L["Hide all offline"] = "오프라인 숨기기";
	L["Colour names"] = "색상 이름";
	L["Enable oQueue grouping"] = "0팀 그룹 사용";
	L['Will be in %s seconds, automatically leave the battlefield!'] = "%의 초 후, 자동 전장 나감!";
	L['automatically leave the battlefield'] = "자동 전장 떠나기";
	L['automatically leave the battlefield, -1 disabled'] = "자동 전장 나감, -1사용 안 함";
	L['GemPlus'] = "GemPlus";
	L['ThreatUnit'] = "위협 단위";
	L['Nice threat bar'] = "위협 바";
	L['ThreatLimited'] = "위협 수치 표시";
	L['Addons Manager'] = "플러그인 관리자";
	L["Output mode"] = "출력 모드";
	L["quest notifier"] = "퀘스트 알람미";   
	L["no detail notifier"] = "퀘스트 목록";
	L["quest complete notifier"] = "퀘스트 완료 알림";
   -- Announce feasts and portals
	L["Special spell announce"] = "[빵,생석,지브스,포탈,요리 알림].";
	L["ANNOUNCE_FP_STAT"] = "%s 배치 %s - [%s]."
	L["ANNOUNCE_FP_PRE"] = "%s 배치 %s"
	L["ANNOUNCE_FP_PUT"] = "%s 배치 %s"
	L["ANNOUNCE_FP_CAST"] = "%s 열기 %s"
	L["ANNOUNCE_FP_CLICK"] = "%s 열기 %s... 를 클릭하세요！"
	L["ANNOUNCE_FP_USE"] = "%s 사용 %s."
	L["When the value of the duration of this next group members informed of the WHISPER, set to 0 to disable WHISPER."] = true;
	L["Group %s has been casted and ending in %d seconds, Prepare!"] = true;
	L['Send Cast Info'] = "스킬 사용자 알림";
	L['Send Ready Info'] = "재 사용 가능 알림";
	L['Casted'] = "캐스트";
	L['SendMsg'] = "사용자 정보 알림";
	L['Title Font Size'] = "폰트 크기";
	L["Talent id"] = "선택한 특성 ID";
	L["Talent id desc"] = 'Talent id desc';
	L['EUIRaidToolBox1'] = "생존기";
	L['EUIRaidToolBox2'] = "부활";
	L['EUIRaidToolBox3'] = "기타";
	L['DRUID'] = "드루이드";
	L['HUNTER'] = "사냥꾼";
	L['MAGE'] = "법사";
	L['WARLOCK'] = "흑마법사";
	L['SHAMAN'] = "주술사";
	L['PALADIN'] = "성기사";
	L['PRIEST'] = "사제";
	L['WARRIOR'] = "전사";
	L['ROGUE'] = "도적";
	L['DEATHKNIGHT'] = "죽음의 기사";
	L['MONK'] = "수도사";
	L['Horde'] = true;
	L['Alliance'] = "동맹";
	L['RLBox'] = "|cffff9966공격대 CD[신버전]";
	L['UI Type'] = "UI유형[아이콘&바식 선택]";
	L['Allow grouping'] = "그룹화 허용";
	L['IconSize'] = "아이콘 크기";
	L['BarHeight'] = "바 높이 조정";
	L['BarWidth'] = "바 길이 조정";
	L['minperrow'] = "최소 열수";
	L['minperrow_desc'] = "값보다 작을 때의 타이밍,단일 행으로 표시됩니다, 그렇지 않으면 두 개의 열 표시";
	L["RLBox_DESC"] = "전투중 '새로 고칠 수 없습니다 사용자는 패턴의 왼쪽에있는 새로 고침 아이콘이 기술을 생성 할 수 있습니다 클릭해야합니다!";
	
	L["Five combo"] = "5콤보 강조";
	L['AFK spin camera'] = "AFK 화면 회전";
	L['first into combat!'] = "first into combat";
	L["Middle CD Reminder"] = "Doom_CooldownPulse";
	L["Middle CD Reminder Module, Blink spell icon at middle of screen when spell CD."] = "화면의 재사용 대기 시간이 중간 스킬 아이콘의 끝이 점멸 표시";
    L["Icon size"] = "아이콘 크기";
    L["Fadein duration"] = "시간 페이드 인" ;
    L["Fadeout duration"] = "시간 페이드 아웃";
    L["Max transparent"] = "투명성 최대";
    L["Duration time"] = "시간";
    L["Animation size"] = "애니메이션의 크기";
    L["Display spell name"] = "주문 이름 표시";
    L["Watch on pet spell"] = "소환수 스킬 표시 ";
    L["Test"] = "테스트";
	L['Add ItemID'] = "아이템 추가";
	L['Delete ItemID'] = "아이템 삭제";
	L['Must is itemID!'] = "ID 번호가 있어야합니다";
	L["Loot Council"] = "전리품 Council";
	L['Guild Rank:'] = "길드 순위 :";
	L['Channel:'] = "채널 :";
	L["Allow Personal Votes"] = "개별 투표하기 허용";
	L["Disenchanter Name"] = true;
	L["No data available for: "] = "데이터가 없습니다";
	L["Results for: "] = "결과 :";
	L["Waiting on player information..."] = "제목 플레이어 정보 ...";
	
	L["ReShow Castbar"] = "ReShow 시전바";
	L['SpellFilters'] = "EUI 추가 애드온[+]클릭";
	L['SpellFilters Intro'] = [=[
　　아래 모듈은 BUFF,DEBUFF그리고 기술,항목CD기능 모니터링, 모듈 사이|cff880303반복 기능|r, 선택적 사용을 활성화하십시오, 전부 사용하지 마세요 .

　　|cff1784d101ClassTimer|r모두 아는 ElvUI ClassTimer입니다,이 모듈은 기본적으로 활성화되어 있습니다[이동기능추가];

　　|cff1784d102AuraWatch|r,바 또는 아이콘 방식으로표시,버프 디버프 발동류 직접 설정해야합니다 ;

　　|cff1784d103SoraClassTimer|r,바 또는 아이콘 방식으로 설정이 가능합니다[진행 방향 수정불가];

　　|cff1784d104PowerAuras|r, 스킬이름표시/남은시간 또는 아이콘 방식 가능 [아이콘 방식은 이동이 불가];

　　|cff1784d105DoomCooldownPulse|r,스킬 만료시 화면 중앙에 표시기능;

　　|cff1784d106ALM|r,이 기능은 기본으로 설정불가 ,자동으로 스킬 등록됩니다 BUFF,DEBUFF그리고 기술CD,사용자 표시 여부를 선택할 수 있습니다.]=];
	L['Overlay Style'] = "깜박임 효과";
	L['Alert Value'] = "경고 값";
	L['show alert value'] = "경고 값 표시";
	L["Alert"] = "경고";
	L["Alert, set to NONE disable it!"] = "NONE을 사용하지 않도록 설정 경고";
	L["item list"] = "사용 가능한 아이템 목록(사용/사용안함)";
	L["slot list"] = "장비 스킬 목록을 할 수있다(사용/사용안함)";
	L["auto open/close combatlog"] = "자동 전투로그 열림/닫힘"
	L["Auto achievement screenshoot"] = "업적 완료시 자동 스크린";
	L['About UI'] = "|cffff0000[인터페이스 설정]";
	L['About Prompt info'] = "|cffff0000[메세지 설정]";
	L['About Invite'] = "|cffff0000[길드초대&정보창 설정]";
	L['About Loot'] = "|cffff0000[전리품 설정]";
	L['Invite guild ranks member'] = "길드원 초대";
	L['Start Invite'] = "초대 시작";
	L['Invite guild ranks is %s member, in 10 sec.'] = "Invite guild ranks is %s member, in 10 sec";
	L["Auto change loot"] = "전리품 자동 변경";
	L["InGroup change loot to freecall, InRaid change loot to master"] = "InGroup change loot to freecall, InRaid change loot to master"
	L['Display spell trigger graphics prompt'] = "PowerAuras";
	L['useIcon style'] = "아이콘 스타일";
	L['use Buff Icon'] = "BUFF 아이콘[사용]";
	L["All Mail"] = "모든 우편";
	L["All Cash"] = "모든 골드";
	L["lfg notification"] = "무작위 던전 보상 메시지";
	L['Holiday Msg'] = "이벤트 보스 알림기능";
	L['Quset Button Number'] = "퀘스트 버튼 갯수";
	L['Slot Button Number'] = "장신구 버튼 갯수";
	L["euiscript"] = "EUI 설정 페이지";
	L["euiscript_desc"] = "ElvUI 개선 버전 ";
	L["euiscript_general"] = "일반 설정";
	L["bossnotes"] = "보스 노트[미 등록]";
		L["BOSSNOTES_DESC"] = "선택한 대상 BOSS,입력/boss수 있습니다"
	L["castby"] = "공격대&파티 버프 시전자";
		L["CASTBY_DESC"] = "버프에 마우스대면 버프준사람 아이디 표시";
	L["chatmod"] = "채널 전환 TAB 사용";
		L["CHATMOD_DESC"] = "채널 기능을 전환하려면 Tab 키를 사용";
	L["drag"] = "WOW 프레임 이동";
		L["DRAG_DESC"] = "WOW 모든 창모드  이동";
	L["ilevel"] = "대상 아이템-Level 표시";
		L["ILEVEL_DESC"] = "마우스의 대상에 장비의 평균 Level를 표시";
	L["mapmove"] = "큰지도 버튼 사용";
		L["MAPMOVE_DESC"] = "큰지도에서 십자가 모양을 추가하는 버튼으로 이동";
	L["sr"] = "경험치/평판 표시";
		L["SR_DESC"] = "현재의 경험 (평판) / 명성 (명점)에 채팅 박스에 표시";
	L["statreport"] = "대화창위[노트 아이콘.주사위 아이콘]";
		L["STATREPORT_DESC"] = "대화창 위 S 버튼 추가[자신의 정보을 대화창에 알림]";
	L["talent"] = "대상 특성 활성화";
		L["TALENT_DESC"] = "마우스의 대상으로 특성 표시";
	L["tradetabs"] = "기본 전문프레임[아이콘 생성]";
		L["TRADETABS_DESC"] = "전문 기술 프레임에 아이콘 표시";
	L["mousedispel"] = "마우스 휠 디버프 해제";
		L["MOUSEDISPEL_DESC"] = "팀을 위해 두 개의 마우스 오버 매크로를 만들 것입니다/프레임 스크롤 휠DEBUFF 해제, Alt + 마우스 휠 변경"
	L["hovertip"] = "링크 아이템 비교";
		L["HOVERTIP_DESC"] = "링크에 걸쳐 마우스 직접 대화 상자 항목과 장비를 표시합니다";
	L["idQuestAutomation"] = "자동 수락";
		L["idQuestAutomation_desc"] = "Shift 키를 자동 전송을 비활성화할 수 있습니다";
	L["raidcd"] = "|cffff9966공격대 CD 바"
		L["raidcd_width"] = "CD_길이"
		L["raidcd_height"] = "CD_높이"
		L["raidcd_maxbars"] = "CD_최대 바"
		L["raidcd_direction"] = "CD_방향"
		L["raidcd_desc"] = "CD_아래에 나열"
		L["up"] = "위"
		L["down"] = "아래"
		L["left"] = "왼쪽"
		L["right"] = "오른쪽"
        L["icon"] = "아이콘 스타일"
		L["bar"] = "스타일의 타이밍"		
	L["wildmushroom"] = "드루이드 버섯바";
		L["wildmushroom_width"] = "바 길이";
		L["wildmushroom_height"] = "바 높이";
		L["wildmushroom_direction"] = "나열 방향"
		L["wildmushroom_desc"] = "야생 버섯 바";
	L["mapfull"] = "전체 지도"	
	L["chatbar"] = "채널버튼[공.거.수.파..등]"
	L["combatnoti"] = "전투 메세지";
		L["combatnoti_leaving"] = "전투 끝 메세지";
		L["combatnoti_entering"] = "전투 시작 메세지";
	L["wgtimenoti"] = "겨울 손아귀 준비 시간 알림";
	L["chatemote"] = "이모티콘 버튼"
	L["autogreed"] = "자동 획득";
	L["buffreminder"] = "BUFF 표시"
	L["autoacceptinv"] = "초대 자동 수락";
	L["autoinvenable"] = "프로필";
	L["ainvkeyword"] = "프로필 설정";
	
	L['DoomCooldownPulse'] = "쿨타임 표시[dcp]"
	L['Usge: /dcp'] = "명령어/dcp";
	L["Icon Size"] = "아이콘 크기"
	L["Fade In Time"] = "대화창 시간 표시"
	L["Fade Out Time"] = "대화창 시간 해제"
	L["Max Opacity"] = "최대 투명도"
	L["Max Opacity Hold Time"] = "최대 투명도 시간"
	L["Animation Scaling"] = "애니메이션 크기"
	L["Close"] = "가까운"
	L["Test"] = "테스트"
	L["Unlock"] = "잠금 해제"
	L["Lock"] = "잠금"
	L["Defaults"] = "기본값"
	L["Show spell name:"] = "스킬 이름 표시 :"
	L["Cooldowns to ignore:"] = "무시 Cooldowns :"
	L["Pet color overlay:"] = "소환수 색상으로 거리표시 :"
	L["Note: Separate multiple spells with commas"] = "참고 : 쉼표로 여러 개의 주문"
	
	L["Auto Sell"] = "회색 아이템 자동판매"
	L["Auto Join LFD"] = "자동 Join LFD"
	L["Camera Move Speed"] = "카메라 이동 속도";
	L["Camera Distance MAX Factory"] = "카메라 최소 거리"
	L["Camera Distance MAX"] = "카메라 최대 거리"
	L["Auto Disenchant confirmation"] = "자동 분해"
	L["BloodShield"] = "탱크 보호막";
	      L["BloodShield desc"] = "모든 탱크 및 MS 쉴드 기본 피해 감소 방패 시간은 플레이어 프레임에 표시,DK 탱크 흡수 값";
	L["autobuy reagents"] = "|cffff9966[자동]구매 등록";
	L["Auto QuestItem Button"] = "|cffff9966장신구[물약]";
	L["Auto InventoryItem Button"] = "장신구";
	L["Battleground Info"] = "전장 정보";
	L["TaintError"] = "전장 오류 표시";
	L["achievementpoint"] = "업적 포인트";
	L["raid marking key"] = "[승급자]빠른 마크[키 설정]";
	L["set focus key"] = "주시대상 설정[키 설정]";
end

--Mover
do
	L['BodyGuard Frame'] = "경호원 프레임";
	L["Loot / Alert Frames"] = "룻/업적 창";
	L['Weapons'] = "무기 (독 / 강화)";
	L["Auras Frame"] = "BUFF/DEBUFF 프레임";
	L["Achievement Frames"] = "업적 프레임";
	L["GM Ticket Frame"] = "GM요청 번호표";
	L["Alert Frames"] = "팝업 창";
	L['Alternative Power'] = "특수상황 진행 바";
	L["Loot Frames"] = "전리품 프레임";
	L["Vehicle Seat Frame"] = "탈것 프레임"
	L["Watch Frame"] = "프레임보기"
	L["Minimap"] = "작은지도"
	L["Loot Frame"] = "전리품 프레임"
	L["LootRoll Frame"] = "전리품 룻 프레임"
	L["Tooltip"] = "툴팁 프레임"
	L["Player Frame"] = "플레이어 프레임";
	L["Target Frame"] = "대상 프레임";
	L["TargetTarget Frame"] = "대상의 대상 프레임";
	L["Focus Frame"] = "주시 프레임";
	L["FocusTarget Frame"] = "주시대상의 대상 프레임";
	L["Pet Frame"] = "소환수 프레임";
	L["PetTarget Frame"] = "소환수 대상이 대상";
	L["Party Frames"] = "파티 프레임";
	L["Arena Frames"] = "투기장 프레임";
	L["BOSS Frames"] = "보스 프레임";
	L["Raid 1-10 Frames"] = "공격대 1-10인 프레임";
	L["Raid 1-25 Frames"] = "공격대 1-25인 프레임";
	L["Raid 1-40 Frames"] = "공격대 1-40인 프레임";
	L["MT Frames"] = "메인 탱크 프레임"
	L["MA Frames"] = "지원 보조 프레임"
	L["Attention Frames"] = "Attention 프레임";
	L["raid2640"] = "공격대 40"
	L['Bar 1'] = "행동바 1";
	L['Bar 2'] = "행동바 2";
	L['Bar 3'] = "행동바 3";
	L['Bar 4'] = "행동바 4";
	L['Bar 5'] = "행동바 5";
	L['Bar 6'] = "행동바 6";
	L['Bar 7'] = "행동바 7";
	L['Bar 8'] = "행동바 8";
	L['Bar 9'] = "행동바 9";	
	L['Pet Bar'] = "소환수 바";
	L['Stance Bar'] = "태세 바";
	L['Totem Bar'] = "토템 바";
	L['Boss Button'] = "특수능력 버튼";
	L["Top Infobar"] = "상단 지역명 패널";
	L["BNet Frame"] = "배틀넷 알림";
	L['LeftChatPanel'] = "대화 상자 왼쪽 패널";
	L['RightChatPanel'] = "오른쪽 대화 상자 패널";
	L['Micro Bar'] = "마이크로 시스템 메뉴 표시줄";
end

-- Attention Frame
do
	L["ATTENTION_TIP1"] = "명령 대상 EUI 플레이어 추가";
	L["ATTENTION_TIP2"] = "당신은 주시하고 싶은 대상을 선택";
	L["ATTENTION_TIP3"] = "플레이어가 목표 기능을 활성화하십시오";
	L["ATTENTION_TIP4"] = "이 기능은 전투에 사용할 수 없습니다";
	L["ATTENTION_TIP5"] = "이미 존재";
	L["ATTENTION_TIP6"] = "추가";
	L["ATTENTION_TIP7"] = "명령을 제거하는 목표에 대해 EUI 플레이어";
	L["ATTENTION_TIP8"] = "당신은 제거하고자하는 대상을 선택";
	L["ATTENTION_TIP9"] = "플레이어의 관심 목록에 없음";
	L["ATTENTION_TIP10"] = "관심 목록에서 제거";
end

-- SoraClassTimer
do
	L["SoraClassTimer"] = "SoraClassTimer";
		L["Sora's ClassTimer desc"] = "플레이어가 적은 60 초 버프이며, 대상은 이보다 60 초 debuff입니다. \ N \ nPlayers의 DEBUFF에만 목록에 마법을 보여줄 것이다. 대상은 이하 60초 개체를 표시합니다. \ N \ 60.seconds 시간 제한에서 화이트 목록에 nSpell. 삭제 리스트 철자가 항상 표시되지 않습니다."
	L["Player Aura Timer"] = "플레이어 오라 타이머"
		L["Choise Timer Mode"] = "Choise 타이머 모드"
	L["Player Aura Timer Icon Size"] = "플레이어 오라 타이머 아이콘 크기"
	L["Target Aura Timer"] = "대상 오라 타이머"
	L["Target Aura Timer Icon Size"] = "대상 오라 타이머 아이콘 크기"
	L["Always will not be displayed"] = "항상 표시되지 않습니다"
	L["Without a time limit of 60 seconds, and will always be displayed"] = "60초의 제한 시간없이, 항상 표시됩니다"
	L["Add New Aura ID"] = "새로운 ID를 추가하십시오"
	L["Delete Aura ID"] = "새로운 ID를 삭제"
	L["Enable/Disable"] = "활성화/비활성화"
end

--InfoFilter
do
	L['Repeated statements within how many seconds of the filter\nSet to 0 to disable.'] = '대화창 반복 문장 \n사용하지 않으려면 0으로 설정합니다.';
	L['Repeat time(s)'] = '새로 고침 간격(초)';
	L["No whisperSticky"] = "암호 사용안함";
	L["Disable profanityFilter"] = "언어 필터 사용 안함";
	L["InfoFilter"] = "정보 필터링";
	L["debug"] = 'debug';
	L["Keywords Match Number"] = '키워드 검색';
	L["Allow send whisper player's level"] = '귓속말 허용가능한 레벨';
	L["Level is 0 to disable!"] = '레벨은 0으로 설정';
	L["Word BlackList"] = '키워드 블랙리스트';
	L["Word BlackList intro"] = '키워드 검색 지정된 횟수,문장 정보;특수 문자가 자동으로 필터링됩니다,키워드를 추가하지 마십시오.';
	L["New Word"] = '새로운 키워드';
	L["Delete Word"] = '키워드 삭제';
	L["BlackList"] = '블랙리스트';
	L["sender blacklist"] = '발신자 블랙리스트';
	L["sender blacklist intro"] = '차단 될 사람들의리스트에 추가,대화 상자에서 플레이어의 이름을 마우스 오른쪽 버튼으로 클릭은 블랙리스트에 추가 할 수 있습니다.';
	L['Restore Defaults'] = '기본값 복원';
	L["filterFriend"] = '친구 필터 ';
	L["filter Friend desc"] = '많은 친구가있는 경우,약간의 Drop 프레임이있을 수 있습니다!';
end

-- Bags
do
	L['BAGS_DESC'] = "통합가방과 가방바에 관련된 옵션들입니다."
	L['Bag Columns'] = "가방 열";
	L['Number of columns (width) of bags. Set it to 0 to match the width of the chat panels.'] = "가방을 열 수 (폭).채팅 패널의 너비와 일치하도록 0으로 설정";
	L['Bank Columns'] = "은행 열";
	L['Number of columns (width) of the bank. Set it to 0 to match the width of the chat panels.'] = "은행의 열 수 (폭).채팅 패널의 너비와 일치하도록 0으로 설정.";
	L['Sort Orientation'] = "가방 정렬";
	L['Direction the bag sorting will use to allocate the items.'] = "정렬기능을 실행할 때 체크 시 아이템이 가방칸의 우측하단을, 체크 해제 시 좌측상단을 기준으로 모아서 정렬됩니다."
	L['Bottom to Top'] = "상단 아래쪽으로 이동"
	L['Top to Bottom'] = "위에서 아래로"
	L['Panel Width (Bags)'] = "통합가방 프레임 가로길이"
	L['Align To Chat'] = "대화창 크기와 동일하게";
	L['Panel Width (Bank)'] = "통합은행 프레임 가로길이"
	L['Adjust the width of the bank frame.'] = "통합은행 프레임의 가로길이를 결정합니다."
	L["Button Size (Bag)"] = "슬롯 크기 (가방)"
	L['Align the width of the bag frame to fit inside the chat box.'] = "채팅 창에 적응 할 수있는 가방 프레임의 너비를 조정";
	L['Adjust the width of the bag frame.'] = "통합가방 프레임의 가로길이를 결정합니다."
	L['The size of the individual buttons on the bank frame.'] = "하나의 격자의 프레임 크기의 은행 ";
	L['The size of the individual buttons on the bag frame.'] = "가방 프레임 하나의 격자의 크기";
	L["Button Size (Bank)"] = "슬롯 크기 (은행)"
end

-- Reminder
do
	L["Add Group"] = "그룹 추가";
	L["Any"] = "무작위";
	L["Caster"] = "원거리";
	L["Combat"] = "전투";
	L["Group already exists!"] = "그룹은 이미 존재!"
	L["If any spell found inside this list is found the icon will hide as well"] = "목록에있는 모든 스킬 아이콘이 숨겨집니다."
	L["Inside BG/Arena"] = "내부 전쟁터 / 경기장"
	L["Inside Raid/Party"] = "내부 공격대/파티"
	L["Instead of hiding the frame when you have the buff, show the frame when you have the buff. You must have either a Role or Spec set for this option to work."] = "Instead of hiding the frame when you have the buff, show the frame when you have the buff. You must have either a Role or Spec set for this option to work."
	L["Level Requirement"] = "레벨 요구 사항";
	L["Level requirement for the icon to be able to display. 0 for disabled."] = "표시하는 수준에 도달할.0 해제.";
	L["Negate Spells"] = "Negate Spells"
	L["New ID"] = "새로운 ID"
	L["New ID (Negate)"] = "새로운 ID(Negate))"
	L["Only check if the buff is coming from you."] = "전용 버프가 있습니다 확인.";
	L["Only run checks during combat."] = "단 전투 여부만 확인.";
	L["Only run checks inside BG/Arena instances."] = "전용 BG / 경기장 인스턴스 내부 검사를 실행합니다.";
	L["Only run checks inside raid/party instances."] = "전용 RAID / 파티 인스턴스 내부 검사를 실행합니다.";
	L["Personal Buffs"] = "개인 버프";
	L["REMINDER_DESC"] = "화면에 직업 중요한 버프 알림[예:도적[독]전사[외침]술사[무기강화]사제[내면]등등.";
	L["Reminders"] = "직업 중요 버프 알림";
	L["Remove Group"] = "그룹 삭제";
	L["Remove ID"] = "삭제 ID";
	L["Remove ID (Negate)"] = "삭제 ID(부정)";
	L["Reverse Check"] = "역방향 체크";
	L["Role"] = "역할";
	L["Select Group"] = "그룹 선택";
	L["Set a talent tree to not follow the reverse check."] = "그 반대 하려고 특성 트리를 선택합니다.";
	L["Spell not found in list"] = "맞춤법 목록에서 찾을 수 없습니다";
	L["Spells"] = "주문";
	L["Talent Tree"] = "특성 트리";
	L["Tree Exception"] = "제외 트리";
	L["Value must be a number"] = "값 숫자 여야합니다";
	L["You can't remove a default group from the list, disabling the group."] = "당신은 그룹을 비활성화 목록에서 기본 그룹을 제거할 수 없습니다.";
	L["You must be a certain role for the icon to appear."] = "당신은 표시하는 아이콘에 대한 특정 역할이어야합니다.";
	L["You must be using a certain talent tree for the icon to show."] = "당신이 보여줄 수있는 아이콘이 특정 특성 트리를 사용해야합니다.";
	L["Sound"] = "소리";
	L["Sound that will play when you have a warning icon displayed."] = "경고 아이콘이 표시되는 소리 재생.";
	L["Change this if you want the Reminder module to check for weapon enchants, setting this will cause it to ignore any spells listed."] = "변화 버프 모듈 무기 반갑습을 확인하라는 메시지가 나타납니다,이것을 설정하면 그것이 기술 목록을 모두 무시하게됩니다.";
	L["Group By"] = "그룹";
	L["Set the order that the group will sort."] = "그룹 정렬의 순서를 설정합니다.";
	L["Spell"] = "스킬";
	L["Weapon"] = "무기";
	L["Attempted to show a reminder icon that does not have any spells. You must add a spell first."] = "주문을 가지고 있지 않는 알림 아이콘을 표시하려했습니다. 당신이 먼저 주문을 추가해야합니다.";
	L["Strict Filter"] = "Strict Filter";
	L["This ensures you can only see spells that you actually know. You may want to uncheck this option if you are trying to monitor a spell that is not directly clickable out of your spellbook."] = "당신의 능력을 모니터링하려는 경우 이것은 당신이 배운 기술을 보여줄 수 있도록합니다, 당신은이 옵션을 취소 할 수 있습니다.";
	L["Disable Sound"] = "사운드를 사용하지 않음"
	L["Don't play the warning sound."] = "경고 소리를 재생하지 마십시오."
	L['CD Fade'] = "투명도";
	L["Cooldown"] = "재사용 대기 시간";
	L["Spell ID"] = "스킬 ID";
	L["OnCooldown"] = "재 시간";
	L["SHOW"] = "표시";
	L["HIDE"] = "숨기기";
end

--FindIt
do
	L["FindIt"] = "검색 모듈";
	L["Search achievement, item and spell... etc."] = "품목과 기술을 검색하는 데 사용할 수 있습니다. 항목을 검색하려면항목 ID 기입하십시오, 검색 결과 클릭이 세부 사항을 볼 수 채팅 박스로 보낼 수 있습니다.";
	L["Find Type"] = "형식 찾기";
	L["achievement"] = "업적";
	L["currency"] = "currency";
	L["dungeon"] = "인던";
	L["faction"] = "진영";
	L["item"] = "아이템";
	L["spell"] = "주문";
	L["MSG"] = "ID 또는 스킬명";
	L["Search"] = "검색";
	L["Non-ID lookups for items are disabled!"] = "항목에 대한 검색을 할수가 없습니다";
	L["Search result"] = "검색 결과";
end

--Q&A
do
	L["Q&A"] = "▶EUI Q & A◀"
	L["Q1"] = "▶친추 요청◀"
		L["A1"] = "☞EUI#3466"
	L["Q2"] = "▶업로드 방법◀"
		L["A2"] = "☞[!NoTaint][AddOnSkins][ElvUI][ElvUI_Config][EuiGarrison]\n☞[EuiScript][FriendsMenuXP][GearStatsSummary][libs]\n☞기존 파일 삭제후 붙혀넣기하세요\n☞WTF 절대 삭제 금지"
	L["Q3"] = "▶[DBM][BigWigs][Skada][ecount]지원하나요?◀"
		L["A3"] = "☞AddOnSkins애드온에서 스킨만 지원할뿐 직접 애드온을 설치해야합니다"
	L["Q4"] = "▶위협바 지원하나요◀"
		L["A4"] = "☞설정창_EUI설정페이지_[+]_위협바"
	L["Q5"] = "▶EUI 자제 지원하는 애드온 목록좀 알려주세요?◀"
		L["A5"] = "☞다운로드 게시판 또는 TukUI 사용자 포럼 공지 확인 가능합니다"
	L["Q6"] = "▶기타 애드온 블로그 주소좀 알려주세요◀"
		L["A6"] = "☞http://eui21.tistory.com/"
	L["Q7"] = "▶◀"
		L["A7"] = "☞"
	L["Q8"] = "▶◀"
		L["A8"] = "☞"
	L["Q9"] = "▶◀"
		L["A9"] = "☞"
	L["Q10"] = "▶◀"
		L["A10"] = "☞"
	L["Q11"] = "▶◀"
		L["A11"] = "☞/"
	L["Q12"] = "▶◀"
		L["A12"] = "☞"
	L["Q13"] = "▶◀"
		L["A13"] = "☞"
	L["Q14"] = "▶◀"
		L["A14"] = "☞"
	L["Q15"] = "▶◀"
		L["A15"] = "☞"
	L["Q16"] = "▶"
		L["A16"] = "☞"
	L["Q17"] = "▶◀"
		L["A17"] = "☞"
	L["Q18"] = "▶◀"
		L["A18"] = "☞"
	L["Q19"] = "▶◀"
		L["A19"] = "☞"
	L["Q20"] = "▶◀"
		L["A20"] = "☞"
	L["Q21"] = "▶◀"
		L["A21"] = "☞"
	L["Q22"] = "▶◀"
		L["A22"] = "☞"
	L["Q23"] = "▶◀"
		L["A23"] = "☞"
end	

--Tukui_ElvUI_Skins
L['Single Embed System'] = "임베디드 시스템";
L['Embed for Main Panel'] = "우측 대화창 임베디드";
L['Dual Embed System'] = "2개창 임베디드 시스템";
L['Embed for Left Window'] = "좌측 대화창 임베디드";
L['Embed for Right Window'] = "우측 임베디드 창 길이 조정";
L["Embed Left Window Width"] = "좌측 임베디드 창 길이 조정";
L['Out of Combat (Hide)'] = "비 전투중 숨기기";
L['Embed OoC Delay'] = true;
L['Hide Chat Frame'] = "대화창 숨기기";
L['Attach SexyCD to action bar'] = true;
L['Attach CoolLine to action bar'] = true;
L['Embed Transparancy'] = "투명 임베디드 배경";
L['Embed Below Top Tab'] = "상단 탭 아래에 삽입";
L['Recount Backdrop'] = "Recount 배경";
L['Skada Backdrop'] = "Skada 배경";
L['Omen Backdrop'] = "Omen 배경";
L['BossMod Options'] = "DBM|VEM옵션";
L["DBM|VEM Font"] = "DBM|VEM 글꼴";
L["DBM|VEM Font Size"] = "DBM|VEM글꼴 크기";
L['DBM Font Flag'] = "DBM Flag";
L['DBM|VEM Half-bar Skin'] = "DBM|VEM 절반 스타일";
L['BigWigs Half-Bar'] = "BigWigs 절반 스타일";
L['Embed Settings'] = "임베디드 설정";
L['Square minimap icons'] = "MBB 아이콘";
L['AddOn Skins'] = "플러그 스킨";
L['Blizzard Skins'] = "블라지드 스킨";
L['Skin Template'] = true;
L['Transparent Template'] = true;
L['Default Template'] = true;
L['|cffc41f3b[Q] DBM/VEM Half-Bar Skin Spacing looks wrong. How can I fix it?|r'] = true;
L['|cffabd473[A] To use the DBM/VEM Half-Bar skin. You must change the DBM/VEM Options. Offset Y needs to be at least 15.'] = true;

--ALM
do
	L['maxCacheNum'] = "스킬등록 최대 수";
	L['close other module'] = "다른 모니터링 모듈을 닫습니다";
	L['close other module desc'] = "ALM_오류을 방지하기위해 다른 버프/디버프 애드온을 닫습니다";
	L['ALMplayerBuffMonitor'] = 'ALM-플레이어 버프';
	L['ALMplayerDebuffMonitor'] = 'ALM-플레이어 디버프';
	L['ALMtargetBuffMonitor'] = 'ALM-대상 버프';
	L['ALMtargetDebuffMonitor'] = 'ALM-대상 디버프';
	L['ALMspellCDMonitor'] = 'ALM-플레이어 발동류';
	L['Delete Spell'] = "주문 삭제";
	L['Add Spell'] = "주문 추가";
	L['Detailed settings'] = "세부 설정";

	L['enable'] = "사용";
	L['count'] = "count";
	L['caster'] = "캐스터";
	L['player'] = "플레이어";
	L['target'] = "대상";
	L['focus'] = "주시대상";
	L['any'] = "any";
	L['no talent'] = "특성 없음";

	L["ALM"] = "ALM";
	L["Auto learning monitor"] = "기술 모니터링 모듈,자동으로 새로운 기술을 배우고 목록에 추가됩니다,사용자가 자유롭게 추가 할 수 있습니다,플레이어BUFF,플레이어DEBUFF,대상BUFF,대상DEBUFF그리고 플레이어 기술CD";
	L["Defaults"] = "기본값 복원";
	L['learning'] = "자동 스킬 등록";

	L['playerBuff'] = "플레이어 버프";
	L['playerDebuff'] = "플레이어 디버프";
	L['targetBuff'] = "대상 버프";
	L['targetDebuff'] = "대상 디버프";
	L['spellCD'] = "플레이어 발동류";

	L['iconSize'] = "아이콘 크기";
	L['x-direction'] = "x 좌표";
	L['y-direction'] = "y 좌표";
	L['interval'] = "간격";
	L['perRow'] = "최소 열수";
	L['maxNum'] = "아이콘의 최대 개수";
	L['useList'] = "사용중 주문 목록";
	L['userList desc'] = "주문 목록을 클릭합니다,자세하게 설정할 수 있습니다,캐스터 및 기타 정보";
	L['WhiteList'] = "사용 목록";
	L['WhiteList desc'] = "주문 목록을 클릭합니다,당신은 스킬 목록을 삭제할 수 있습니다";
	L['cacheList'] = "주문 목록 추가";
	L['cacheList desc'] = "주문 목록을 클릭합니다,목록에 추가 할 수 있습니다";
end

--ExtraCD
L["Automatically scan and load icds of the types below"] = "자동으로 아래 종류의 내부 재사용 대기시간을 스캔합니다."
L["talent"] = "특성";
L["Scan and show internal cooldown of player's talent."] = "플레이어의 특성 내부 재사용 대기시간을 스캔하여 표시합니다."
L["enchant"] = "마법";
L["Scan and show internal cooldown of player's enchant."] = "플레이어의 마법 내부 재사용 대기시간을 스캔하여 표시합니다."
L["item"] = "아이템"
L["Scan and show internal cooldown of player's trinket and special weapons."] = "플레이어의 장신구나 특별한 무기의 내부 재사용 대기시간을 스캔하여 표시합니다."
L["item set"] = "아이템 세트"
L["Scan and show internal cooldown of player's item set."] = "플레이어의 아이템 세트 내부 재사용 대기시간을 스캔하여 표시합니다."
L["gem"] = "보석";
L["Scan and show player's special(legendary) gems"] = "플레이어의 특별한 (전설) 보석을 검출하고 표시";
L["spec"] = "전문 기술"
L["Scan and show internal cooldown of player's specializations."] = "플레이어의 전문화 내부 재사용 대기시간을 스캔하여 표시합니다."
L["RPPM Options"] = "RPPM옵션"
L["Show icons for RPPM"] = "표시RPPM"
L["Show icons for enchants or items with RPPM"] = "마법 부여 또는 항목에 대한 아이콘을 표시 RPPM"
L["Chance multiples"] = "Chance multiples"
L["Show number of chance multiples on RPPM icons"] = "Show number of chance multiples on RPPM icons"
L["Glow opacity"] = "밝기 투명도"
L["Lock frame"] = "프레임 잠금"
L["Set the frame locked."] = "프레임 잠긴 설정"
L["Combat only"] = "전투시 활성화"
L["Show the icon only in combat."] = "오직 전투에서 아이콘을 표시합니다"
L["Show tooltip"] = "툴팁 표시"
L["Show tooltip for the icons."] = "아이콘 툴팁 표시합니다"
L["Show cooldown"] = "재사용 대기 시간 표시"
L["Show cooldown upon the icons."] = "아이콘에 재사용 대기 시간 표시."
L["Show glow"] = "플래시"
L["Show glow for the icons."] = "아이콘 주위 플래시 추가하는 방법."
L["Show cooldonw text"] = "텍스트 cooldonw 표시"
L["Show cooldown text for the procs."] = "텍스트 트리거 효과에게 cooldonw 시간을 표시합니다."
L["Icons each row"] = "아이콘 줄수"
L["Set the icons in each row"] = "아이콘 줄 수를 설정합니다."
L["Text opacity"] = "문자 투명도"
L["Text size"] = "문자 크기"
L["Set the cooldown text size"] = "재사용 대기시간 문자 크기를 설정합니다."
L["Icon interval"] = "아이콘 간격"
L["Set the interval size between icons"] = "아이콘 사이의 간격을 설정합니다."
L["Icon size"] = "아이콘 크기"
L["Set the icon size"] = "아이콘 크기를 설정"

L['CombatText'] = '전투 텍스트';
L['Open Config'] = '설정창 열기';