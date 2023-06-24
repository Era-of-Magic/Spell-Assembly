
# Only if mana cost multiplie are enabled, items need a custom tag {ManaCostMultiplier:<integer value>}. Ex. use 200 for 2.0
execute if score manaCostMultiplier spellAssembly.config matches 1 run function spell_assembly:mana/mana_cost_multiplier
###

# Only if mana exhaustion is enabled. The exhaustion value is the amount of mana that a spell costs more when casting. The amount of spells cast without a 3 sec. pause gets added on top of the mana exhaustion for each cast. Wait 3 sec. and the exhaustion gets halved after that it gets halved every second if you don't cast another spell.
execute if score manaExhaustion spellAssembly.config matches 1 run function spell_assembly:mana/mana_exhaustion
###

scoreboard players operation @s spellAssembly.mana -= cost temp
execute unless score @s spellAssembly.mana matches 1.. run function spell_assembly:mana/not_enough

