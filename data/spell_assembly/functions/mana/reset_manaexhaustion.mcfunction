
execute as @a[scores={spellAssembly.manaExhaustionCooldown=1..}] run scoreboard players remove @s spellAssembly.manaExhaustionCooldown 1

execute as @a[scores={spellAssembly.manaExhaustionCooldown=0}] run scoreboard players set @s spellAssembly.manaExhaustion 0
execute as @a[scores={spellAssembly.manaExhaustionCooldown=0}] run scoreboard players set @s spellAssembly.manaExhaustionFillRate 1

execute as @a[scores={spellAssembly.manaExhaustionCooldown=1..},limit=1] run schedule function spell_assembly:mana/reset_manaexhaustion 1s
