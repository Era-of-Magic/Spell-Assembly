
scoreboard players add manaExhaustion spellAssembly.config 1
execute if score manaExhaustion spellAssembly.config matches 2 run scoreboard players set manaExhaustion spellAssembly.config 0

function spell_assembly:_util/configs

scoreboard players set nativeManaSystem spellAssembly.config 0
title @a times 0t 1t 0t
schedule function spell_assembly:_util/z_never_execute_this/config_buttons/refresh_title 2t


