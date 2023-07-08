
data merge block ~ ~-.5 ~ {Lock:"l&#*OmZV2oUUgWCa$JGlerpKk0qrotLsT!9&3asH&3X#8bp^hdxOYjHppfC5B$OTyq0kIBIWSpKa0*En#9wa1s4LjKf8sAidfkzr"}
data modify block ~ ~-.5 ~ Items set from storage spell_assembly:guis Guis.FusionAltar
tag @s add already_open

scoreboard players operation @s spellAssembly.tempLinkId = Server spellAssembly.tempLinkId

function spell_assembly:fusion_altar/gui/temp_tick
