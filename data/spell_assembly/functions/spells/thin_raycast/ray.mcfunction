
tag @s add this

$execute if score @s spellAssembly.hasParticles matches 1 run function $(FX)

scoreboard players remove @s spellAssembly.raycastSteps 1
tp ~ ~ ~

execute store success score success temp as @e[type=!#taglib:non_living,dx=0] unless score @s spellAssembly.id = id temp positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function spell_assembly:spells/thin_raycast/end with storage spell_assembly:temp data
execute if score success temp matches 1 run return 0

tag @s remove this

execute if score @s spellAssembly.raycastSteps matches 1.. positioned ^ ^ ^.2 if block ~ ~ ~ #taglib:walk_through run function spell_assembly:spells/thin_raycast/ray with storage spell_assembly:temp data

#kill