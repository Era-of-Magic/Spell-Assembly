
execute store result score costMultiplier temp run data get entity @s SelectedItem.tag.ManaCostMultiplier
scoreboard players operation cost temp *= costMultiplier temp
scoreboard players operation cost temp /= 100 const
