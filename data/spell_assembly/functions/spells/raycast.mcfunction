
scoreboard players remove spellAssembly.raycastSteps temp 1

$execute as @e[type=!#taglib:non_living,dx=0] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function $(function)

execute if score raycastSteps temp matches 1.. positioned ^ ^ ^0.2 run function spell_assembly:spells/raycast
