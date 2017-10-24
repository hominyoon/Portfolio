local E, L, V, P, G, _ = unpack(select(2, ...)); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore
local UF = E:GetModule('UnitFrames');

local _, ns = ...
local ElvUF = ns.oUF
assert(ElvUF, "ElvUI was unable to locate oUF.")

local function UpdateMagePowerTick(self, event, unit)
--	if unit ~= 'player' then return; end
--	if event == 'ACTIVE_TALENT_GROUP_CHANGED' or event == 'first' then
		if GetSpecialization() ~= 1 then
			self.tick1:Hide()
			self.tick2:Hide()
			self.tick3:Hide()
		else
			self.tick1:Show()
			self.tick2:Show()
			self.tick3:Show()
		end
	--	return;
--	end
	
--	local changeSpellName1 = GetSpellInfo(80353)
--	local changeSpellName2 = GetSpellInfo(2825)
--	local changeSpellName3 = GetSpellInfo(32182)
--	local changeSpellName4 = GetSpellInfo(146555)
--	if UnitBuff('player', changeSpellName1) or UnitBuff('player', changeSpellName2) or UnitBuff('player', changeSpellName3) or UnitBuff('player', changeSpellName4) then
--		self.tick1:Hide()
--		self.tick3:Show()
--	else
--		self.tick1:Show()
--		self.tick3:Hide()
--	end
end

function UF:Construct_PowerBar(frame, bg, text, textPos, orientation)
	local power
	if E.db.unitframe.transparent and E.db.unitframe.powertrans and E.db.general.transparentStyle == 2 then
		power = E:TranseBar(frame, orientation)
	else
		power = CreateFrame('StatusBar', nil, frame)
	end
	UF['statusbars'][power] = true

	power:SetFrameStrata("LOW")
	power.PostUpdate = self.PostUpdatePower
	
	if bg then
		if E.db.unitframe.transparent and E.db.unitframe.powertrans and E.db.general.transparentStyle == 2 then
			local pbg = CreateFrame("Frame", nil, power)
			pbg:SetFrameLevel(power:GetFrameLevel()-2)
			pbg:SetAllPoints(power)
			pbg:SetAlpha(0)
			local b = pbg:CreateTexture(nil, "BACKGROUND")
			b:SetTexture(E["media"].normTex)
			b:SetAllPoints(power)
			power.bg = b
			power.pbg = pbg
		else
			power.bg = power:CreateTexture(nil, 'BORDER')
			power.bg:SetAllPoints()
			power.bg:SetTexture(E["media"].blankTex)
			if E.db.unitframe.transparent then
				power.bg:SetAlpha(E.db.general.backdropfadecolor.a or 0.4)				
			end
		end
		power.bg.multiplier = 0.2
	end
	
	if text then
		power.value = frame.RaisedElementParent:CreateFontString(nil, 'OVERLAY')	
		UF:Configure_FontString(power.value)
		power.value:SetParent(frame)
		
		local x = -2
		if textPos == 'LEFT' then
			x = 2
		end
		
		power.value:Point(textPos, frame.Health, textPos, x, 0)
	end
	
	if E.myclass == 'MAGE' then
		local tick1 = power:CreateTexture(nil, 'OVERLAY')
		tick1:SetBlendMode('ADD')
		tick1:SetTexture[[Interface\CastingBar\UI-CastingBar-Spark]]
		tick1:SetVertexColor(1, 1, 1)
		tick1:SetWidth(10)
		
		local tick2 = power:CreateTexture(nil, 'OVERLAY')
		tick2:SetBlendMode('ADD')
		tick2:SetTexture[[Interface\CastingBar\UI-CastingBar-Spark]]
		tick2:SetVertexColor(1, 1, 1)
		tick2:SetWidth(10)
		
		local tick3 = power:CreateTexture(nil, 'OVERLAY')
		tick3:SetTexture[[Interface\CastingBar\UI-CastingBar-Spark]]
		tick3:SetBlendMode('ADD')
		tick3:SetVertexColor(1, 1, 1)
		tick3:SetWidth(10)
		
		power.tick1 = tick1
		power.tick2 = tick2
		power.tick3 = tick3
		
	--	power:RegisterUnitEvent("UNIT_AURA", "player")
		power:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
		power:SetScript("OnEvent", UpdateMagePowerTick)
	end
		
	power.colorDisconnected = false
	power.colorTapping = false
	power:CreateBackdrop('Default')

	return power
end	

local tokens = { [0] = "MANA", "RAGE", "FOCUS", "ENERGY", "RUNIC_POWER" }

function UF:PostUpdatePower(unit, min, max)
	local pType, _, altR, altG, altB = UnitPowerType(unit)
	local parent = self:GetParent()
		
	if parent.isForced then
		min = random(1, max)
		pType = random(0, 4)
		self:SetValue(min)
		local color = ElvUF['colors'].power[tokens[pType]]
		
		if not self.colorClass then
			self:SetStatusBarColor(color[1], color[2], color[3])
			local mu = self.bg.multiplier or 1
			self.bg:SetVertexColor(color[1] * mu, color[2] * mu, color[3] * mu)
		end
	end	
	
	local db = parent.db	
	if db and db.power and db.power.hideonnpc then
		UF:PostNamePosition(parent, unit)
	end
	
	if E.myclass == 'MAGE' and unit == 'player' then
		UpdateMagePowerTick(self, 'first', unit)
		self:SetMinMaxValues(max*E.db.unitframe.units.player.power.minperc, max)
	end
end

