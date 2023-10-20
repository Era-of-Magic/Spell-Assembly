
# Validates if particles exist and work
scoreboard players set @s spellAssembly.hasParticles 0
$function spell_assembly:spells/particles/validate_particles with storage spell_assembly:spells Spells[{ID:$(ID)}]

execute if score showErrors spellAssembly.config matches 1 if score @s spellAssembly.hasParticles matches 0 run function spell_assembly:debug/error_messages/spell_particles_missing with entity @s item.tag

# Redirects the spells logic to the right function
$function spell_assembly:spells/casting_type/$(Type) with storage spell_assembly:spells Spells[{ID:$(ID)}]
