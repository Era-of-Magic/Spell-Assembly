
# Set own ID to casters ID
scoreboard players operation @s spellAssembly.id = id temp

# mark this entity as spell-entity and rotate to casters facing direction
data merge entity @s {teleport_duration:1,Tags:["spell_assembly","spell"]}
data modify entity @s Rotation set from storage spell_assembly:temp data.Rotation

# loads the spell nbt in the spell-entity
$data modify entity @s item.tag.data.Spell set from storage spell_assembly:spells_test Spells[{ID:$(SelectedSpellID)}]
