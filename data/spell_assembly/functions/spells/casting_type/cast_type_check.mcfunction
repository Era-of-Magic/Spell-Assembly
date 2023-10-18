
# Validates if particles exist and work
$execute store result score @s spellAssembly.hasParticles run function spell_assembly:spells/particles/validate_particles with storage spell_assembly:spells Spells[{ID:$(ID)}]

# TODO: Add a config setting for debug messages 

execute if score @s spellAssembly.hasParticles matches 0 run function spell_assembly:debug/error_messages/spell_particles_missing with entity @s item.tag

# Redirects the spells logic to the right function
$function spell_assembly:spells/casting_type/$(Type) with storage spell_assembly:spells Spells[{ID:$(ID)}]
