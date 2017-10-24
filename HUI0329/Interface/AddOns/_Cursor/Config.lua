-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

-- Functions
local next = _G.next
local pairs = _G.pairs
local tonumber = _G.tonumber
local type = _G.type

-- Libraries
local math = _G.math
local table = _G.table

-------------------------------------------------------------------------------
-- Blizzard API
-------------------------------------------------------------------------------
local CreateFrame = _G.CreateFrame

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local _Cursor = _Cursor
local L = _CursorLocalization
local NS = CreateFrame("Frame")
_Cursor.Options = NS

NS.Title = NS:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
NS.Title:SetPoint("TOPLEFT", 16, -16)
NS.Title:SetText(L.OPTIONS_TITLE)
NS.name = L.OPTIONS_TITLE
NS:Hide()
NS:SetScript("OnHide", NS.OnHide)

InterfaceOptions_AddCategory(NS)

local SubText = NS:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
SubText:SetPoint("TOPLEFT", NS.Title, "BOTTOMLEFT", 0, -8)
SubText:SetPoint("RIGHT", -32, 0)
SubText:SetHeight(32)
SubText:SetJustifyH("LEFT")
SubText:SetJustifyV("TOP")
SubText:SetText(L.OPTIONS_DESC)

-------------------------------------------------------------------------------
-- Sets section
-------------------------------------------------------------------------------
local SetsPanel = CreateFrame("Frame", "_CursorOptionsSets", NS, "OptionsBoxTemplate")
SetsPanel:SetPoint("TOPLEFT", SubText, "BOTTOMLEFT", -2, -16)
SetsPanel:SetPoint("RIGHT", -14, 0)
SetsPanel:SetHeight(64)

_G[SetsPanel:GetName() .. "Title"]:SetText(L.OPTIONS.SETS)

local SetsEditBox = CreateFrame("EditBox", "_CursorOptionsSet", SetsPanel, "InputBoxTemplate")
SetsEditBox:SetPoint("TOPLEFT", 16, -10)
SetsEditBox:SetPoint("RIGHT", -16, 0)
SetsEditBox:SetHeight(20)
SetsEditBox.SetHeight = function() end
SetsEditBox:SetAutoFocus(false)
SetsEditBox:SetScript("OnEnterPressed", SetsEditBox.OnEnterPressed)
SetsEditBox:SetScript("OnTextChanged", SetsEditBox.OnTextChanged)
SetsEditBox:SetScript("OnEnter", NS.ControlOnEnter)
SetsEditBox:SetScript("OnLeave", _G.GameTooltip_Hide)
SetsEditBox.point = "TOPRIGHT"
SetsEditBox.relativePoint = "BOTTOMRIGHT"
SetsEditBox.tooltipText = L.OPTIONS["SET_DESC"]

local SetsEditBoxButton = CreateFrame("Button", nil, SetsEditBox)
SetsEditBoxButton:SetPoint("RIGHT", SetsEditBox, 3, 1)
SetsEditBoxButton:SetSize(24, 24)
SetsEditBoxButton:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Up")
SetsEditBoxButton:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Down")
SetsEditBoxButton:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
SetsEditBoxButton:SetScript("OnClick", SetsEditBoxButton.OnClick)
SetsEditBoxButton:SetScript("OnHide", SetsEditBoxButton.OnHide)

local SetsSaveButton = CreateFrame("Button", nil, SetsPanel, "UIPanelButtonTemplate")
SetsSaveButton:SetPoint("BOTTOMLEFT", 8, 10)
SetsSaveButton:SetSize(74, 22)
SetsSaveButton:SetText(L.OPTIONS.SAVE)
SetsSaveButton:SetScript("OnClick", SetsSaveButton.OnClick)

local SetsLoadButton = CreateFrame("Button", nil, SetsPanel, "UIPanelButtonTemplate")
SetsLoadButton:SetPoint("LEFT", SetsSaveButton, "RIGHT", 4, 0)
SetsLoadButton:SetSize(74, 22)
SetsLoadButton:SetText(L.OPTIONS.LOAD)
SetsLoadButton:SetScript("OnClick", SetsLoadButton.OnClick)

local SetsDeleteButton = CreateFrame("Button", nil, SetsPanel, "UIPanelButtonGrayTemplate")
SetsDeleteButton:SetPoint("BOTTOMRIGHT", -8, 10)
SetsDeleteButton:SetSize(74, 22)
SetsDeleteButton:SetText(L.OPTIONS.DELETE)
SetsDeleteButton:SetScript("OnClick", SetsDeleteButton.OnClick)
SetsDeleteButton:SetScript("OnEnter", NS.ControlOnEnter)
SetsDeleteButton:SetScript("OnLeave", _G.GameTooltip_Hide)
SetsDeleteButton.tooltipText = L.OPTIONS.DELETE_DESC

-------------------------------------------------------------------------------
-- Cursors section
-------------------------------------------------------------------------------
local CursorsPanel = CreateFrame("Frame", "_CursorOptionsCursors", NS, "OptionsBoxTemplate")
CursorsPanel:SetPoint("TOPLEFT", SetsPanel, "BOTTOMLEFT", 0, -64)
CursorsPanel:SetPoint("BOTTOMRIGHT", -14, 16)

local CursorsPanelTitleText = _G[CursorsPanel:GetName() .. "Title"]
CursorsPanelTitleText:SetText(L.OPTIONS.CURSORS)
CursorsPanelTitleText:SetPoint("BOTTOMLEFT", CursorsPanel, "TOPLEFT", 9, 20)

local CursorApplyButton = CreateFrame("Button", nil, CursorsPanel, "UIPanelButtonGrayTemplate")
CursorApplyButton:SetScript("OnClick", NS.OnApply)
CursorApplyButton:SetPoint("BOTTOMRIGHT", CursorsPanel, "TOPRIGHT", 0, 2)
CursorApplyButton:SetSize(64, 16)
CursorApplyButton:SetText(L.OPTIONS.APPLY)

local CursorEnabledButton =  CreateFrame("CheckButton", "_CursorOptionsEnabled", CursorsPanel, "InterfaceOptionsCheckButtonTemplate")
CursorEnabledButton:SetPoint("TOPLEFT", 16, -8)
CursorEnabledButton:SetScale(0.75)
CursorEnabledButton:SetScript("OnClick", CursorEnabledButton.OnClick)
CursorEnabledButton.tooltipText = L.OPTIONS.ENABLED_DESC

_G[CursorEnabledButton:GetName() .. "Text"]:SetText(L.OPTIONS.ENABLED)

local CursorPreviewWindow = CreateFrame("Frame", nil, CursorsPanel)
CursorPreviewWindow:SetPoint("TOPRIGHT", -16, -8)
CursorPreviewWindow:SetSize(96, 96)
CursorPreviewWindow:SetScript("OnMouseUp", CursorPreviewWindow.OnMouseUp)
CursorPreviewWindow:SetScript("OnEnter", NS.ControlOnEnter)
CursorPreviewWindow:SetScript("OnLeave", _G.GameTooltip_Hide)
CursorPreviewWindow:SetBackdrop({
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	edgeSize = 16
})

CursorPreviewWindow.Rate = math.pi
CursorPreviewWindow.tooltipText = L.OPTIONS.PREVIEW_DESC

local CursorPreviewBackdrop = CursorPreviewWindow:CreateTexture(nil, "BACKGROUND")
CursorPreviewBackdrop:SetPoint("TOPRIGHT", -4, -4)
CursorPreviewBackdrop:SetPoint("BOTTOMLEFT", 4, 4)
CursorPreviewBackdrop:SetTexture("textures\\ShaneCube.blp")
CursorPreviewBackdrop:SetGradient("VERTICAL", 0.5, 0.5, 0.5, 0.25, 0.25, 0.25)

local CursorPreviewWindowModel = CreateFrame("Model", nil, CursorPreviewWindow)
CursorPreviewWindowModel:SetAllPoints(CursorPreviewBackdrop)
CursorPreviewWindowModel:SetLight(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1) -- Allows trails like warriors' intervene to work

local PreviewCursor = CursorPreviewWindowModel:CreateTexture(nil, "OVERLAY")
PreviewCursor:SetSize(24, 24)
PreviewCursor:SetTexture("Interface\\Cursor\\Point.blp")
PreviewCursor:SetVertexColor(0.4, 0.4, 0.4)

local CursorXAxisSlider = CreateFrame("Slider", "_CursorOptionsX", CursorPreviewWindow, "OptionsSliderTemplate")
CursorXAxisSlider:SetPoint("LEFT", CursorPreviewWindow, "BOTTOMLEFT")
CursorXAxisSlider:SetPoint("RIGHT", CursorPreviewWindow)
CursorXAxisSlider:SetHeight(14)
CursorXAxisSlider:SetScale(0.8)
CursorXAxisSlider:SetMinMaxValues(-32, 32)
CursorXAxisSlider:SetScript("OnValueChanged", CursorXAxisSlider.OnValueChanged)
CursorXAxisSlider:SetScript("OnEnter", NS.ControlOnEnter)
CursorXAxisSlider:SetScript("OnLeave", _G.GameTooltip_Hide)
CursorXAxisSlider.tooltipText = L.OPTIONS["X_DESC"]

local CursorXAxisSliderTextLow = _G[CursorXAxisSlider:GetName() .. "Low"]
CursorXAxisSliderTextLow:SetText(-32)
CursorXAxisSliderTextLow:ClearAllPoints()
CursorXAxisSliderTextLow:SetPoint("LEFT")

local CursorXAxisSliderTextHigh = _G[CursorXAxisSlider:GetName() .. "High"]
CursorXAxisSliderTextHigh:SetText(32)
CursorXAxisSliderTextHigh:ClearAllPoints()
CursorXAxisSliderTextHigh:SetPoint("RIGHT")

local CursorYAxisSlider = CreateFrame("Slider", "_CursorOptionsY", CursorPreviewWindow, "OptionsSliderTemplate")
CursorYAxisSlider:SetOrientation("VERTICAL")
CursorYAxisSlider:SetPoint("TOP", CursorPreviewWindow, "TOPLEFT")
CursorYAxisSlider:SetPoint("BOTTOM", CursorPreviewWindow)
CursorYAxisSlider:SetWidth(10)
CursorYAxisSlider:SetScale(0.8)
CursorYAxisSlider:SetThumbTexture("Interface\\Buttons\\UI-SliderBar-Button-Vertical")
CursorYAxisSlider:SetMinMaxValues(-32, 32)
CursorYAxisSlider:SetScript("OnValueChanged", CursorYAxisSlider.OnValueChanged)
CursorYAxisSlider:SetScript("OnEnter", NS.ControlOnEnter)
CursorYAxisSlider:SetScript("OnLeave", _G.GameTooltip_Hide)
CursorYAxisSlider.tooltipText = L.OPTIONS["Y_DESC"]

local CursorYAxisSliderTextLow = _G[CursorYAxisSlider:GetName() .. "Low"]
CursorYAxisSliderTextLow:SetText(-32)
CursorYAxisSliderTextLow:ClearAllPoints()
CursorYAxisSliderTextLow:SetPoint("BOTTOM", 0, 6)

local CursorYAxisSliderTextHigh = _G[CursorYAxisSlider:GetName() .. "High"]
CursorYAxisSliderTextHigh:SetText(32)
CursorYAxisSliderTextHigh:ClearAllPoints()
CursorYAxisSliderTextHigh:SetPoint("TOP", 0, -2)

local CursorScaleSlider = CreateFrame("Slider", "_CursorOptionsScale", CursorPreviewWindow, "OptionsSliderTemplate")
CursorScaleSlider:SetPoint("LEFT", CursorYAxisSlider)
CursorScaleSlider:SetPoint("RIGHT", CursorPreviewWindow)
CursorScaleSlider:SetPoint("TOP", CursorXAxisSlider, "BOTTOM", 0, -8)
CursorScaleSlider:SetMinMaxValues(1 / 2, 4)
CursorScaleSlider:SetScript("OnValueChanged", CursorScaleSlider.OnValueChanged)
CursorScaleSlider:SetScript("OnEnter", NS.ControlOnEnter)
CursorScaleSlider:SetScript("OnLeave", _G.GameTooltip_Hide)
CursorScaleSlider.tooltipText = L.OPTIONS["SCALE_DESC"]

_G[CursorScaleSlider:GetName() .. "Low"]:SetText(0.5)
_G[CursorScaleSlider:GetName() .. "High"]:SetText(4)

local CursorScaleSliderText = _G[CursorScaleSlider:GetName() .. "Text"]
CursorScaleSliderText:SetText(L.OPTIONS.SCALE)
CursorScaleSliderText:SetPoint("BOTTOM", CursorScaleSlider, "TOP", 0, -2)

local CursorFacingSlider = CreateFrame("Slider", "_CursorOptionsFacing", CursorPreviewWindow, "OptionsSliderTemplate")
CursorFacingSlider:SetPoint("TOPLEFT", CursorScaleSlider, "BOTTOMLEFT", 0, -8)
CursorFacingSlider:SetPoint("RIGHT", CursorScaleSlider)
CursorFacingSlider:SetMinMaxValues(0, math.pi * 2)
CursorFacingSlider:SetScript("OnValueChanged", CursorFacingSlider.OnValueChanged)
CursorFacingSlider:SetScript("OnEnter", NS.ControlOnEnter)
CursorFacingSlider:SetScript("OnLeave", GameTooltip_Hide)
CursorFacingSlider.tooltipText = L.OPTIONS["FACING_DESC"]

_G[CursorFacingSlider:GetName() .. "Low"]:SetText(L.OPTIONS.FACING_LOW)
_G[CursorFacingSlider:GetName() .. "High"]:SetText(L.OPTIONS.FACING_HIGH)

local CursorFacingText = _G[CursorFacingSlider:GetName() .. "Text"]
CursorFacingText:SetText(L.OPTIONS.FACING)
CursorFacingText:SetPoint("BOTTOM", CursorFacingSlider, "TOP", 0, -2)

local CursorTypeDropDown = CreateFrame("Frame", "_CursorOptionsType", CursorsPanel, "UIDropDownMenuTemplate")
CursorTypeDropDown:SetPoint("LEFT", -6, 0)
CursorTypeDropDown:SetPoint("TOP", CursorEnabledButton, "BOTTOM", 0, -12)
CursorTypeDropDown:SetPoint("RIGHT", CursorYAxisSlider, "LEFT", -8, 0)
CursorTypeDropDown:SetScript("OnEnter", NS.ControlOnEnter)
CursorTypeDropDown:SetScript("OnLeave", _G.GameTooltip_Hide)

_G[CursorTypeDropDown:GetName() .. "Middle"]:SetPoint("RIGHT", -16, 0)
CursorTypeDropDown.tooltipText = L.OPTIONS.TYPE_DESC

UIDropDownMenu_JustifyText(CursorTypeDropDown, "LEFT")

local CursorTypeDropDownLabel = CursorTypeDropDown:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
CursorTypeDropDownLabel:SetPoint("BOTTOMLEFT", CursorTypeDropDown, "TOPLEFT", 16, -2)
CursorTypeDropDownLabel:SetText(L.OPTIONS.TYPE)

CursorTypeDropDown.Text = CursorTypeDropDownLabel

local CursorValueDropDown = CreateFrame("Frame", "_CursorOptionsValue", CursorsPanel, "UIDropDownMenuTemplate")
CursorValueDropDown:SetPoint("LEFT", CursorTypeDropDown)
CursorValueDropDown:SetPoint("RIGHT", CursorTypeDropDown)
CursorValueDropDown:SetPoint("BOTTOM", CursorPreviewWindow)
CursorValueDropDown:SetScript("OnEnter", NS.ControlOnEnter)
CursorValueDropDown:SetScript("OnLeave", _G.GameTooltip_Hide)

_G[CursorValueDropDown:GetName() .. "Middle"]:SetPoint("RIGHT", -16, 0)
CursorValueDropDown.tooltipText = L.OPTIONS.VALUE_DESC

UIDropDownMenu_JustifyText(CursorValueDropDown, "LEFT")

local CursorValueDropDownLabel = CursorValueDropDown:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
CursorValueDropDownLabel:SetPoint("BOTTOMLEFT", CursorValueDropDown, "TOPLEFT", 16, -2)
CursorValueDropDownLabel:SetText(L.OPTIONS.VALUE)

CursorValueDropDown.Text = CursorValueDropDownLabel

local CursorPathEditBox = CreateFrame("EditBox", "_CursorOptionsPath", CursorsPanel, "InputBoxTemplate")
CursorPathEditBox:SetPoint("BOTTOMLEFT", 16, 16)
CursorPathEditBox:SetPoint("RIGHT", CursorValueDropDown, -8, 0)
CursorPathEditBox:SetHeight(20)
CursorPathEditBox:SetAutoFocus(false)
CursorPathEditBox:SetScript("OnEnterPressed", CursorPathEditBox.OnEnterPressed)
CursorPathEditBox:SetScript("OnEscapePressed", CursorPathEditBox.OnEscapePressed)
CursorPathEditBox:SetScript("OnEnter", NS.ControlOnEnter)
CursorPathEditBox:SetScript("OnLeave", _G.GameTooltip_Hide)
CursorPathEditBox.tooltipText = L.OPTIONS["PATH_DESC"]

local CursorPathEditBoxLabel = CursorPathEditBox:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
CursorPathEditBoxLabel:SetPoint("BOTTOMLEFT", CursorPathEditBox, "TOPLEFT", -6, 0)
CursorPathEditBoxLabel:SetText(L.OPTIONS.PATH)

CursorPathEditBox.Text = CursorPathEditBoxLabel

local TabsUnused = {}
CursorsPanel.TabsUnused = TabsUnused

local TabsUsed = {}
CursorsPanel.TabsUsed = TabsUsed

local Preset = {}
NS.Preset = Preset

function SetsEditBox:OnEnterPressed()
	self:ClearFocus()
end

function SetsEditBox:OnTextChanged()
	local Name = self:GetText()
	SetsSaveButton[Name == "" and "Disable" or "Enable"](SetsSaveButton)

	if _CursorOptions.Sets[Name] then
		SetsLoadButton:Enable()
		SetsDeleteButton:Enable()
	else
		SetsLoadButton:Disable()
		SetsDeleteButton:Disable()
	end
end

do
	local SortedSetNames = {}

	function SetsEditBox:initialize()
		for setName in pairs(_CursorOptions.Sets) do
			SortedSetNames[#SortedSetNames + 1] = setName
		end
		table.sort(SortedSetNames)

		local info = UIDropDownMenu_CreateInfo()
		info.notCheckable = true

		for _, setName in ipairs(SortedSetNames) do
			info.text = setName
			info.arg1 = setName
			info.func = self.OnSelect
			UIDropDownMenu_AddButton(info)
		end

		table.wipe(SortedSetNames)
	end
end

function SetsEditBox:OnSelect(Name)
	SetsEditBox:OnEnterPressed()
	SetsEditBox:SetText(Name)
end

function SetsEditBoxButton:OnClick()
	local parent = self:GetParent()
	parent:ClearFocus()
	ToggleDropDownMenu(nil, nil, parent, parent:GetName(), 0, 0)
	PlaySound("igMainMenuOptionCheckBoxOn")
end

function SetsEditBoxButton:OnHide()
	CloseDropDownMenus()
end

function SetsSaveButton:OnClick()
	local setName = SetsEditBox:GetText()
	local newSet = _CursorOptions.Sets[setName] or {}
	_Cursor.SaveSet(newSet)
	_CursorOptions.Sets[setName] = newSet
	SetsEditBox:ClearFocus()
	SetsEditBox:OnTextChanged()
end

function SetsLoadButton:OnClick()
	_Cursor.LoadSet(_CursorOptions.Sets[SetsEditBox:GetText()])
	SetsEditBox:ClearFocus()
end

function SetsDeleteButton:OnClick()
	_CursorOptions.Sets[SetsEditBox:GetText()] = nil
	SetsEditBox:SetText("")
	SetsEditBox:ClearFocus()
end

--[[****************************************************************************
  * Description: Gets an unused tab frame.                                     *
  ****************************************************************************]]
do
	local tabID = 0 -- Only used to create unique names

	function CursorsPanel.GetTab()
		local tab = next(TabsUnused)
		if not tab then
			tabID = tabID + 1
			tab = CreateFrame("Button", "_CursorOptionsTab" .. tabID, CursorsPanel, "OptionsFrameTabButtonTemplate")
			tab:Hide()
			tab:SetScript("OnClick", CursorsPanel.SetTab)
			PanelTemplates_DeselectTab(tab)
		end

		TabsUnused[tab] = true
		return tab
	end
end

--[[****************************************************************************
  * Description: Ties a tab to a settings table.                               *
  ****************************************************************************]]
function CursorsPanel:TabEnable(Cursor)
	if TabsUsed[self] then
		CursorsPanel.TabDisable(self)
	end

	TabsUnused[self] = nil
	TabsUsed[self] = Cursor

	self:SetText(Cursor.Name)
	self:Show()
end

--[[****************************************************************************
  * Description: Frees up a tab.                                               *
  ****************************************************************************]]
function CursorsPanel:TabDisable()
	if TabsUsed[self] then
		TabsUsed[self] = nil
		TabsUnused[self] = true

		self:Hide()
	end
end

--[[****************************************************************************
  * Description: Highlights the tab and fills in the data.                     *
  ****************************************************************************]]
function CursorsPanel:SetTab()
	if CursorsPanel.Selected then
		PanelTemplates_DeselectTab(CursorsPanel.Selected)
	end
	CursorsPanel.Selected = self

	if self then
		PanelTemplates_SelectTab(self)
		local Cursor = TabsUsed[self]

		CursorsPanel[Cursor.Enabled and "EnableControls" or "DisableControls"]()

		BlizzardOptionsPanel_CheckButton_Enable(CursorEnabledButton)
		CursorEnabledButton:SetChecked(Cursor.Enabled)

		CursorsPanel.UpdatePreset(Cursor)
		CursorXAxisSlider:SetValue(Cursor.X or 0)
		CursorYAxisSlider:SetValue(Cursor.Y and -Cursor.Y or 0) -- Backwards
		CursorScaleSlider:SetValue(Cursor.Scale or 1.0)
		CursorFacingSlider:SetValue(Cursor.Facing or 0)

		PreviewCursor:Show()
		CursorPreviewWindow:SetScript("OnUpdate", CursorPreviewWindow.OnUpdate)
		CursorPreviewWindow.Update()
	else -- Clear and disable everything
	CursorsPanel.DisableControls()
	CursorsPanel.UpdatePreset(nil)

	BlizzardOptionsPanel_CheckButton_Disable(CursorEnabledButton)
	CursorEnabledButton:SetChecked(false)

	PreviewCursor:Hide()
	CursorPreviewWindow:SetScript("OnUpdate", nil)
	CursorPreviewWindow.Model:ClearModel()
	end
end

--[[****************************************************************************
  * Description: Enables the model controls, and caches preset data.           *
  ****************************************************************************]]
do
	local function EnableSlider(self)
		BlizzardOptionsPanel_Slider_Enable(self)
		self:EnableMouse(true)
	end

	function CursorsPanel.EnableControls()
		CursorPreviewWindow:EnableMouse(true)
		CursorPreviewBackdrop:SetDesaturated(false)
		EnableSlider(CursorXAxisSlider)
		EnableSlider(CursorYAxisSlider)
		EnableSlider(CursorScaleSlider)
		EnableSlider(CursorFacingSlider)
	end
end

--[[****************************************************************************
  * Description: Disables the model controls.                                  *
  ****************************************************************************]]
do
	local function DisableSlider(self)
		BlizzardOptionsPanel_Slider_Disable(self)
		self:EnableMouse(false)
	end

	function CursorsPanel.DisableControls()
		CursorPreviewWindow:EnableMouse(false)
		CursorPreviewBackdrop:SetDesaturated(true)
		DisableSlider(CursorXAxisSlider)
		DisableSlider(CursorYAxisSlider)
		DisableSlider(CursorScaleSlider)
		DisableSlider(CursorFacingSlider)
	end
end

--[[****************************************************************************
  * Description: Manages the preset type, value, and path controls.            *
  ****************************************************************************]]
do
	local function EnablePath()
		CursorPathEditBox:EnableMouse(true)

		local color = _G.HIGHLIGHT_FONT_COLOR
		CursorPathEditBox:SetTextColor(color.r, color.g, color.b)

		color = _G.NORMAL_FONT_COLOR
		CursorPathEditBox.Text:SetTextColor(color.r, color.g, color.b)
	end

	local function DisablePath()
		CursorPathEditBox:EnableMouse(false)
		CursorPathEditBox:ClearFocus()

		local color = _G.GRAY_FONT_COLOR
		CursorPathEditBox:SetTextColor(color.r, color.g, color.b)
		CursorPathEditBox.Text:SetTextColor(color.r, color.g, color.b)
	end

	local function EnableDropDown(self)
		self:EnableMouse(true)

		UIDropDownMenu_EnableDropDown(self)

		local color = _G.NORMAL_FONT_COLOR
		self.Text:SetTextColor(color.r, color.g, color.b)
	end

	local function DisableDropDown(self)
		self:EnableMouse(false)

		UIDropDownMenu_DisableDropDown(self)

		local color = _G.GRAY_FONT_COLOR
		self.Text:SetTextColor(color.r, color.g, color.b)
	end

	function CursorsPanel.UpdatePreset(cursor)
		CloseDropDownMenus() -- Close dropdown if open

		-- Sync controls
		if cursor then
			UIDropDownMenu_SetText(CursorTypeDropDown, cursor.Type == "" and L.TYPE_CUSTOM or L.TYPES[cursor.Type])

			if #cursor.Type == 0 then -- Custom
				UIDropDownMenu_SetText(CursorValueDropDown, "")
				CursorPathEditBox:SetText(cursor.Value)
			else
				UIDropDownMenu_SetText(CursorValueDropDown, L.VALUES[cursor.Value])

				Preset.Path, Preset.Scale, Preset.Facing, Preset.X, Preset.Y = ("|"):split(_Cursor.Presets[cursor.Type][cursor.Value])
				Preset.Scale = tonumber(Preset.Scale) or 1.0
				Preset.Facing = tonumber(Preset.Facing) or 0
				Preset.X = tonumber(Preset.X) or 0
				Preset.Y = tonumber(Preset.Y) or 0
				CursorPathEditBox:SetText(Preset.Path)
			end

			CursorPreviewWindow.Update()
		else
			UIDropDownMenu_SetText(CursorTypeDropDown, "")
			UIDropDownMenu_SetText(CursorValueDropDown, "")
			CursorPathEditBox:SetText("")
		end

		-- Disable/enable controls
		if cursor and cursor.Enabled then
			EnableDropDown(CursorTypeDropDown)

			if #cursor.Type == 0 then -- Custom
				EnablePath()
				DisableDropDown(CursorValueDropDown)
			else
				DisablePath()
				EnableDropDown(CursorValueDropDown)
			end
		else
			DisableDropDown(CursorTypeDropDown)
			DisableDropDown(CursorValueDropDown)
			DisablePath()
		end
	end
end

--[[****************************************************************************
  * Description: Shows the control's tooltip.                                  *
  ****************************************************************************]]
function NS:ControlOnEnter()
	GameTooltip:ClearAllPoints()
	GameTooltip:SetPoint("TOPLEFT", self, "BOTTOMLEFT")
	GameTooltip:SetOwner(self, "ANCHOR_PRESERVE")
	GameTooltip:SetText(self.tooltipText, nil, nil, nil, nil, 1)
end

--[[****************************************************************************
  * Description: Toggles whether the model is enabled or not.                  *
  ****************************************************************************]]
function CursorEnabledButton:OnClick()
	local Checked = not not self:GetChecked()
	local Cursor = TabsUsed[CursorsPanel.Selected]

	Cursor.Enabled = Checked
	CursorsPanel[Checked and "EnableControls" or "DisableControls"]()
	CursorsPanel.UpdatePreset(Cursor)

	PlaySound(Checked and "igMainMenuOptionCheckBoxOn" or "igMainMenuOptionCheckBoxOff")
end

--[[****************************************************************************
  * Description: Cycles animation speeds for the model preview.                *
  ****************************************************************************]]
function CursorPreviewWindow:OnMouseUp()
	self.Rate = (self.Rate + math.pi) % (math.pi * 3)
	PlaySound("igMainMenuOption")
end

--[[****************************************************************************
  * Description: Animates the preview model and maintains its scale.           *
  ****************************************************************************]]
do
	local Hypotenuse = (GetScreenWidth() ^ 2 + GetScreenHeight() ^ 2) ^ 0.5 * UIParent:GetEffectiveScale()
	local Step = 0
	local Dimension, MaxPosition, X, Y
	local Scale, Facing, Path, CurrentModel

	function CursorPreviewWindow:OnUpdate(Elapsed)
		if self.ShouldUpdate then
			self.ShouldUpdate = false

			local cursor = TabsUsed[CursorsPanel.Selected]
			CursorPreviewWindowModel.X = cursor.X or 0
			CursorPreviewWindowModel.Y = cursor.Y or 0
			Scale = (cursor.Scale or 1.0) * _Cursor.ScaleDefault
			Facing = cursor.Facing or 0

			if #cursor.Type == 0 then -- Custom
				Path = cursor.Value
			else
				Path = Preset.Path
				CursorPreviewWindowModel.X = CursorPreviewWindowModel.X + Preset.X
				CursorPreviewWindowModel.Y = CursorPreviewWindowModel.Y + Preset.Y
				Scale = Scale * Preset.Scale
				Facing = Facing + Preset.Facing
			end

			CurrentModel = CursorPreviewWindowModel:GetModel()

			if type(CurrentModel) ~= "string" or Path:lower() ~= CurrentModel:sub(1, -4):lower() then -- Compare without *.m2 extension
				CursorPreviewWindowModel:SetModel(Path .. ".mdx")
			end
			CursorPreviewWindowModel:SetModelScale(Scale)
			CursorPreviewWindowModel:SetFacing(Facing)
		end

		Step = Step + Elapsed * self.Rate
		CursorPreviewWindowModel:SetScale(1 / self:GetEffectiveScale())

		Dimension = CursorPreviewWindowModel:GetRight() - CursorPreviewWindowModel:GetLeft()
		MaxPosition = Dimension / Hypotenuse

		X = 0.1 + 0.6 * (math.cos(Step / 2) + 1) / 2
		Y = 0.3 + 0.6 * (math.sin(Step) + 1) / 2

		CursorPreviewWindowModel:SetPosition((X + CursorPreviewWindowModel.X / Dimension) * MaxPosition, (Y + CursorPreviewWindowModel.Y / Dimension) * MaxPosition, 0)
		PreviewCursor:SetPoint("TOPLEFT", CursorPreviewWindowModel, "BOTTOMLEFT", Dimension * X, Dimension * Y)
	end
end

--[[****************************************************************************
  * Description: Requests a refresh of the model preview window.               *
  ****************************************************************************]]
function CursorPreviewWindow.Update()
	CursorPreviewWindow.ShouldUpdate = true
end

function CursorXAxisSlider:OnValueChanged(Value)
	TabsUsed[CursorsPanel.Selected].X = math.abs(Value) - 0.5 > 0 and Value or nil
	CursorPreviewWindow.Update()
end

function CursorYAxisSlider:OnValueChanged(Value)
	TabsUsed[CursorsPanel.Selected].Y = math.abs(Value) - 0.5 > 0 and -Value or nil
	CursorPreviewWindow.Update()
end

function CursorScaleSlider:OnValueChanged(Value)
	TabsUsed[CursorsPanel.Selected].Scale = math.abs(Value - 1.0) - 0.1 > 0 and Value or nil
	CursorPreviewWindow.Update()
end

function CursorFacingSlider:OnValueChanged(Value)
	TabsUsed[CursorsPanel.Selected].Facing = math.abs(Value % (math.pi * 2)) - 0.1 > 0 and Value or nil
	CursorPreviewWindow.Update()
end

--[[****************************************************************************
  * Description: Builds the type dropdown menu.                                *
  ****************************************************************************]]
do
	local Sorted = {}
	local function SortFunc(Name1, Name2)
		return L.TYPES[Name1] < L.TYPES[Name2]
	end

	function CursorTypeDropDown:initialize()
		local Selected = TabsUsed[CursorsPanel.Selected].Type

		for Name in pairs(_Cursor.Presets) do
			Sorted[#Sorted + 1] = Name
		end
		table.sort(Sorted, SortFunc)

		local info = UIDropDownMenu_CreateInfo()
		for _, Name in ipairs(Sorted) do
			info.text = L.TYPES[Name]
			info.arg1 = Name
			info.func = self.OnSelect
			info.checked = Name == Selected
			UIDropDownMenu_AddButton(info)
		end

		-- Spacer
		info = UIDropDownMenu_CreateInfo()
		info.disabled = true
		info.notCheckable = true

		UIDropDownMenu_AddButton(info)

		-- Custom
		info.disabled = nil
		info.notCheckable = nil
		info.text = L.TYPE_CUSTOM
		info.arg1 = ""
		info.func = self.OnSelect
		info.checked = #Selected == 0

		UIDropDownMenu_AddButton(info)

		table.wipe(Sorted)
	end
end

function CursorTypeDropDown:OnSelect(Type)
	local Cursor = TabsUsed[CursorsPanel.Selected]

	if Type ~= Cursor.Type then
		Cursor.Type = Type

		if #Type == 0 then -- Custom
			Cursor.Value = Preset.Path -- Use last preset
		else -- Select first value
			Cursor.Value = nil

			for Value in pairs(_Cursor.Presets[Cursor.Type]) do
				if not Cursor.Value or Value < Cursor.Value then
					Cursor.Value = Value
				end
			end
		end

		CursorsPanel.UpdatePreset(Cursor)
	end
end

--[[****************************************************************************
  * Description: Builds the value dropdown menu.                               *
  ****************************************************************************]]
do
	local Sorted = {}

	local function SortFunc(Name1, Name2)
		return L.VALUES[Name1] < L.VALUES[Name2]
	end

	function CursorValueDropDown:initialize()
		local Cursor = TabsUsed[CursorsPanel.Selected]
		local Selected = Cursor.Value
		local Values = _Cursor.Presets[Cursor.Type]

		for Name in pairs(Values) do
			Sorted[#Sorted + 1] = Name
		end
		table.sort(Sorted, SortFunc)

		local Info = UIDropDownMenu_CreateInfo()

		for _, Name in ipairs(Sorted) do
			Info.text = L.VALUES[Name]
			Info.arg1 = Name
			Info.func = self.OnSelect
			Info.checked = Name == Selected

			UIDropDownMenu_AddButton(Info)
		end

		table.wipe(Sorted)
	end
end

function CursorValueDropDown:OnSelect(Value)
	local Cursor = TabsUsed[CursorsPanel.Selected]

	if Value ~= Cursor.Value then
		Cursor.Value = Value
		CursorsPanel.UpdatePreset(Cursor)
	end
end

--[[****************************************************************************
  * Description: Saves custom path value.                                      *
  ****************************************************************************]]
function CursorPathEditBox:OnEnterPressed()
	local Cursor = TabsUsed[CursorsPanel.Selected]

	-- Remove pipes (they'd break the packed data format), and normalize slashes
	local Value = self:GetText():gsub("|", ""):gsub("[/\\]+", "\\")
	local Extension = Value:match("%.[^.]+$")

	if Extension then
		Extension = Extension:upper()

		if Extension == ".M2" or Extension == ".MDX" then
			Value = Value:sub(1, -#Extension - 1) -- Remove extension
			self:SetText(Value)
		end
	end

	Cursor.Value = Value
	self:ClearFocus()
	CursorsPanel.UpdatePreset(Cursor)
end

--[[****************************************************************************
  * Description: Cancels custom path value.                                    *
  ****************************************************************************]]
function CursorPathEditBox:OnEscapePressed()
	self:SetText(TabsUsed[CursorsPanel.Selected].Value)
	self:ClearFocus()
end

--[[****************************************************************************
  * Description: Reloads cursor settings and all sets.                         *
  ****************************************************************************]]
function NS.ResetAll()
	_CursorOptions.Sets = CopyTable(_Cursor.DefaultSets)
	NS.ResetCharacter()
end

--[[****************************************************************************
  * Description: Reloads cursor settings.                                      *
  ****************************************************************************]]
function NS.ResetCharacter()
	_Cursor.LoadSet(_Cursor.DefaultSets[_Cursor.DefaultModelSet])
end

--[[****************************************************************************
  * Description: Prompts the user to reset settings to default.                *
  ****************************************************************************]]
function NS:default()
	StaticPopup_Show("_CURSOR_RESET_CONFIRM")
end

--[[****************************************************************************
  * Description: Updates the actual cursor models when settings are closed.    *
  ****************************************************************************]]
function NS:OnHide()
	_Cursor:UpdateModels()
end

--[[****************************************************************************
  * Description: Updates the actual cursor models when Apply is pressed.       *
  ****************************************************************************]]
function NS.OnApply()
	_Cursor:UpdateModels()
end

--[[****************************************************************************
  * Description: Full update that syncronizes tabs to actual saved settings.   *
  ****************************************************************************]]
function NS.Update()
	for Tab in pairs(TabsUsed) do
		CursorsPanel.TabDisable(Tab)
	end

	local LastTab

	for _, Cursor in ipairs(_CursorOptionsCharacter.Cursors) do
		local Tab = CursorsPanel.GetTab(Cursor)

		CursorsPanel.TabEnable(Tab, Cursor)

		if LastTab then
			Tab:SetPoint("BOTTOMLEFT", LastTab, "BOTTOMRIGHT", -16, 0)
		else
			Tab:SetPoint("BOTTOMLEFT", CursorsPanel, "TOPLEFT", 6, -2)
			CursorsPanel.SetTab(Tab)
		end

		LastTab = Tab
	end

	if not LastTab then -- Has no models
		CursorsPanel.SetTab(nil)
	end
end

--[[****************************************************************************
  * Description: Slash command chat handler to open the options pane.          *
  ****************************************************************************]]
function NS.SlashCommand()
	InterfaceOptionsFrame_OpenToCategory(NS)
end

StaticPopupDialogs["_CURSOR_RESET_CONFIRM"] = {
	text = L.RESET_CONFIRM,
	button1 = L.RESET_ALL,
	button3 = L.RESET_CHARACTER,
	button2 = L.RESET_CANCEL,
	OnAccept = NS.ResetAll,
	OnAlt = NS.ResetCharacter,
	timeout = 0,
	exclusive = 1,
	hideOnEscape = 1,
	whileDead = 1,
}

SlashCmdList["_CURSOR_OPTIONS"] = NS.SlashCommand
