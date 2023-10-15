
tellraw @s {"text":"/!\\ Not enough Mana /!\\","color":"red"}
playsound minecraft:entity.villager.no player @s ~ ~ ~
scoreboard players operation @s spellAssembly.mana += cost temp
scoreboard players set success temp 1