
execute as @e[type=item_display,tag=fusion_altar_block,tag=new] at @s run function spell_assembly:fusion_altar/place/place

advancement revoke @s only spell_assembly:internal/place_fusion_altar
