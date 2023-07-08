
execute as @e[type=item_display,tag=fusion_altar_block] at @s unless block ~ ~-.5 ~ barrel run function spell_assembly:fusion_altar/block_checks/break

execute as @e[type=item_display,tag=fusion_altar_block,limit=1] run schedule function spell_assembly:fusion_altar/block_checks/temp_tick 1t
