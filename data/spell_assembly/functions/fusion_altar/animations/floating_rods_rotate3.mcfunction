
execute as @e[type=item_display,tag=fusion_altar_rods] run data merge entity @s {start_interpolation:0,transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,-.15f,0f]}}

execute as @e[type=item_display,tag=fusion_altar_rods,limit=1] run schedule function spell_assembly:fusion_altar/animations/floating_rods_rotate1 150t replace
