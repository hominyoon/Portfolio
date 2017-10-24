--Title: GnomeSequencer
--Author: Semlar
--from http://bbs.ngacn.cc/read.php?tid=7454965&_ff=7&_fp=2
--2015.01.27
local E = unpack(ElvUI)
local Sequences = {}
local strlower,strjoin = string.lower,strjoin --eui.cc
if not E.db.Sequences.enable then return; end
----
-- Here's a large demonstration sequence documenting the format:
-- Sequences["GnomeExample1"] = {
	-- -- StepFunction optionally defines how the step is incremented when pressing the button.
	-- -- This example increments the step in the following order: 1 12 123 1234 etc. until it reaches the end and starts over
	-- -- DO NOT DEFINE A STEP FUNCTION UNLESS YOU THINK YOU KNOW WHAT YOU'RE DOING
	-- StepFunction = [[
		-- limit = limit or 1
		-- if step == limit then
			-- limit = limit % #macros + 1
			-- step = 1
		-- else
			-- step = step % #macros + 1
		-- end
	-- ]],
	
	-- -- PreMacro is optional macro text that you want executed before every single button press.
	-- -- This is if you want to add something like /startattack or /stopcasting before all of the macros in the sequence.
	-- PreMacro = [[
-- /run print("-- PreMacro Script --")
-- /startattack	
	-- ]],
	
	-- -- PostMacro is optional macro text that you want executed after every single button press.
	-- -- I don't know what you would need this for, but it's here anyway.
	-- PostMacro = [[
-- /run print("-- PostMacro Script --")
	-- ]],
	
	-- -- Macro 1
	-- [[
-- /run print("Executing macro 1!")
-- /cast SpellName1
	-- ]],
	
	-- -- Macro 2
	-- [[
-- /run print("Executing macro 2!")
-- /cast SpellName2
	-- ]],
	
	-- -- Macro 3
	-- [[
-- /run print("Executing macro 3!")
-- /cast SpellName3
	-- ]],
	
	
-- }

-- ----
-- -- Here is a short example which is what most sequences will look like
-- Sequences["GnomeExample2"] = {	
	-- -- Macro 1
	-- [[
-- /run print("Executing macro 1!")
-- /cast SpellName1
	-- ]],
	
	-- -- Macro 2
	-- [[
-- /run print("Executing macro 2!")
-- /cast SpellName2
	-- ]],
	
	-- -- Macro 3
	-- [[
-- /run print("Executing macro 3!")
-- /cast SpellName3
	-- ]],
-- }

----------------------------------------------------------------성기사----------------------------------------------------------------
Sequences["징기기사"] = {   
	'/cast 퇴마술',
	'/cast [mod:alt]정의의 망치;성전사의 일격',
	'/cast [mod:alt]천상의 폭풍;기사단 판결',
	'/cast 천벌의 망치',
	'/cast [mod:alt]천상의 폭풍;기사단 판결',

} 

----------------------------------------------------------------주술사----------------------------------------------------------------
Sequences["빈공간"] = { 
[[
/castsequence reset=12/combat xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx
]],  
	'/cast xxx',
	'/cast xxx',
	'/cast xxx',
	'/cast xxx',
	'/cast xxx',

}
----------------------------------------------------------------전사----------------------------------------------------------------
Sequences["빈공간"] = {  
	'/cast xxx',
	'/cast xxx',
	'/cast xxx',
	'/cast xxx',
	'/cast xxx',
	'/cast xxx击',
	'/cast xxx',
	'/cast xxx',
}

 ----------------------------------------------------------------드루이드----------------------------------------------------------------
 Sequences["빈공간"] = {   

   '/cast xxx',
   '/cast xxx',
   '/cast [mod:alt]xxx;xxx', 
   '/cast xxx',
   
   -- Macro 2 
   [[ 
/castsequence reset=3/combat xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx
   ]], 

 }
 
Sequences["급속 성장"] = {  
	'/cast [target=mouseover, exists] [exists] [target=player] 급속 성장',
}
Sequences["재생"] = {  
	'/cast [target=mouseover, exists] [exists] [target=player] 재생',
}
Sequences["자연의 치유력"] = {  
	'/cast [target=mouseover, exists] [exists] [target=player] 자연의 치유력',
}
Sequences["회복"] = {  
	'/cast [target=mouseover, exists] [exists] [target=player] 회복 ',
}
 
----------------------------------------------------------------사제----------------------------------------------------------------
 Sequences["암흑사제"] = {  
	'/cast [nochanneling:어둠의 권능:고통,stance:1]어둠의 권능:죽음',
	'/cast [nochanneling:어둠의 권능:고통,stance:1]정신 분열',
	'/cast [nochanneling:어둠의 권능:고통,stance:1]파멸의 역병',
	'/cast [nochanneling:어둠의 권능:고통,stance:1]정신 불태우기',
	'/cast [nochanneling,stance:1]정신의 채찍',
 }
 
 ----------------------------------------------------------------도적----------------------------------------------------------------
 Sequences["빈공간"] = {   
	'/cast [nostealth]xxx',
	'/cast [stealth]xxx',
	'/cast [nostealth]xxx',

   [[ 
/castsequence reset=5/combat [nostealth]xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx,xxx
   ]], 
 }

 ----------------------------------------------------------------법사----------------------------------------------------------------
Sequences["빈공간"] = {   
-- Macro 1 
[[
/castsequence [nochanneling] reset=5/combat xxx,xxx,xxx,xxx,xxx
/cast xxx
/cast xxx
   ]],
}
 ----------------------------------------------------------------죽음의 기사----------------------------------------------------------------
Sequences["빈공간"] = {  
	'/cast xxx',  
	'/cast xxx',
}
    ----------------------------------------------------------------수도사----------------------------------------------------------------
Sequences["빈공간"] = {   
	'/cast xxx',  
	'/cast xxx',
 }

--core.lua

local CastCmds = { use = true, cast = true, spell = true }
local function UpdateIcon(self)
	local step = self:GetAttribute('step') or 1
	local button = self:GetName()
	local macro, foundSpell, notSpell = Sequences[button][step], false, ''
	for cmd, etc in gmatch(macro or '', '/(%w+)%s+([^\n]+)') do
		if CastCmds[strlower(cmd)] then
			local spell, target = SecureCmdOptionParse(etc)
			if spell then
				if GetSpellInfo(spell) then
					SetMacroSpell(button, spell, target)
					foundSpell = true
					break
				elseif notSpell == '' then
					notSpell = spell
				end
			end
		end
	end
	if not foundSpell then SetMacroItem(button, notSpell) end
end

local OnClick = [=[
	local step = self:GetAttribute('step')
	self:SetAttribute('macrotext', self:GetAttribute('PreMacro') .. macros[step] .. self:GetAttribute('PostMacro'))
	%s
	if not step or not macros[step] then -- User attempted to write a step method that doesn't work, reset to 1
		print('|cffff0000Invalid step assigned by custom step sequence', self:GetName(), step or 'nil')
		step = 1
	end
	self:SetAttribute('step', step)
	self:CallMethod('UpdateIcon')
]=]

for name, sequence in pairs(Sequences) do
	local button = CreateFrame('Button', name, nil, 'SecureActionButtonTemplate,SecureHandlerBaseTemplate')
	button:SetAttribute('type', 'macro')
	button:Execute('name, macros = self:GetName(), newtable([=======[' .. strjoin(']=======],[=======[', unpack(sequence)) .. ']=======])')
	button:SetAttribute('step', 1)
	button:SetAttribute('PreMacro', (sequence.PreMacro or '') .. '\n')
	button:SetAttribute('PostMacro', '\n' .. (sequence.PostMacro or ''))
	button:WrapScript(button, 'OnClick', format(OnClick, sequence.StepFunction or 'step = step % #macros + 1'))
	button.UpdateIcon = UpdateIcon
end

local ModifiedMacros = {} -- [macroName] = true if we've already modified this macro

local IgnoreMacroUpdates = false
local f = CreateFrame('Frame')
f:SetScript('OnEvent', function(self, event)
	if (event == 'UPDATE_MACROS' or event == 'PLAYER_LOGIN') and not IgnoreMacroUpdates then
		if not InCombatLockdown() then
			IgnoreMacroUpdates = true
			--self:UnregisterEvent('UPDATE_MACROS')
			for name, sequence in pairs(Sequences) do
				local macroIndex = GetMacroIndexByName(name)
				if macroIndex and macroIndex ~= 0 then
					if not ModifiedMacros[name] then
						ModifiedMacros[name] = true
						EditMacro(macroIndex, nil, nil, '#showtooltip\n/click ' .. name)
					end
					_G[name]:UpdateIcon()
				elseif ModifiedMacros[name] then
					ModifiedMacros[name] = nil
				end
			end
			IgnoreMacroUpdates = false
			--self:RegisterEvent('UPDATE_MACROS')
			E.SequencesmacroList = Sequences
		else
			self:RegisterEvent('PLAYER_REGEN_ENABLED')
		end
	elseif event == 'PLAYER_REGEN_ENABLED' then
		self:UnregisterEvent('PLAYER_REGEN_ENABLED')
		self:GetScript('OnEvent')(self, 'UPDATE_MACROS')
	end
end)
f:RegisterEvent('UPDATE_MACROS')
f:RegisterEvent('PLAYER_LOGIN')