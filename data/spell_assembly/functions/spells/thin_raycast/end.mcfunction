
$execute as @e[type=item_display,tag=this,limit=1] run function spell_assembly:spells/phases/get_data with storage spell_assembly:spells Spells[{ID:$(SelectedSpellID)}]

return 1
