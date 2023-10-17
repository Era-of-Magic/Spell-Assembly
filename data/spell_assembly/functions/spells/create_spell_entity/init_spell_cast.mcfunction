
### Entry point for every spell cast unless contact spells

# Mana calculations
$execute store result score cost temp run data get storage spell_assembly:spells Spells[{ID:$(SelectedSpellID)}].ManaCost
scoreboard players set success temp 0
execute if score nativeManaSystem spellAssembly.config matches 1 run function spell_assembly:mana/mana_usage
execute if score success temp matches 1 run return 0

# Store spell caster data
scoreboard players operation id temp = @s spellAssembly.id
$data modify storage spell_assembly:temp data.SelectedSpellID set value $(SelectedSpellID)
data modify storage spell_assembly:temp data.Rotation set from entity @s Rotation
function gu:generate

# Summon spell entity
execute summon item_display run function spell_assembly:spells/create_spell_entity/get_spell_data with storage spell_assembly:temp data
