
execute store result storage spell_assembly:temp data.SpellSlot int 1 run scoreboard players get temp temp
scoreboard players add temp temp 1

function spell_assembly:_util/z_never_execute_this/list_spells/get_spell_data with storage spell_assembly:temp data

execute if score temp temp < spellCount temp run function spell_assembly:_util/z_never_execute_this/list_spells/loop_through_spells 
