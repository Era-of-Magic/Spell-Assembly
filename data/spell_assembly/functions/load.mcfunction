
function spell_assembly:tick

### Configs

scoreboard objectives add spellAssembly.config dummy
execute unless score configDefaultsSet spellAssembly.config matches 1 run function spell_assembly:default_config




### Scoreboards

# temporary scores
scoreboard objectives add temp dummy

# constants
scoreboard objectives add const dummy
scoreboard players set 100 const 100

# Mana management
scoreboard objectives add spellAssembly.mana dummy
scoreboard objectives add spellAssembly.manaParts dummy
scoreboard objectives add spellAssembly.manaMax dummy
scoreboard objectives add spellAssembly.manaFillRate dummy
scoreboard objectives add spellAssembly.manaExhaustion dummy
scoreboard objectives add spellAssembly.manaExhaustionFillRate dummy
scoreboard objectives add spellAssembly.manaExhaustionCooldown dummy
scoreboard objectives add spellAssembly.dispplayMana dummy



### Set Scores
