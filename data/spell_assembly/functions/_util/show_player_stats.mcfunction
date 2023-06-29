
tellraw @s ""
tellraw @s {"text": "======================================="}
tellraw @s {"translate": "spell.assembly.show.stats", "color": "gold", "bold": true}
tellraw @s {"text": "======================================="}
tellraw @s ""

tellraw @s [{"translate": "show.stats.mana.amount"},{"score":{"name":"@p[tag=!spellAsembly_hide_stats]","objective":"spellAssembly.mana"}, "color": "aqua"}]
tellraw @s ""

tellraw @s [{"translate": "show.stats.mana.max"},{"score":{"name":"@p[tag=!spellAsembly_hide_stats]","objective":"spellAssembly.manaMax"}, "color": "aqua"}]
tellraw @s ""

tellraw @s [{"translate": "show.stats.mana.fill.rate"},{"score":{"name":"@p[tag=!spellAsembly_hide_stats]","objective":"spellAssembly.manaFillRate"}, "color": "aqua"}]
tellraw @s ""
