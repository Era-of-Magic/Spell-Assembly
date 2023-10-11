
$data modify storage spell_assembly:temp data.SelectedSpellID set value $(SelectedSpellID)

$function #spell_assembly:spells/spellcast_type_check with storage spell_assembly:spells Spells[{ID:$(SelectedSpellID)}]
