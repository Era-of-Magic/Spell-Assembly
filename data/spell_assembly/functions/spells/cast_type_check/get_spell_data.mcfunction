
# Entry point for every spell cast

$data modify storage spell_assembly:temp data.SelectedSpellID set value $(SelectedSpellID)

$execute store result score cost temp run data get storage spell_assembly:spells Spells[{ID:$(SelectedSpellID)}].ManaCost
function spell_assembly:mana/mana_usage

$execute if score success temp matches 0 run function #spell_assembly:spells/spellcast_type_check with storage spell_assembly:spells Spells[{ID:$(SelectedSpellID)}]
