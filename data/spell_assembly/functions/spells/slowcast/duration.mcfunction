
scoreboard players remove @s spellAssembly.slowcastDuration 1

scoreboard players operation slowcastSteps temp = @s spellAssembly.slowcastSteps
scoreboard players reset hit temp
execute positioned ^ ^ ^.2 run function spell_assembly:spells/slowcast/step
scoreboard players operation @s spellAssembly.slowcastSteps = slowcastSteps temp

execute unless score @s spellAssembly.slowcastDuration matches 1.. run kill
