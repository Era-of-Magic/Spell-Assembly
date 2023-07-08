


execute as @e[type=item_display,tag=fusion_altar,limit=1] at @s if block ~ ~-.5 ~ barrel[open=true] run schedule function spell_assembly:fusion_altar/gui/temp_tick 1t
