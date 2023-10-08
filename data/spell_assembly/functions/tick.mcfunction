
# only player with tag tag=spell_assembly_mana and if native mana system is false
execute if score nativeManaSystem spellAssembly.config matches 1 as @a[tag=spell_assembly_mana] run function spell_assembly:mana/mana



#### Don't touch this
schedule function spell_assembly:tick 1t replace
####
