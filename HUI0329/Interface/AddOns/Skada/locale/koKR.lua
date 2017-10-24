local L = LibStub("AceLocale-3.0"):NewLocale("Skada", "koKR", false)

if not L then return end

L["Disable"] = "비활성화"
L["Profiles"] = "프로필"
L["Hint: Left-Click to toggle Skada window."] = "힌트: 좌-클릭으로 Skada 창을 표시/숨김 합니다."
L["Shift + Left-Click to reset."] = "Shift + 좌-클릭으로 Skada를 초기화 합니다."
L["Right-click to open menu"] = "우클릭으로 메뉴를 엽니다."
L["Options"] = "설정"
L["Appearance"] = "모양"
L["A damage meter."] = "대미지 미터기입니다."
L["Skada summary"] = "Skada: Ultimate - 요약"

L["Current"] = "현재"
L["Total"] = "전체"

L["All data has been reset."] = "모든 자료가 초기화 되었습니다."
L["Skada: Fights"] = "Skada: Ultimate - 전투 목록"
L["Skada: Modes"] = "Skada: Ultimate - 기능"

-- Options
L["Disabled Modules"] = "모듈 비활성화"
L["This change requires a UI reload. Are you sure?"] = "이 변경사항은 UI 재시작을 필요로 합니다. 계속 하시겠습니까?"
L["Tick the modules you want to disable."] = "비활성화를 원하는 모듈을 선택하세요."
L["Bar font"] = "바 글꼴"
L["The font used by all bars."] = "바에 사용되는 글꼴입니다."
L["Bar font size"] = "바 글꼴 크기"
L["The font size of all bars."] = "바의 글꼴 크기입니다."
L["Bar texture"] = "바 무늬"
L["The texture used by all bars."] = "바에 사용되는 무늬입니다."
L["Bar spacing"] = "바 간격"
L["Distance between bars."] = "바 사이의 간격입니다."
L["Bar height"] = "바 높이"
L["The height of the bars."] = "바의 높이입니다."
L["Bar width"] = "바 너비"
L["The width of the bars."] = "바의 너비입니다."
L["Bar color"] = "바 색상"
L["Choose the default color of the bars."] = "바의 기본 색상을 선택합니다."
L["Max bars"] = "최대 바"
L["The maximum number of bars shown."] = "바의 최대 개수를 설정합니다."
L["Bar orientation"] = "바 진행 방향"
L["The direction the bars are drawn in."] = "바가 진행 될 방향을 설정합니다."
L["Left to right"] = "좌에서 우"
L["Right to left"] = "우에서 좌"
L["Combat mode"] = "전투시 모드 전환"
L["Automatically switch to set 'Current' and this mode when entering combat."] = "전투 시작시 자동으로 이 모드와 함께 '현재' 세분화로 설정합니다."
L["None"] = "없음"
L["Return after combat"] = "전투 후 이전상태로 복구"
L["Return to the previous set and mode after combat ends."] = "전투 종료 후에 이전 설정 및 모드로 돌아갑니다."
L["Show minimap button"] = "미니맵 버튼 표시"
L["Toggles showing the minimap button."] = "미니맵 버튼 표시를 끄거나 켭니다."

L["Skada: %s for %s:"] = "Skada Ultimate: %s - %s"
L["Only keep boss fighs"] = "보스 전투만 유지"
L["Boss fights will be kept with this on, and non-boss fights are discarded."] = "보스 전투로 감지된 경우에만 세분화를 유지합니다."

L["Lock window"] = "창 고정"
L["Locks the bar window in place."] = "창을 고정합니다."
L["Reverse bar growth"] = "바 쌓기 방향 뒤집기"
L["Bars will grow up instead of down."] = "바를 아래 대신에 위로 쌓게 합니다."
L["Number format"] = "숫자 형식"
L["Controls the way large numbers are displayed."] = "큰 수의 표시 방식을 설정합니다."
L["Number set duplicates"] = "동일 세분화 번호 추가"
L["Append a count to set names with duplicate mob names."] = "동일한 몬스터와 여러번 전투를 한 경우 몬스터 이름 뒤에 번호를 추가하여 구분을 쉽게 합니다."
L["Set format"] = "세분화 표시 형식"
L["Controls the way set names are displayed."] = "세분화를 어떻게 표시할 것인지 설정합니다."
L["Reset on entering instance"] = "인던 진입시 초기화"
L["Controls if data is reset when you enter an instance."] = "인던에 진입할 경우에 자료를 초기화 할지 여부를 설정합니다."
L["Reset on joining a group"] = "파티/공격대 참여시 초기화"
L["Controls if data is reset when you join a group."] = "파티/공격대에 참여할 경우에 자료를 초기화 할지 여부를 설정합니다."
L["Reset on leaving a group"] = "파티/공격대 탈퇴시 초기화"
L["Controls if data is reset when you leave a group."] = "파티/공격대에서 떠날 경우에 자료를 초기화 할지 여부를 설정합니다."
L["General options"] = "일반 설정"
L["Mode switching"] = "모드 전환"
L["Data resets"] = "자료 초기화"
L["Bars"] = "바"

L["Yes"] = "예"
L["No"] = "아니오"
L["Ask"] = "질문"
L["Condensed"] = "억/만"
L["Detailed"] = "상세"

L["Hide when solo"] = "솔로잉시 숨김"
L["Hides Skada's window when not in a party or raid."] = "파티 또는 공격대가 아닐때 Skada 창을 숨깁니다."

L["Title bar"] = "제목 바"
L["Background texture"] = "배경 무늬"
L["The texture used as the background of the title."] = "제목 배경 무늬를 설정합니다."
L["Border texture"] = "테두리 무늬"
L["The texture used for the border of the title."] = "제목 테두리 무늬를 설정합니다."
L["Border thickness"] = "테두리 두께"
L["The thickness of the borders."] = "테두리 두께를 설정합니다."
L["Background color"] = "배경 색상"
L["The background color of the title."] = "배경 색상을 설정합니다."

L["Do you want to reset Skada?"] = "Skada를 초기화 하시겠습니까?"
L["The margin between the outer edge and the background texture."] = "바깥쪽 가장자리와 배경 무늬 사이의 여백을 설정합니다."
L["Margin"] = "여백"
L["Window height"] = "창 높이"
L["The height of the window. If this is 0 the height is dynamically changed according to how many bars exist."] = "창의 높이를 설정합니다. 만약 0이면 바의 수만큼 자동으로 높이가 조절됩니다."
L["Adds a background frame under the bars. The height of the background frame determines how many bars are shown. This will override the max number of bars setting."] = "바 아래에 배경 프레임을 추가합니다. 배경 프레임의 높이가 얼마나 많은 바를 표시할지 결정합니다. 이 설정은 바의 최대 수 설정보다 우선합니다."
L["Enable"] = "활성화"
L["Background"] = "배경"
L["The texture used as the background."] = "배경 무늬를 설정합니다."
L["The texture used for the borders."] = "테두리 무늬를 설정합니다."
L["The color of the background."] = "배경 색상을 설정합니다."
L["Data feed"] = "LDB에 표시될 데이터 선택"
L["Choose which data feed to show in the DataBroker view. This requires an LDB display addon, such as Titan Panel."] = "DataBroker에 표시될 자료를 선택하세요. LDB 표시 애드온이 필요합니다."
L["Data segments to keep"] = "유지할 세분화 개수"
L["The number of fight segments to keep. Persistent segments are not included in this."] = "유지할 세분화의 수를 설정합니다. 별도로 유지하기로 한 세분화는 이 갯수에 포함되지 않습니다."

L["Alternate color"] = "대체 색상"
L["Choose the alternate color of the bars."] = "바의 대체 색상을 선택합니다."

L["Enables the title bar."] = "제목 표시줄을 표시합니다."

L["Skada Menu"] = "Skada: Ultimate 메뉴"
L["Switch to mode"] = "모드로 전환"
L["Report"] = "보고"
L["Toggle window"] = "창 표시/숨김"
L["Configure"] = "설정"
L["Delete segment"] = "세분화 삭제"
L["Keep segment"] = "세분화 유지"
L["Mode"] = "모드"
L["Lines"] = "줄수"
L["Channel"] = "채널"
L["Send report"] = "보고서 보내기"
L["No mode selected for report."] = "보고를 할 모드가 선택되지 않았습니다."
L["Say"] = "일반 대화"
L["Raid"] = "공격대 대화"
L["Party"] = "파티 대화"
L["Guild"] = "길드 대화"
L["Officer"] = "길드 관리자 대화"
L["Self"] = "혼자보기"
L["RealID"] = "실명친구 귓속말"
L["Instance"] = "인스턴스 대화"
L[" (Channel)"] = " (공개/사설 채널)"
L["Error: No target selected"] = "귓속말 대상 또는 채널이 존재하지 않습니다."

L["Delete window"] = "창 삭제"
L["Deletes the chosen window."] = "선택한 창을 삭제합니다."
L["Are you sure you want to delete this window?"] = "이 창을 정말로 삭제하시겠습니까?"
L["Choose the window to be deleted."] = "선택한 창이 삭제됩니다."
L["Enter the name for the new window."] = "창 이름을 입력하세요."
L["Create window"] = "창 생성"
L["Windows"] = "창"

L["Switch to segment"] = "세분화로 전환"
L["Segment"] = "세분화"

L["Whisper"] = "귓속말"
L["Whisper Target"] = "대상에게 귓속말"
L["No mode or segment selected for report."] = "보고할 모드나 세분화가 선택되지 않았습니다."
L["Name of recipient"] = "귓속말을 받을 플레이어 이름"

L["Last fight"] = "마지막 전투"
L["Disable while hidden"] = "숨김시 데이터 수집 안함"
L["Skada will not collect any data when automatically hidden."] = "숨김 상태일때는 Skada에서 자료를 수집하지 않습니다. (전투 도중 감추기 설정은 제외)"
L["Data Collection"] = "데이터 수집"
L["ENABLED"] = "활성화"
L["DISABLED"] = "비활성화"

L["Rename window"] = "창 이름 바꾸기"
L["Enter the name for the window."] = "창 이름을 입력하세요."

L["Bar display"] = "바 표시"
L["Display system"] = "표시 방법"
L["Choose the system to be used for displaying data in this window."] = "창에 표시되는 데이터에 사용할 표시 방법을 선택합니다."

L["Class color bars"] = "직업 색상 바"
L["When possible, bars will be colored according to player class."] = "가능하면 바를 플레이어의 직업 색상으로 표시합니다."
L["Class color text"] = "직업 색상 문자"
L["When possible, bar text will be colored according to player class."] = "가능하면 바의 문자를 플레이어의 직업 색상으로 표시합니다."

L["Reset"] = "초기화"
L["Show tooltips"] = "툴팁 표시"
L["Shows tooltips with extra information in some modes."] = "일부 모드에 추가 정보를 보여주는 툴팁을 표시합니다."

L["Hide in PvP"] = "PvP 지역에서 숨김"
L["Hides Skada's window when in Battlegrounds/Arenas."] = "전장/투기장에서 Skada 창을 숨깁니다."

L["Click for"] = "클릭 ->"
L["Shift-Click for"] = "쉬프트-클릭 ->"
L["Control-Click for"] = "컨트롤-클릭 ->"
L["Default"] = "기본값"
L["Top left"] = "상단-좌측"
L["Top right"] = "상단-우측"
L["Position of the tooltips."] = "툴팁 위치입니다."
L["Tooltip position"] = "툴팁 위치"

L["Shows a button for opening the menu in the window title bar."] = "창 제목 바에 메뉴 버튼을 표시합니다."
L["Show menu button"] = "메뉴 버튼 표시"

L["Start new segment"] = "새로운 세분화 시작"

L["Hide in combat"] = "전투 도중 감추기"
L["Hides Skada's window when in combat."] = "전투중일시 Skada 창을 감춥니다. 데이터 수집은 계속됩니다."
L["Hide in Pet Battle"] = "애완동물 대전중 숨김"
L["Hides Skada's window when in Pet Battle."] = "애완동물 대전중에 Skada 창을 숨김니다."

L["Tooltips"] = "툴팁"
L["Informative tooltips"] = "요약 툴팁"
L["Shows subview summaries in the tooltips."] = "툴팁에 하위 항목 요약을 보여줍니다."
L["Subview rows"] = "하위 항목 열"
L["The number of rows from each subview to show when using informative tooltips."] = "요약 툴팁에서 표시될 하위 항목의 개수를 설정합니다."

L["Show rank numbers"] = "순위 표시" 
L["Shows numbers for relative ranks for modes where it is applicable."] = "가능한 경우 모드에서 순위를 표시합니다."

L["Show spark effect"] = "바 끝 강조효과 사용"

L["Aggressive combat detection"] = "전투로그 감지시 데이터 수집"
L["Skada usually uses a very conservative (simple) combat detection scheme that works best in raids. With this option Skada attempts to emulate other damage meters. Useful for running dungeons. Meaningless on boss encounters."] = "Skada는 기본적으로 플레이어가 전투상태에 돌입한 경우에만 기록 수집을 시작합니다. 이 설정을 활성화 하면 전투상태에 돌입하지 않더라도 전투로그가 감지되는 즉시 기록 수집을 시작합니다. 보다 정확한 자료 수집을 원하시면 활성화 하시기 바랍니다."

L["Clickthrough"] = "클릭무시"
L["Disables mouse clicks on bars."] = "바를 클릭할 수 없도록 합니다."

L["Wipe mode"] = "전멸후 모드 전환"
L["Automatically switch to set 'Current' and this mode after a wipe."] = "보스와의 전투시 전멸후 자동으로 이 모드와 함께 '현재' 세분화로 설정합니다."

L["Merge pets"] = "소환수 합산"
L["Merges pets with their owners. Changing this only affects new data."] = "주인에게 소환수의 데이터를 합산합니다. 새로운 데이터 기록시에 적용됩니다."

L["Show totals"] = "전체 열 표시"
L["Shows a extra row with a summary in certain modes."] = "가능한 경우 모드에서 합계를 나타내는 추가 열을 표시합니다."

L["There is nothing to report."] = "보고할 자료가 없습니다."

L["Buttons"] = "버튼"

L["Deletes the chosen window."] = "선택한 창을 삭제합니다."
L["Delete window"] = "창 삭제"
L["Window"] = "창"
L["Scale"] = "크기"
L["Sets the scale of the window."] = "창 크기를 설정합니다."

L["Snaps the window size to best fit when resizing."] = "창 크기를 조절할때 가장 맞는 크기로 창을 달라 붙게 합니다."
L["Snap to best fit"] = "가장 맞는 크기로 달라 붙기"

L["Hide window"] = "창 숨김"

L["Choose the background color of the bars."] = "바의 배경 색상을 선택합니다."

L["Font flags"] = "글꼴 속성"
L["Sets the font flags."] = "글꼴 속성을 설정합니다."
L["None"] = "없음"
L["Outline"] = "외곽선"
L["Thick outline"] = "두꺼운 외곽선"
L["Monochrome"] = "단색"
L["Outlined monochrome"] = "단색 외곽선"

L["The height of the title frame."] = "제목 바 높이입니다."
L["Title height"] = "제목 바 높이"
L["Use class icons where applicable."] = "직업 아이콘 사용하기 (사용가능할 때)"
L["Class icons"] = "직업 아이콘"

L["Include set"] = "세분화 이름 포함"
L["Include set name in title bar"] = "창 제목에 세분화 이름을 포함합니다."

L["Skada has changed!"] = "스카다가 업데이트 되었습니다!"
L["All Skada functionality is now in 1 addon folder."] = "모든 스카다 기능은 이제 1개 폴더로 작동합니다."
L["Skada will |cFFFF0000NOT|r function properly until you delete the following AddOns:"] = "다음 애드온을 삭제하기 전까지는 스카다는 정상작동하지 않습니다:"
L["Click below and configure your '|cFFFF0000Disabled Modules|r'."] = "아래를 클릭하신 후에 |cFFFF0000비활성화할 모듈|r을 설정해 주세요."

L["Stop"] = "기록 중지"
L["Autostop"] = "전멸 전에 기록 중지"
L["Autostop description"] = "공격대원 중 절반 이상이 죽은 경우 기록을 자동 중지 합니다."

L["Stop description"] = "현재 세분화의 기록을 중지/재개 합니다. 전멸 직전 데이터를 정리하는데 유용합니다. 설정에서 자동 중지도 가능합니다."
L["Segment description"] = "특정 세분화로 이동"
L["Mode description"] = "특정 모드로 이동"
L["Reset description"] = "세분화 유지로 설정된 세분화를 제외한 모든 데이터를 초기화 합니다."
L["Report description"] = "다양한 방법으로 데이터를 다른 사람에게 보고할 수 있는 창을 엽니다."
L["Configure description"] = "현재 활성화된 스카다 창을 설정할 수 있습니다."

L["Role icons"] = "역할 아이콘"
L["Use role icons where applicable."] = "가능한 경우 역할 아이콘을 표시합니다."

L["Record stopped."] = "현재 세분화 기록을 중지합니다."
L["Record resumed."] = "현재 세분화 기록을 재개합니다."

L["Condensed(Not DPS)"] = "억/만(DPS제외)" 
L["Condensed(Not DPS+No Comma)"] = "억/만(DPS제외+쉼표없음)" 
L["M/K"] = "M/K"
L["M/K(Not DPS)"] = "M/K(DPS제외)"
L["M/K(Not DPS+No Comma)"] = "M/K(DPS제외+쉼표없음)"
L["Detailed(No comma)"] = "상세(쉼표없음)"

L["Eok"] = "억"
L["Man"] = "만"
L["Hwoe"] = "회"

-- Local used by common modules
L["s"] = "초"
L["Hit:"] = "사용/적중:"
L["Average hit:"] = "평균:"
L["Maximum hit:"] = "최대:"
L["Minimum hit:"] = "최소:"
L["Damage"] = "피해"
L["Healing"] = "치유"
L["DPS"] = true
L["HPS"] = true
L["Hit"] = "평타"
L["Critical"] = "치명/극대"
L["Glancing"] = "비껴맞음"
L["Crushing"] = "강타"
L["Absorb"] = "흡수"
L["Block"] = "방어"
L["Deflect"] = "튕김"
L["Dodge"] = "피함"
L["Evade"] = "벗어남"
L["Immune"] = "면역"
L["Missed"] = "빗나감"
L["Reflect"] = "반사"
L["Parry"] = "막음"
L["Resist"] = "저항"
L["Overhealed"] = "초과치유"
L["Absorbed"] = "흡수됨"
L["Attack"] = "일반 공격"
L[" (DoT)"] = " (지속 피해)"
L["DoT"] = "지속 피해"
L[" (HoT)"] = " (지속 치유)"
L["HoT"] = "지속 치유"
L["Spell list"] = "주문 목록"
L["Columns"] = "칸"
L["Percent"] = "퍼센트"
L["Multistrike"] = "연속타격"

-- Local used by Damage.lua
L["Damage list"] = "피해"
L["Damage: Player spell list"] = "피해: 플레이어별 주문 목록"
L["Damage: Player spell list > Hit/miss list"] = "피해: 플레이어별 주문 목록 > 적중/실패 목록"
L["Damage: Player damaged mob"] = "피해: 플레이어별 피해 대상 목록"
L["Damage: Player damaged mob > Spell list"] = "피해: 플레이어별 피해 대상 목록 > 주문 목록"
L["Damaged mob list"] = "피해입힌 적"
L["Damaged mob: Damaged player list"] = "피해입은 적: 플레이어별 피해량"
L["Damaged mob: Damaged player list > Player spells"] = "피해입은 적: 플레이어별 피해량 > 주문 목록"
L["DPS list"] = "DPS"

L["Activity"] = "활동량"
L["Damaged mob"] = "피해입힌 적"
L["RDPS"] = "RDPS"
L["Damage: Personal DPS"] = "피해: 개인 DPS"
L["Damage: Raid DPS"] = "피해: 공격대 DPS"
L["Damage done"] = "입힌 피해량" 
L["Active time"] = "활동 시간" 
L["Segment time"] = "전투 시간" 

L["Hit rate:"] = "적중률:"
L["Critical rate:"] = "치명타율:"
L["Multistrike rate:"] = "연속타격률:"
L["Multistrike hit:"] = "연속타격:"

-- Local used by Healing.lua
L["Healing list"] = "치유"
L["Healing: Player spell list"] = "치유: 플레이어별 주문 목록"
L["Healing: Healed list"] = "치유: 플레이어별 치유 대상 목록"
L["Healing: Healed list > Spell list"] = "치유: 플레이어별 치유 대상 목록 > 주문 목록"
L["Total healing list"] = "전체 치유"
L["Total healing: Spell list"] = "전체 치유: 플레이어별 주문 목록"
L["Overhealing list"] = "초과 치유"
L["Overhealing: Spell list"] = "초과 치유: 플레이어별 주문 목록"
L["Absorbed healing"] = "흡수된 치유"
L["Absorbed Healing: Spell list"] = "흡수된 치유: 플레이어별 주문 목록"
L["Enemy Healing"] = "적 치유"
L["Enemy Healing: Spell list"] = "적 치유: 적별 주문 목록"
L["Enemy Healing: Healed list"] = "적 치유: 적별 치유 대상 목록"
L["Enemy Healing: Healed list > Spell"] = "적 치유: 적별 치유 대상 목록 > 주문 목록"
L["Healing taken list"] = "받은 치유"
L["Healing taken: Spell list"] = "받은 치유: 받은 주문 목록"
L["Healing taken: Healed player list"] = "받은 치유: 치유받은 플레이어 목록"

L["Healed"] = "치유함"
L["Total healing"] = "전체 치유"
L["Overhealing"] = "초과 치유"
L["Overheal"] = "초과치유"
L["Overrate"] = "초과율"
L["Absorbed heal"] = "흡수된 치유"
L["Healing taken"] = "받은 치유"
L["Heal from"] = "치유받음"

L["Critical heal:"] = "극대화:"
L["Multistrike heal:"] = "연속타격 치유량:"

-- Local used by DamageTaken.lua
L["Damage taken list"] = "받은 피해"
L["Damage taken: Player taken spell list"] = "받은 피해: 플레이어별 피해 주문 전체 목록"
L["Damage taken by spell"] = "받은 피해(주문별)"
L["Damage taken by spell: Player list"] = "받은 피해(주문별): 각 플레이어별 피해 목록"
L["Damage taken by mob"] = "받은 피해(대상별)"
L["Damage taken by mob: Player list"] = "받은 피해(대상별): 각 대상별 피해 목록"
L["Damage taken by mob: Player list > Spells"] = "받은 피해(대상별): 각 대상별 피해 > 피해 주문 목록"

L["DamageTaken"] = "받은 피해"
L["Damage taken"] = "받은 피해"
L["Taken spell"] = "주문 피해"
L["Damage from"] = "피해줌"
L["DTPS"] = true

L["Blocked"] = "방어함"
L["Resisted"] = "저항함"
L["Multistrike damage:"] = "연속타격 피해:"

-- Local used by Friendly.lua
L["Friendly damage list"] = "아군에게 준 피해"
L["Friendly damage: Spell list"] = "아군에게 준 피해: 플레이어별 주문 목록"
L["Friendly damage: Damaged player list"] = "아군에게 준 피해: 플레이어별 피해 대상 목록"
L["Friendly damage: Damaged player list > Spells"] = "아군에게 준 피해: 플레이어별 피해 대상 목록 > 주문 목록"

L["Friendly"] = "아군에게 준 피해"
L["Friendly damage"] = "아군에게 준 피해"
L["Damaged friend"] = "피해입은 아군"

-- Local used by CC.lua
L["CC breakers"] = "군중 제어 해제"
L["CC breakers: Broken mob list"] = "군중 제어 해제: 해제된 대상 목록"
L["CC breaks"] = "군중 제어 해제함"
L["CC"] = "군중 제어"

-- Local used by Deaths.lua
L["Deaths"] = "죽음"
L["Death log"] = "죽음 로그"
L["%s dies"] = "%s 죽음"
L["Death"] = "죽음"
L["Timestamp"] = "발생시간"
L["Change"] = "변화량"
L["Health"] = "체력"
L["Overkill"] = "초과 피해"
L["'s "] = ": "

-- Local used by Debuffs.lua
L["Debuff uptimes"] = "디버프 지속시간"
L["Debuff uptimes: Spell list"] = "디버프 지속시간: 주문 목록"
L["Buff uptimes"] = "버프 지속시간"
L["Buff uptimes: Spell list"] = "버프 지속시간: 주문 목록"
L["Debuffs"] = "디버프"
L["Buffs"] = "버프"

-- Local used by Dispels.lua
L["Dispels"] = "해제"
L["Dispels: Dispeled spell"] = "해제: 해제된 주문 목록"
L["Dispels: Dispeled spell > Targets"] = "해제: 해제된 주문 목록 > 해제한 대상"

-- Local used by Interrupts.lua
L["Interrupts"] = "차단"
L["Interrupts: Interrupted spell"] = "차단: 차단한 주문 목록"
L["Interrupts: Interrupted spell > Targets"] = "차단: 차단한 주문 목록 > 차단한 대상"

-- Local used by Power.lua
L["Mana gained"] = "획득 마나"
L["Mana gained: Spell list"] = "획득 마나: 주문 목록"

L["Power"] = "획득 마나"

-- Local used by Threat.lua
L["Threat list"] = "위협"
L["Threat"] = "위협"
L["Threat: Personal Threat"] = "위협: 개인 위협"
L["Threat warning"] = "위협 경고"
L["Flash screen"] = "화면 깜박임"
L["This will cause the screen to flash as a threat warning."] = "경고수치 도달시 화면을 깜박입니다."
L["Shake screen"] = "화면 흔들기"
L["This will cause the screen to shake as a threat warning."] = "경고수치 도달시 화면을 흔듭니다."
L["Play sound"] = "소리 재생"
L["This will play a sound as a threat warning."] = "경고수치 도달시 소리를 재생합니다."
L["Threat sound"] = "소리 설정"
L["The sound that will be played when your threat percentage reaches a certain point."] = "경고 수치에 도달했을때 재생할 소리를 지정합니다."
L["Threat threshold"] = "경고값"
L["When your threat reaches this level, relative to tank, warnings are shown."] = "탱커의 위협수준을 기준으로, 설정된 수치에 도달하면 위협수준 경고를 보여줍니다."
L["Do not warn while tanking"] = "탱킹중일땐 경고하지 않음"
L["Show raw threat"] = "위협수준 보정하지 않음"
L["Shows raw threat percentage relative to tank instead of modified for range."] = "원거리 딜러를 위한 위협수준 보정을 하지 않고, 획득한 위협 수준 그대로를 보여줍니다."
L["Use focus target"] = "주시대상의 위협수준 사용"
L["Shows threat on focus target, or focus target's target, when available."] = "가능한 경우 주시대상 또는 주시대상의 대상의 위협수준을 보여줍니다."
L["TPS"] = true
