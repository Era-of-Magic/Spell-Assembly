
schedule clear spell_assembly:tick

scoreboard objectives remove spellAssembly.config

# Constants
scoreboard objectives remove const
scoreboard players set 100 const 100

# Mana management
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

