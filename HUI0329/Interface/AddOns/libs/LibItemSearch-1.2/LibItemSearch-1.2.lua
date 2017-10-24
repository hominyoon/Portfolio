--[[
	ItemSearch
		An item text search engine of some sort
	2015.03.03 添加C:1~11 c:garrison 的扩展，并添加要塞物品ID表
--]]

local Search = LibStub('CustomSearch-1.0')
local Lib = LibStub:NewLibrary('LibItemSearch-1.2', 99) --by eui.cc
if Lib then
	Lib.Filters = {}
else
	return
end

local ITEMCLASS = {GetAuctionItemClasses()}
local GarrisonIDs = {
	[116395] = true, -- Comprehensive Outpost Construction Guide
	[116394] = true, -- Outpost Building Assembly Notes

	[120301] = true, -- Armor Enhancement Token
	[114745] = true, -- Braced Armor Enhancement
	[114808] = true, -- Fortified Armor Enhancement
	[114822] = true, -- Heavily Reinforced Armor Enhancement
	[114807] = true, -- War Ravaged Armor Set
	[114806] = true, -- Blackrock Armor Set
	[114746] = true, -- Goredrenched Armor Set
	[120302] = true, -- Weapon Enhancement Token
	[114128] = true, -- Balanced Weapon Enhancement
	[114129] = true, -- Striking Weapon Enhancement
	[114131] = true, -- Power Overrun Weapon Enhancement
	[114616] = true, -- War Ravaged Weaponry
	[114081] = true, -- Blackrock Weaponry
	[114622] = true, -- Goredrenched Weaponry
	[118474] = true, -- Supreme Manual of Dance
	[118475] = true, -- Hearthstone Strategy Guide
	[118354] = true, -- Follower Re-training Certificate
	[120313] = true, -- Sanketsu
	[120311] = true, -- The Blademaster's Necklace

	[114119] = true, -- Crate of Salvage
	[114116] = true, -- Bag of Salvaged Goods
	[114120] = true, -- Big Crate of Salvage
	[114781] = true, -- Timber
	[116053] = true, -- Draenic Seeds
	[115508] = true, -- Draenic Stone
	[113991] = true, -- Iron Trap
	[115009] = true, -- Improved Iron Trap
	[115010] = true, -- Deadly Iron Trap
	[119813] = true, -- Furry Caged Beast
	[119814] = true, -- Leathery Caged Beast
	[119810] = true, -- Meaty Caged Beast
	[119819] = true, -- Caged Mighty Clefthoof
	[119817] = true, -- Caged Mighty Riverbeast
	[119815] = true, -- Caged Mighty Wolf
	[117397] = true, -- Nat's Lucky Coin

	[113681] = true, -- Iron Horde Scraps
	[113823] = true, -- Crusted Iron Horde Pauldrons
	[113822] = true, -- Ravaged Iron Horde Belt
	[113821] = true, -- Battered Iron Horde Helmet

	[111812] = true, -- Garrison Blueprint: Alchemy Lab] = true, Level 1
	[111929] = true, -- Garrison Blueprint: Alchemy Lab] = true, Level 2
	[111930] = true, -- Garrison Blueprint: Alchemy Lab] = true, Level 3
	[111968] = true, -- Garrison Blueprint: Barn] = true, Level 2
	[111969] = true, -- Garrison Blueprint: Barn] = true, Level 3
	[111956] = true, -- Garrison Blueprint: Barracks] = true, Level 1
	[111970] = true, -- Garrison Blueprint: Barracks] = true, Level 2
	[111971] = true, -- Garrison Blueprint: Barracks] = true, Level 3
	[111966] = true, -- Garrison Blueprint: Dwarven Bunker] = true, Level 2
	[111967] = true, -- Garrison Blueprint: Dwarven Bunker] = true, Level 3
	[111817] = true, -- Garrison Blueprint: Enchanter's Study] = true, Level 1
	[111972] = true, -- Garrison Blueprint: Enchanter's Study] = true, Level 2
	[111973] = true, -- Garrison Blueprint: Enchanter's Study] = true, Level 3
	[109258] = true, -- Garrison Blueprint: Engineering Works] = true, Level 1
	[109256] = true, -- Garrison Blueprint: Engineering Works] = true, Level 2
	[109257] = true, -- Garrison Blueprint: Engineering Works] = true, Level 3
	[109578] = true, -- Garrison Blueprint: Fishing Shack
	[111927] = true, -- Garrison Blueprint: Fishing Shack] = true, Level 2
	[111928] = true, -- Garrison Blueprint: Fishing Shack] = true, Level 3
	[116248] = true, -- Garrison Blueprint: Frostwall Mines] = true, Level 2
	[116249] = true, -- Garrison Blueprint: Frostwall Mines] = true, Level 3
	[116431] = true, -- Garrison Blueprint: Frostwall Tavern] = true, Level 2
	[116432] = true, -- Garrison Blueprint: Frostwall Tavern] = true, Level 3
	[111814] = true, -- Garrison Blueprint: Gem Boutique] = true, Level 1
	[111974] = true, -- Garrison Blueprint: Gem Boutique] = true, Level 2
	[111975] = true, -- Garrison Blueprint: Gem Boutique] = true, Level 3
	[111980] = true, -- Garrison Blueprint: Gladiator's Sanctum] = true, Level 2
	[111981] = true, -- Garrison Blueprint: Gladiator's Sanctum] = true, Level 3
	[111984] = true, -- Garrison Blueprint: Gnomish Gearworks] = true, Level 2
	[111985] = true, -- Garrison Blueprint: Gnomish Gearworks] = true, Level 3
	[116200] = true, -- Garrison Blueprint: Goblin Workshop] = true, Level 2
	[116201] = true, -- Garrison Blueprint: Goblin Workshop] = true, Level 3
	[109577] = true, -- Garrison Blueprint: Herb Garden] = true, Level 2
	[111997] = true, -- Garrison Blueprint: Herb Garden] = true, Level 3
	[107694] = true, -- Garrison Blueprint: Lunarfall Inn] = true, Level 2
	[109065] = true, -- Garrison Blueprint: Lunarfall Inn] = true, Level 3
	[109576] = true, -- Garrison Blueprint: Lunarfall Excavation] = true, Level 2
	[111996] = true, -- Garrison Blueprint: Lunarfall Excavation] = true, Level 3
	[109254] = true, -- Garrison Blueprint: Lumber Mill] = true, Level 2
	[109255] = true, -- Garrison Blueprint: Lumber Mill] = true, Level 3
	[109062] = true, -- Garrison Blueprint: Mage Tower] = true, Level 2
	[109063] = true, -- Garrison Blueprint: Mage Tower] = true, Level 3
	[111998] = true, -- Garrison Blueprint: Menagerie] = true, Level 2
	[111999] = true, -- Garrison Blueprint: Menagerie] = true, Level 3
	[111957] = true, -- Garrison Blueprint: Salvage Yard] = true, Level 1
	[111976] = true, -- Garrison Blueprint: Salvage Yard] = true, Level 2
	[111977] = true, -- Garrison Blueprint: Salvage Yard] = true, Level 3
	[111815] = true, -- Garrison Blueprint: Scribe's Quarters] = true, Level 1
	[111978] = true, -- Garrison Blueprint: Scribe's Quarters] = true, Level 2
	[111979] = true, -- Garrison Blueprint: Scribe's Quarters] = true, Level 3
	[116196] = true, -- Garrison Blueprint: Spirit Lodge] = true, Level 2
	[116197] = true, -- Garrison Blueprint: Spirit Lodge] = true, Level 3
	[112002] = true, -- Garrison Blueprint: Stables] = true, Level 2
	[112003] = true, -- Garrison Blueprint: Stables] = true, Level 3
	[111982] = true, -- Garrison Blueprint: Storehouse] = true, Level 2
	[111983] = true, -- Garrison Blueprint: Storehouse] = true, Level 3
	[111816] = true, -- Garrison Blueprint: Tailoring Emporium] = true, Level 1
	[111992] = true, -- Garrison Blueprint: Tailoring Emporium] = true, Level 2
	[111993] = true, -- Garrison Blueprint: Tailoring Emporium] = true, Level 3
	[111813] = true, -- Garrison Blueprint: The Forge] = true, Level 1
	[111990] = true, -- Garrison Blueprint: The Forge] = true, Level 2
	[111991] = true, -- Garrison Blueprint: The Forge] = true, Level 3
	[111818] = true, -- Garrison Blueprint: The Tannery] = true, Level 1
	[111988] = true, -- Garrison Blueprint: The Tannery] = true, Level 2
	[111989] = true, -- Garrison Blueprint: The Tannery] = true, Level 3
	[111986] = true, -- Garrison Blueprint: Trading Post] = true, Level 2
	[111987] = true, -- Garrison Blueprint: Trading Post] = true, Level 3
	[116185] = true, -- Garrison Blueprint: War Mill] = true, Level 2
	[116186] = true,  -- Garrison Blueprint: War Mill] = true, Level 3
}


--[[ User API ]]--

function Lib:Matches(link, search)
	return Search(link, search, self.Filters)
end

function Lib:Tooltip(link, search)
	return link and self.Filters.tip:match(link, nil, search)
end

function Lib:TooltipPhrase(link, search)
	return link and self.Filters.tipPhrases:match(link, nil, search)
end

function Lib:InSet(link, search)
	if IsEquippableItem(link) then
		local id = tonumber(link:match('item:(%-?%d+)'))
		return self:BelongsToSet(id, (search or ''):lower())
	end
end

function Lib:ItemClasses(link, search)
	local itemType = select(6, GetItemInfo(link));
	if search == 'garrison' then
		local id = tonumber(link:match('item:(%-?%d+)'))
		return GarrisonIDs[id]
	elseif search == '1' or search == '2' then
		if itemType == ITEMCLASS[1] or itemType == ITEMCLASS[2] then
			return true;
		end
	else
		return itemType == ITEMCLASS[tonumber(search)]
	end
end

--[[ Basics ]]--

Lib.Filters.name = {
  	tags = {'n', 'name'},

	canSearch = function(self, operator, search)
		return not operator and search
	end,

	match = function(self, item, _, search)
		local name = item:match('%[(.-)%]')
		return Search:Find(search, name)
	end
}

Lib.Filters.type = {
	tags = {'t', 'type', 's', 'slot'},

	canSearch = function(self, operator, search)
		return not operator and search
	end,

	match = function(self, item, _, search)
		local type, subType, _, equipSlot = select(6, GetItemInfo(item))
		return Search:Find(search, type, subType, _G[equipSlot])
	end
}

Lib.Filters.level = {
	tags = {'l', 'level', 'lvl', 'ilvl'},

	canSearch = function(self, _, search)
		return tonumber(search)
	end,

	match = function(self, link, operator, num)
		local lvl = select(4, GetItemInfo(link))
		if lvl then
			return Search:Compare(operator, lvl, num)
		end
	end
}


--[[ Quality ]]--

local qualities = {}
for i = 0, #ITEM_QUALITY_COLORS do
	qualities[i] = _G['ITEM_QUALITY' .. i .. '_DESC']:lower()
end

Lib.Filters.quality = {
	tags = {'q', 'quality'},

	canSearch = function(self, _, search)
		for i, name in pairs(qualities) do
		  if name:find(search) then
			return i
		  end
		end
	end,

	match = function(self, link, operator, num)
		local quality = link:sub(1, 9) == 'battlepet' and tonumber(link:match('%d+:%d+:(%d+)')) or select(3, GetItemInfo(link))
		return Search:Compare(operator, quality, num)
	end,
}


--[[ Tooltip Searches ]]--

local scanner = LibItemSearchTooltipScanner or CreateFrame('GameTooltip', 'LibItemSearchTooltipScanner', UIParent, 'GameTooltipTemplate')

Lib.Filters.tip = {
	tags = {'tt', 'tip', 'tooltip'},
	onlyTags = true,

	canSearch = function(self, _, search)
		return search
	end,

	match = function(self, link, _, search)
		if link:find('item:') then
			scanner:SetOwner(UIParent, 'ANCHOR_NONE')
			scanner:SetHyperlink(link)

			for i = 1, scanner:NumLines() do
				if Search:Find(search, _G[scanner:GetName() .. 'TextLeft' .. i]:GetText()) then
					return true
				end
			end
		end
	end
}

Lib.Filters.tipPhrases = {
	canSearch = function(self, _, search)
		return self.keywords[search]
	end,

	match = function(self, link, _, search)
		local id = link:match('item:(%d+)')
		if not id then
			return
		end
		
		local cached = self.cache[search][id]
		if cached ~= nil then
			return cached
		end

		scanner:SetOwner(UIParent, 'ANCHOR_NONE')
		scanner:SetHyperlink(link)

		local matches = false
		for i = 1, scanner:NumLines() do
			if search == _G['LibItemSearchTooltipScannerTextLeft' .. i]:GetText() then
				matches = true
				break
			end
		end

		self.cache[search][id] = matches
		return matches
	end,

	cache = setmetatable({}, {__index = function(t, k) local v = {} t[k] = v return v end}),
	keywords = {
    	[ITEM_SOULBOUND:lower()] = ITEM_BIND_ON_PICKUP,
    	['bound'] = ITEM_BIND_ON_PICKUP,
		['boe'] = ITEM_BIND_ON_EQUIP,
		['bop'] = ITEM_BIND_ON_PICKUP,
		['bou'] = ITEM_BIND_ON_USE,
		['quest'] = ITEM_BIND_QUEST,
		['boa'] = ITEM_BIND_TO_BNETACCOUNT,
		['reagent'] = PROFESSIONS_USED_IN_COOKING,
		[TOY:lower()] = TOY
	}
}


--[[ Equipment Sets ]]--

if IsAddOnLoaded('ItemRack') then
	local sameID = ItemRack.SameID

	function Lib:BelongsToSet(id, search)
		for name, set in pairs(ItemRackUser.Sets) do
			if name:sub(1,1) ~= '' and Search:Find(search, name) then
				for _, item in pairs(set.equip) do
					if sameID(id, item) then
						return true
					end
				end
			end
		end
	end

elseif IsAddOnLoaded('Wardrobe') then
	function Lib:BelongsToSet(id, search)
		for _, outfit in ipairs(Wardrobe.CurrentConfig.Outfit) do
			local name = outfit.OutfitName
			if Search:Find(search, name) then
				for _, item in pairs(outfit.Item) do
					if item.IsSlotUsed == 1 and item.ItemID == id then
						return true
					end
				end
			end
		end
	end

else
	function Lib:BelongsToSet(id, search)
		for i = 1, GetNumEquipmentSets() do
			local name = GetEquipmentSetInfo(i)
			if Search:Find(search, name) then
				local items = GetEquipmentSetItemIDs(name)
				for _, item in pairs(items) do
					if id == item then
						return true
					end
				end
			end
		end
	end
end

Lib.Filters.sets = {
	tags = {'s', 'set'},

	canSearch = function(self, operator, search)
		return not operator and search
	end,

	match = function(self, link, _, search)
		return Lib:InSet(link, search)
	end,
}

Lib.Filters.class = {
	tags = {'c', 'class'},
	
	canSearch = function(self, operator, search)
		return not operator and search
	end,
	
	match = function(self, link, _, search)
		return Lib:ItemClasses(link, search)
	end,
}