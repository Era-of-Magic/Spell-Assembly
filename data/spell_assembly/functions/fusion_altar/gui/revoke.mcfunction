
scoreboard players add Server spellAssembly.tempLinkId 1
scoreboard players operation @s spellAssembly.tempLinkId = Server spellAssembly.tempLinkId

execute as @e[type=item_display,tag=fusion_altar_block,tag=!already_open] at @s run function spell_assembly:fusion_altar/gui/init

advancement revoke @s only spell_assembly:internal/open_fusion_altar
