
# every time manaParts is 20, 1 mana gets added (high manaFillRate will make this happen multiple times per tick)
execute if score @s spellAssembly.mana < @s spellAssembly.manaMax run scoreboard players operation @s spellAssembly.manaParts += @s spellAssembly.manaFillRate
execute if score @s spellAssembly.manaParts matches 20.. run function spell_assembly:mana/add

# display functions
function spell_assembly:mana/display/calculate_mana_percent
execute if score manaExhaustion spellAssembly.config matches 0 run function spell_assembly:mana/display/mana_bars/without_exhaustion/root
execute if score manaExhaustion spellAssembly.config matches 1 run function spell_assembly:mana/display/mana_bars/with_exhaustion/root
execute if score manaExhaustion spellAssembly.config matches 1 run function spell_assembly:mana/display/exhaustion_bar
