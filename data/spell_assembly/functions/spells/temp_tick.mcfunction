
execute as @e[type=item_display,tag=spell,scores={spellAssembly.slowcastDuration=1..}] at @s run function spell_assembly:spells/slowcast/duration

execute as @e[type=item_display,tag=spell,limit=1] run schedule function spell_assembly:spells/temp_tick 1t
