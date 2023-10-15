
# Mark this entity as spell-entity and rotate to casters facing direction
data merge entity @s {teleport_duration:1,Tags:["spell_assembly","spell"]}
data modify entity @s Rotation set from storage spell_assembly:temp data.Rotation

# Store spell casters UUID
data modify entity @s item.tag.SpellCaster set from storage gu:main out

# Store spell casters id
scoreboard players operation @s spellAssembly.id = id temp

# Store the spell id in the spell-entities spell id score
$scoreboard players set @s spellAssembly.spellId $(SelectedSpellID)
