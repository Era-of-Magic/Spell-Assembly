
tag @s remove new

# 1 step is 0.2 blocks
#
# steps * dration / 5 = distance in blocks
#
# 3 * 50 / 5 = 30 blocks

scoreboard players operation @s spellAssembly.slowcastSteps = slowcastSteps temp 
scoreboard players operation @s spellAssembly.slowcastDuration = slowcastDuration temp

function spell_assembly:spells/temp_tick
