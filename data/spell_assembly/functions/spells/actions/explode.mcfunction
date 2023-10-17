
$execute as @e[type=!#taglib:non_living,distance=..$(Radius)] run damage @s $(Dmg) minecraft:explosion
$particle explosion ~ ~ ~ $(Radius) $(Radius) $(Radius) 1 $(ParticleAmount) normal
playsound entity.generic.explode player @a
