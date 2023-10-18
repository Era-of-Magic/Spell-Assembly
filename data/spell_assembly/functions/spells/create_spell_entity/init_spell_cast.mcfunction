
### Entry point for every spell cast but contact spells

# If contact type, cancel the function
$execute if data storage spell_assembly:spells Spells[{ID:$(SelectedSpellID),Type:"contact"}] run return 0

# Mana calculations
$execute store result score cost temp run data get storage spell_assembly:spells Spells[{ID:$(SelectedSpellID)}].ManaCost
scoreboard players set success temp 0
execute if score nativeManaSystem spellAssembly.config matches 1 run function spell_assembly:mana/mana_usage
execute if score success temp matches 1 run return 0

# Store spell caster data
scoreboard players operation id temp = @s spellAssembly.id
$data modify storage spell_assembly:temp data.SelectedSpellID set value $(SelectedSpellID)
data modify storage spell_assembly:temp data.Rotation set from entity @s Rotation
loot spawn 0 -500 0 loot spell_assembly:internal/player_name_getter
execute positioned 0 -500 0 run data modify storage spell_assembly:temp data.SpellCaster set from entity @e[type=item,limit=1,sort=nearest] Item.tag.SkullOwner.Name
execute positioned 0 -500 0 run kill @e[type=item,limit=1,sort=nearest]

# Summon spell entity
execute summon item_display run function spell_assembly:spells/create_spell_entity/get_spell_data with storage spell_assembly:temp data
