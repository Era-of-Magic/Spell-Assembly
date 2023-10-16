
scoreboard players remove raycastSteps temp 1

execute as @e[type=!#taglib:non_living,dx=0] unless score @s spellAssembly.id = id temp positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function spell_assembly:spells/thin_raycast/end with storage spell_assembly:temp data

execute if score raycastSteps temp matches 1.. positioned ^ ^ ^0.2 run function spell_assembly:spells/thin_raycast/ray
