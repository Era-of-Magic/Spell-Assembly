
# every time manaParts is 20, 1 mana gets added (high manaFillRate can cause this to happen multiple times per tick)
execute if score @s spellAssembly.mana < @s spellAssembly.manaMax run scoreboard players operation @s spellAssembly.manaParts += @s spellAssembly.manaFillRate
execute if score @s spellAssembly.manaParts matches 20.. run function spell_assembly:mana/add

execute as @a run function spell_assembly:mana/display/mana_bars/20
