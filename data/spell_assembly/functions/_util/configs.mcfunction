
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

tellraw @s {"text": "======================================="}
tellraw @s {"translate": "config.title", "color": "gold", "bold": true}
tellraw @s {"text": "======================================="}
tellraw @s ""

# Native spellcasting triggers
execute if score nativeSpellcastingTriggers spellAssembly.config matches 0 run tellraw @s [{"text":"", "font": "minecraft:default"},{"score":{"name":"nativeSpellcastingTriggers","objective":"spellAssembly.config"}, "font": "spell_assembly:util","hoverEvent":{"action":"show_text","contents":{"translate":"config.toggle.info.on"}},"clickEvent": {"action": "run_command", "value": "/function spell_assembly:_util/z_never_execute_this/config_buttons/toggle_native_spellcasting_triggers"}},{"translate":"config.nativespellcastingtriggers"}]
execute if score nativeSpellcastingTriggers spellAssembly.config matches 1 run tellraw @s [{"text":"", "font": "minecraft:default"},{"score":{"name":"nativeSpellcastingTriggers","objective":"spellAssembly.config"}, "font": "spell_assembly:util","hoverEvent":{"action":"show_text","contents":{"translate":"config.toggle.info.off"}},"clickEvent": {"action": "run_command", "value": "/function spell_assembly:_util/z_never_execute_this/config_buttons/toggle_native_spellcasting_triggers"}},{"translate":"config.nativespellcastingtriggers"}]
tellraw @s ""

# Native mana system
execute if score nativeManaSystem spellAssembly.config matches 0 run tellraw @s [{"text":"", "font": "minecraft:default"},{"score":{"name":"nativeManaSystem","objective":"spellAssembly.config"}, "font": "spell_assembly:util","hoverEvent":{"action":"show_text","contents":{"translate":"config.toggle.info.on"}},"clickEvent": {"action": "run_command", "value": "/function spell_assembly:_util/z_never_execute_this/config_buttons/toggle_native_mana_system"}},{"translate":"config.nativemanasystem"}]
execute if score nativeManaSystem spellAssembly.config matches 1 run tellraw @s [{"text":"", "font": "minecraft:default"},{"score":{"name":"nativeManaSystem","objective":"spellAssembly.config"}, "font": "spell_assembly:util","hoverEvent":{"action":"show_text","contents":{"translate":"config.toggle.info.off"}},"clickEvent": {"action": "run_command", "value": "/function spell_assembly:_util/z_never_execute_this/config_buttons/toggle_native_mana_system"}},{"translate":"config.nativemanasystem"}]
tellraw @s ""

# Mana cost multiplier
execute if score manaCostMultiplier spellAssembly.config matches 0 run tellraw @s [{"text":"", "font": "minecraft:default"},{"score":{"name":"manaCostMultiplier","objective":"spellAssembly.config"}, "font": "spell_assembly:util","hoverEvent":{"action":"show_text","contents":{"translate":"config.toggle.info.on"}},"clickEvent": {"action": "run_command", "value": "/function spell_assembly:_util/z_never_execute_this/config_buttons/toggle_mana_cost_multiplier"}},{"translate":"config.manacostmultiplier"}]
execute if score manaCostMultiplier spellAssembly.config matches 1 run tellraw @s [{"text":"", "font": "minecraft:default"},{"score":{"name":"manaCostMultiplier","objective":"spellAssembly.config"}, "font": "spell_assembly:util","hoverEvent":{"action":"show_text","contents":{"translate":"config.toggle.info.off"}},"clickEvent": {"action": "run_command", "value": "/function spell_assembly:_util/z_never_execute_this/config_buttons/toggle_mana_cost_multiplier"}},{"translate":"config.manacostmultiplier"}]
tellraw @s ""

# Mana exhaustion
execute if score manaExhaustion spellAssembly.config matches 0 run tellraw @s [{"text":"", "font": "minecraft:default"},{"score":{"name":"manaExhaustion","objective":"spellAssembly.config"}, "font": "spell_assembly:util","hoverEvent":{"action":"show_text","contents":{"translate":"config.toggle.info.on"}},"clickEvent": {"action": "run_command", "value": "/function spell_assembly:_util/z_never_execute_this/config_buttons/toggle_mana_exhaustion"}},{"translate":"config.manaexhaustion"}]
execute if score manaExhaustion spellAssembly.config matches 1 run tellraw @s [{"text":"", "font": "minecraft:default"},{"score":{"name":"manaExhaustion","objective":"spellAssembly.config"}, "font": "spell_assembly:util","hoverEvent":{"action":"show_text","contents":{"translate":"config.toggle.info.off"}},"clickEvent": {"action": "run_command", "value": "/function spell_assembly:_util/z_never_execute_this/config_buttons/toggle_mana_exhaustion"}},{"translate":"config.manaexhaustion"}]
tellraw @s ""