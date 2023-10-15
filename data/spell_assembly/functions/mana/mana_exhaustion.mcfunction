
scoreboard players operation @s spellAssembly.manaExhaustion += @s spellAssembly.manaExhaustionFillRate
scoreboard players add @s spellAssembly.manaExhaustionFillRate 1
scoreboard players set @s spellAssembly.manaExhaustionCooldown 3

function spell_assembly:mana/reset_mana_exhaustion 
