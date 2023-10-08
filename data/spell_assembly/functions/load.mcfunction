
title @a times 0t 10t 0t



### Configs

scoreboard objectives add spellAssembly.config dummy
execute unless score configDefaultsSet spellAssembly.config matches 1 run function spell_assembly:_util/default_config


 
### Scoreboards

# temporary scores
scoreboard objectives add temp dummy

# constants
scoreboard objectives add const dummy
scoreboard players set 100 const 100
scoreboard players set 2 const 2

# Mana management
scoreboard objectives add spellAssembly.mana dummy
scoreboard objectives add spellAssembly.manaParts dummy
scoreboard objectives add spellAssembly.manaMax dummy
scoreboard objectives add spellAssembly.manaFillRate dummy
scoreboard objectives add spellAssembly.manaExhaustion dummy
scoreboard objectives add spellAssembly.manaExhaustionFillRate dummy
scoreboard objectives add spellAssembly.manaExhaustionCooldown dummy
scoreboard objectives add spellAssembly.displayMana dummy

# Internal functionalities
scoreboard objectives add spellAssembly.player.left custom:leave_game
scoreboard objectives add spellAssembly.id dummy
scoreboard objectives add spellAssembly.tempLinkId dummy
scoreboard objectives add spellAssembly.slowcastSteps dummy
scoreboard objectives add spellAssembly.slowcastDuration dummy



### Storages Setup
data merge storage spell_assembly:guis {Guis:{}}
function #spell_assembly:storage_setups

execute unless data storage spell_assembly:spells Spells run data merge storage spell_assembly:spells {Spells:{}}

data merge storage spell_assembly:temp {data:{}}



### Functions
schedule clear spell_assembly:tick
function spell_assembly:tick



### Load Message
tellraw @a {"translate": "load.datapack","color": "yellow"}