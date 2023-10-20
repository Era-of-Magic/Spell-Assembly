
$execute if score hasParticles temp matches 1 run function $(FX)

scoreboard players remove @s spellAssembly.raycastSteps 1

tp ~ ~ ~

execute as @e[type=!#taglib:non_living,dx=0] unless score @s spellAssembly.id = id temp positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function spell_assembly:spells/thin_raycast/end

execute if score @s spellAssembly.raycastSteps matches 1.. positioned ^ ^ ^.2 run function spell_assembly:spells/thin_raycast/ray

say hi

#kill