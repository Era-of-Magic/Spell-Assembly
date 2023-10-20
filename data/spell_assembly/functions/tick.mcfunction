
# Only player with tag tag=spell_assembly_mana and if native mana system is true
execute if score nativeManaSystem spellAssembly.config matches 1 as @a[tag=spell_assembly_mana] run function spell_assembly:mana/mana

# Spell casting trigger. Only player with tag tag=spell_assembly_spellcaster and if native spell triggers is true
execute if score nativeSpellcastingTriggers spellAssembly.config matches 1 as @a[tag=spell_assembly_spellcaster,scores={click=1..}] if data entity @s SelectedItem.tag.CastingTool at @s anchored eyes positioned ^ ^ ^.5 positioned ~ ~-.5 ~ run function spell_assembly:spells/create_spell_entity/init_spell_cast with entity @s SelectedItem.tag



# Reset scores
scoreboard players reset @a click



########## Don't touch this !!!
schedule function spell_assembly:tick 1t replace
##########
