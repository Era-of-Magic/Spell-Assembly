
tellraw @s {"text":"/!\\ Not enough Mana /!\\","color":"red"}
playsound minecraft:entity.villager.no player @s ~ ~ ~
scoreboard players operation @s spellAssembly.mana += cost spellAssembly.mana
