-- Version: 1.0
-- Author: Warmexx [Neighbours]

local E, _, V, P, G, _ = unpack(select(2, ...)); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore
local B = E:GetModule('Bags');

local U = {};
local L = {};

local function SetFilter(self)
    local f = B:GetContainerFrame(self.isBank);
    if not (f and f.FilterHolder) then return; end

    for i = 1, U.numFilters do
        if i ~= self:GetID() then
            f.FilterHolder[i]:SetChecked(nil);
        end
    end
    f.FilterHolder.active = self:GetID();

	if self.class == 0 then
		f.editBox:SetText(SEARCH)
		B:SearchReset();
	elseif self.class == 100 then
		f.editBox:SetText('c:garrison');
	else
		f.editBox:SetText('c:'..self.class);
	end
end

local function ResetFilter(self)
    local f = B:GetContainerFrame(self.isBank);
    if not (f and f.FilterHolder) then return; end

    if f.FilterHolder.active then
        f.FilterHolder[f.FilterHolder.active]:SetChecked(nil);
        f.FilterHolder.active = nil;
        
        f.editBox:SetText(SEARCH)
		B:SearchReset();
    end
end
    
local function AddFilterButtons(f, isBank)
	local buttonSize = isBank and B.db.bankSize * 0.8 or B.db.bagSize * 0.8;
	local buttonSpacing = E.PixelMode and 2 or 4;
    local lastContainerButton;
    
    for i, filter in ipairs(U.Filters) do
        if not f.FilterHolder[i] then
            local name, icon, itemid = unpack(filter);

            f.FilterHolder[i] = CreateFrame('CheckButton', nil, f.FilterHolder, 'ItemButtonTemplate');
            f.FilterHolder[i]:SetTemplate('Default', true);
            f.FilterHolder[i]:StyleButton();
            f.FilterHolder[i]:SetNormalTexture('');
            f.FilterHolder[i]:SetPushedTexture('');
            f.FilterHolder[i].ttText = name;
        --    f.FilterHolder[i].filter = func;
            f.FilterHolder[i].isBank = isBank;
			f.FilterHolder[i].class = itemid;
            f.FilterHolder[i]:SetScript('OnEnter', B.Tooltip_Show);
            f.FilterHolder[i]:SetScript('OnLeave', B.Tooltip_Hide);
            f.FilterHolder[i]:SetScript('OnClick', SetFilter);
            f.FilterHolder[i]:SetScript('OnHide', ResetFilter);
            f.FilterHolder[i]:SetID(i);
            
            local tex = f.FilterHolder[i]:CreateTexture(nil, 'OVERLAY');
			tex:SetTexture(0.9, 0.8, 0.1, 0.3);
			tex:SetInside();
			f.FilterHolder[i]:SetCheckedTexture(tex);
            
            f.FilterHolder[i].icon:SetTexture(icon);
            f.FilterHolder[i].icon:SetInside();
            f.FilterHolder[i].icon:SetTexCoord(unpack(E.TexCoords));
        end
        
        f.FilterHolder:Size(((buttonSize + buttonSpacing) * i) + buttonSpacing, buttonSize + (buttonSpacing * 2));
          
        f.FilterHolder[i]:Size(buttonSize);
        f.FilterHolder[i]:ClearAllPoints();
        if i == 1 then
            f.FilterHolder[i]:SetPoint('BOTTOMLEFT', f.FilterHolder, 'BOTTOMLEFT', buttonSpacing, buttonSpacing)
        else
            f.FilterHolder[i]:SetPoint('LEFT', lastContainerButton, 'RIGHT', buttonSpacing, 0);
        end
        
        lastContainerButton = f.FilterHolder[i];
    end
end

local function AddMenuButton(isBank)
	if E.private.bags.enable ~= true then return; end
	local f = B:GetContainerFrame(isBank);
	local bWidth = (isBank and B.db.bankWidth or B.db.bagWidth) * 0.15
	
	if not f then return; end
	if not f.FilterHolder then
		f.FilterHolder = CreateFrame('Button', nil, f);
		f.FilterHolder:Point('BOTTOMLEFT', f, 'TOPLEFT', 0, 1);
		f.FilterHolder:SetTemplate('Transparent');
		f.FilterHolder:Hide();
		
		local buttonColor = E.PixelMode and {0.31, 0.31, 0.31} or E.media.bordercolor;
		f.filterButton = CreateFrame('Button', isBank and 'euibankfilter' or 'euibagfilter', f);
		f.filterButton:SetPoint('RIGHT', isBank and f.purchaseBagButton or f.vendorGraysButton, 'LEFT', -5, 0);
		f.filterButton:SetSize(16 + E.Border, 16 + E.Border)
		f.filterButton:SetTemplate();
		f.filterButton:SetNormalTexture("Interface\\ICONS\\INV_Misc_PunchCards_Blue")
		f.filterButton:GetNormalTexture():SetTexCoord(unpack(E.TexCoords))
		f.filterButton:GetNormalTexture():SetInside()
		f.filterButton:SetPushedTexture("Interface\\ICONS\\INV_Misc_PunchCards_Red")
		f.filterButton:GetPushedTexture():SetTexCoord(unpack(E.TexCoords))
		f.filterButton:GetPushedTexture():SetInside()
		f.filterButton:StyleButton(nil, true)
		f.filterButton.ttText = L.Filter;
		f.filterButton:SetScript('OnEnter', B.Tooltip_Show);
		f.filterButton:SetScript('OnLeave', B.Tooltip_Hide);
		f.filterButton:SetScript('OnClick', function() 
			f.ContainerHolder:Hide();
			ToggleFrame(f.FilterHolder);
		end);
		
		f.bagsButton:HookScript('OnClick', function()
			f.FilterHolder:Hide();
		end);
		
		f.editBox:ClearAllPoints()
		f.editBox:Point('BOTTOMLEFT', f.holderFrame, 'TOPLEFT', (E.Border * 2) + 18, E.Border * 2 + 2);
		f.editBox:Point('RIGHT', f.filterButton, 'LEFT', -5, 0);		
		
		AddFilterButtons(f, isBank);
	end
 end

function B:LoadBagFilter()
    L.Weapon, L.Armor, L.Container, L.Consumable, L.Glyph, L.TradeGood, L.Recipe, L.Gem, L.Misc, L.Quest, L.BattlePets = GetAuctionItemClasses();

    L.All = ALL;
    L.Filter = FILTER;
    
    U.Filters = {
        { L.All, 'Interface/Icons/INV_Misc_EngGizmos_17', 0}, --全部
        { L.Weapon..'&'..L.Armor, 'Interface/Icons/INV_Chest_Chain_04', 1},--武器+护甲
        { L.Consumable, 'Interface/Icons/INV_Potion_93', 4},--消耗品
		{ L.Glyph, 'Interface/Icons/INV_Glyph_MajorWarrior', 5},--雕文
		{ L.TradeGood, 'Interface/Icons/INV_Fabric_Silk_02',6},--商品
		{ L.Recipe, 'Interface/Icons/INV_Garrison_Blueprints2',7},--配方
		{ L.Gem, 'Interface/Icons/INV_JEWELCRAFTING_GEM_37',8},--珠宝
		{ L.Quest, 'Interface/QuestFrame/UI-QuestLog-BookIcon',10},--任务
		{ L.BattlePets, 'Interface/Icons/Ability_Mount_PolarBear_Black',11},--战斗宠物
		{ GARRISON_LOCATION_TOOLTIP, 'Interface/Icons/INV_Eng_Crate2',100},--要塞
        { L.Misc, 'Interface/Icons/INV_Misc_Rune_01',9},--其它		
    };
       
    U.numFilters = #U.Filters;
    
	if E.private.bags.enable then
		hooksecurefunc(B, 'Layout', function(self, isBank)
			AddMenuButton(isBank);
		end);
	end
end