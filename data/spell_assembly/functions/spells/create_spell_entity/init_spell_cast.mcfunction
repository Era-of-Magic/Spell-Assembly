
data remove storage spell_assembly:temp data

# Store casters data
scoreboard players operation id temp = @s spellAssembly.id
data modify storage spell_assembly:temp data.SelectedSpellID set from entity @s SelectedItem.tag.SelectedSpellID
data modify storage spell_assembly:temp data.Rotation set from entity @s Rotation
function gu:generate

# Summon spell-entity
execute positioned ~ ~1.2 ~ summon item_display run function spell_assembly:spells/create_spell_entity/get_spell_data with storage spell_assembly:temp data
