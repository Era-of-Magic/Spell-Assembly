
execute if score @s spellAssembly.mana < @s spellAssembly.manaMax run scoreboard players add @s spellAssembly.mana 1
scoreboard players remove @s spellAssembly.manaParts 20

execute if score @s spellAssembly.manaParts matches 20.. run function spell_assembly:mana/add
