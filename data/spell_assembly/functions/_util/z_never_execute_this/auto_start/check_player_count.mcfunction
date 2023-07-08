
scoreboard players reset temp temp
execute as @a run scoreboard players add temp temp 1

execute if score temp temp matches 1 run function spell_assembly:_util/z_never_execute_this/auto_start/start_everything

scoreboard players reset @a spellAssembly.player.left

advancement revoke @s only spell_assembly:internal/check_login
