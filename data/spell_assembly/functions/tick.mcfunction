
# only player with tag mana_user and if native mana system is false
execute if score nativeManaSystem spellAssembly.config matches 0 as @a[tag=mana_user] run function spell_assembly:mana


#### Don't touch this
schedule function spell_assembly:tick 1t
####