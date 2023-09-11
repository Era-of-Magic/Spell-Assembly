
tag @s remove new

# 1 step is 0.2 blocks
#
# steps * dration / 5 = distance in blocks
#
# 3 * 50 / 5 = 30 blocks

scoreboard players set @s spellAssembly.slowcastSteps 3
scoreboard players set @s spellAssembly.slowcastDuration 50

function spell_assembly:spells/temp_tick
