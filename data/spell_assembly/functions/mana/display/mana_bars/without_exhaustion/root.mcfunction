
execute if score @s spellAssembly.displayMana matches 68.. run function spell_assembly:mana/display/mana_bars/without_exhaustion/68_100
execute if score @s spellAssembly.displayMana matches 32..67 run function spell_assembly:mana/display/mana_bars/without_exhaustion/32_67
execute if score @s spellAssembly.displayMana matches ..31 run function spell_assembly:mana/display/mana_bars/without_exhaustion/0_31
