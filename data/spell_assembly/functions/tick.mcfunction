
# Only player with tag tag=spell_assembly_mana and if native mana system is false
execute if score nativeManaSystem spellAssembly.config matches 1 as @a[tag=spell_assembly_mana] run function spell_assembly:mana/mana

# 
execute if score nativeSpellcastingTriggers spellAssembly.config matches 1 as @a[tag=spell_assembly_spellcaster,scores={click=1..}] at @s run function spell_assembly:spells/cast_type_check/get_spell_data with entity @s SelectedItem.tag



# Reset scores
scoreboard players reset @a click



########## Don't touch this !!!
schedule function spell_assembly:tick 1t replace
##########
