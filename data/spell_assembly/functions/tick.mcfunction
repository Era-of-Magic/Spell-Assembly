
# Fix custom ui display bug
execute as @a[scores={spellAssembly.player.left=1..}] run function spell_assembly:_util/z_never_execute_this/fix_title_timer


# only player with tag tag=spell_assembly_mana and if native mana system is false
execute if score nativeManaSystem spellAssembly.config matches 1 as @a[tag=spell_assembly_mana] run function spell_assembly:mana/mana


#### Don't touch this
schedule function spell_assembly:tick 1t replace
####