UPDATE LocalizedText SET Text = replace(Text, '+2', '+1') WHERE Tag='LOC_MINOR_CIV_SCIENTIFIC_TRAIT_SMALL_INFLUENCE_BONUS' and Text LIKE '%+2%';

UPDATE LocalizedText SET Text = replace(Text, '+2', '+1') WHERE Tag='LOC_MINOR_CIV_RELIGIOUS_TRAIT_SMALL_INFLUENCE_BONUS' and Text LIKE '%+2%';

UPDATE LocalizedText SET Text = replace(Text, '+2', '+1') WHERE Tag='LOC_MINOR_CIV_CULTURAL_TRAIT_SMALL_INFLUENCE_BONUS' and Text LIKE '%+2%';

UPDATE LocalizedText SET Text = replace(Text, '+2', '+1') WHERE Tag='LOC_MINOR_CIV_MILITARISTIC_TRAIT_SMALL_INFLUENCE_BONUS' and Text LIKE '%+2%';

UPDATE LocalizedText SET Text = replace(Text, '+2', '+1') WHERE Tag='LOC_MINOR_CIV_INDUSTRIAL_TRAIT_SMALL_INFLUENCE_BONUS' and Text LIKE '%+2%';

UPDATE LocalizedText SET Text = replace(Text, '+4', '+2') WHERE Tag='LOC_MINOR_CIV_TRADE_TRAIT_SMALL_INFLUENCE_BONUS' and Text LIKE '%+4%';