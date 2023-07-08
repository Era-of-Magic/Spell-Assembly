
setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.gui.name.fusion.altar"}'}
summon item_display ~ ~1 ~ {billboard:"fixed",Tags:["fusion_altar_rods"],interpolation_duration:150,transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,-.20f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:wither_spawn_egg",Count:1b,tag:{CustomModelData:9999998}}}
tp ~ ~1 ~
tag @s remove new
schedule function spell_assembly:fusion_altar/animations/floating_rods_rotate1 1t replace
function spell_assembly:fusion_altar/block_checks/temp_tick