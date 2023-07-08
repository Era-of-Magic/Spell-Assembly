
execute as @e[type=item_display,tag=fusion_altar_rods] run data merge entity @s {transformation:{right_rotation:[0f,1f,0f,0f],left_rotation:[0f,1f,0f,0f],translation:[0f,-.15f,0f]}}

execute as @e[type=item_display,tag=fusion_altar_rods,limit=1] run schedule function spell_assembly:fusion_altar/animations/floating_rods_rotate2 1t replace
