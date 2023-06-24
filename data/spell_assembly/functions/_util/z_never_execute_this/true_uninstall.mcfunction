
# Stop functions
schedule clear spell_assembly:tick

# Tags
tag @a[tag=spell_assembly_mana] remove spell_assembly_mana

# Scoreboards
scoreboard objectives remove spellAssembly.config
scoreboard objectives remove const
scoreboard objectives remove spellAssembly.mana
scoreboard objectives remove spellAssembly.manaParts
scoreboard objectives remove spellAssembly.manaMax
scoreboard objectives remove spellAssembly.manaFillRate
scoreboard objectives remove spellAssembly.manaExhaustion
scoreboard objectives remove spellAssembly.manaExhaustionFillRate
scoreboard objectives remove spellAssembly.manaExhaustionCooldown
scoreboard objectives remove spellAssembly.displayMana

### Uninstall Message

tellraw @a {"translate": "uninstall.done","color": "red"}

