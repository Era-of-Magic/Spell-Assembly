
tellraw @s [{"text": "\n\n\n---=== ","color": "gold"},{"translate": "spell.list.header","color": "gold"},{"text": " ===---\n","color": "gold"}]

execute store result score spellCount temp run data get storage spell_assembly:spells Spells
scoreboard players set temp temp 0

data remove storage spell_assembly:temp data

function spell_assembly:_util/z_never_execute_this/list_spells/loop_through_spells

tellraw @s [{"text": "\n---=====================---\n","color": "gold"}]
