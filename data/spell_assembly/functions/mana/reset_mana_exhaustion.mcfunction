
execute as @a[scores={spellAssembly.manaExhaustionCooldown=1..}] run scoreboard players remove @s spellAssembly.manaExhaustionCooldown 1

execute as @a[scores={spellAssembly.manaExhaustionCooldown=0}] run scoreboard players operation @s spellAssembly.manaExhaustion /= 2 const
execute as @a[scores={spellAssembly.manaExhaustionCooldown=0}] run scoreboard players set @s spellAssembly.manaExhaustionFillRate 1

execute as @a[scores={spellAssembly.manaExhaustionCooldown=0,spellAssembly.manaExhaustion=1..}] run scoreboard players set @s spellAssembly.manaExhaustionCooldown 1
execute as @a[scores={spellAssembly.manaExhaustion=1..},limit=1] run schedule function spell_assembly:mana/reset_mana_exhaustion 1s
