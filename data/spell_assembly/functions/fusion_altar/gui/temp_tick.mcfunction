
execute as @e[type=item_display,tag=fusion_altar_block,limit=1] at @s if block ~ ~-.5 ~ barrel[open=true] as @a if score @s spellAssembly.tempLinkId = @e[type=item_display,tag=fusion_altar_block,limit=1,sort=nearest] spellAssembly.tempLinkId run function spell_assembly:fusion_altar/gui/check_gui

execute as @e[type=item_display,tag=fusion_altar_block,tag=already_open] at @s if block ~ ~-.5 ~ barrel[open=false] run function spell_assembly:fusion_altar/gui/reset_block
execute as @e[type=item_display,tag=fusion_altar_block,limit=1] at @s if block ~ ~-.5 ~ barrel[open=true] run schedule function spell_assembly:fusion_altar/gui/temp_tick 1t
