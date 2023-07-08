
execute store success score temp temp run clear @s structure_void{GuiItem:1b,GuiTypes:["static"]}
execute if score temp temp matches 1.. run data modify block ~ ~-.5 ~ Items set from storage spell_assembly:guis Guis.FusionAltar
execute if score temp temp matches 1.. run scoreboard players reset temp temp

execute store success score temp temp run clear @s structure_void{GuiItem:1b,GuiTypes:["fuse_button"]}
execute if score temp temp matches 1.. run function spell_assembly:fusion_altar/gui/fuse/check_fusion
execute if score temp temp matches 1.. run scoreboard players reset temp temp
