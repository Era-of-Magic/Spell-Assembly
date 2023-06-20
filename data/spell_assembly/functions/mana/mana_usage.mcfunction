
# Only if mana cost mutilpie are enabled, items need a custom tag {ManaCostMultiplier:<integer value>}. Ex. use 200 for 2.0
execute if score manaCostMultiplier spellAssembly.config matches 1 store result score costMultiplier spellAssembly.mana run data get entity @s SelectedItem.tag.ManaCostMultiplier
execute if score manaCostMultiplier spellAssembly.config matches 1 run scoreboard players operation cost spellAssembly.mana *= costMultiplier spellAssembly.mana
###

scoreboard players operation cost spellAssembly.mana /= 100 const

# Only if mana exhaustion is enabled
execute if score manaExhaustion spellAssembly.config matches 1 run scoreboard players operation cost spellAssembly.mana += @s spellAssembly.manaexhaustion
###

scoreboard players operation @s spellAssembly.mana -= cost spellAssembly.mana

execute unless score @s spellAssembly.mana matches 1.. run function spell_assembly:mana/not_enough_mana


execute if score @s spellAssembly.mana matches 1.. run scoreboard players operation @s spellAssembly.manaExhaustion += @s spellAssembly.manaExhaustionFillRate

scoreboard players set @s spellAssembly.manaExhaustionCooldown 3
function spell_assembly:mana/reset_manaexhaustion
