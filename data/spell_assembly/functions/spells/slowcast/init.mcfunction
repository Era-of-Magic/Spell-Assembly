
scoreboard players reset @s test

summon item_display ~ ~ ~ {Tags:["spell","new"]}

execute as @e[type=item_display,tag=new] run function spell_assembly:spells/slowcast/setup
