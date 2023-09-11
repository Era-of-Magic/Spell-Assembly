
scoreboard players remove @s spellAssembly.slowcastSteps 1

particle flame ~ ~ ~ .1 .1 .1 0 1

execute store result score hit temp as @e[type=!player,type=!item_display,dx=0] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] positioned ~.99 ~.99 ~.99 run function spell_assembly:spells/slowcast/end 
execute if score hit temp matches 1 run kill

tellraw @a [{"selector":"@s"},{"score":{"name":"@s","objective":"spellAssembly.slowcastSteps"}}]

tp ~ ~ ~

execute if score @s spellAssembly.slowcastSteps matches 1.. positioned ^ ^ ^.2 run function spell_assembly:spells/slowcast/step

