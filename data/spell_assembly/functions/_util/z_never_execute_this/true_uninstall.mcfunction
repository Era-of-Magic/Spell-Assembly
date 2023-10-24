
# Stop functions
schedule clear spell_assembly:tick

# Remove data storages
data remove storage spell_assembly:guis Guis
data remove storage spell_assembly:spells Spells
data remove storage spell_assembly:temp data

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
scoreboard objectives remove spellAssembly.player.left
scoreboard objectives remove spellAssembly.id
scoreboard objectives remove spellAssembly.spellId
scoreboard objectives remove spellAssembly.phases
scoreboard objectives remove spellAssembly.phaseIndex
scoreboard objectives remove spellAssembly.hasParticles
scoreboard objectives remove spellAssembly.tempLinkId
scoreboard objectives remove spellAssembly.raycastSteps
scoreboard objectives remove spellAssembly.slowcastSteps
scoreboard objectives remove spellAssembly.slowcastDuration

# Remove entities and blocks
execute as @e[type=item_display,tag=fusion_altar_block] at @s run function spell_assembly:fusion_altar/block_checks/delete
kill @e[tag=spell_assembly,tag=spell]


### Uninstall Message
tellraw @a {"translate": "uninstall.done","color": "red"}

