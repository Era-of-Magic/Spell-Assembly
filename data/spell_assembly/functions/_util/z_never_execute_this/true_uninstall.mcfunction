
# Stop functions
schedule clear spell_assembly:tick

# Remove data storages
data remove storage spell_assembly:guis Guis
data remove storage spell_assembly:spells Spells

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
scoreboard objectives remove spellAssembly.id
scoreboard objectives remove spellAssembly.tempLinkId

# Remove entities and blocks
execute as @e[type=item_display,tag=fusion_altar_block] at @s run function spell_assembly:fusion_altar/block_checks/delete


### Uninstall Message
tellraw @a {"translate": "uninstall.done","color": "red"}

