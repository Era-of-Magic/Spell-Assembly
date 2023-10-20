kill
say beam
#$execute store result score @s spellAssembly.raycastSteps run data get storage spell_assembly:spells Spells[{ID:$(ID)}].CastValues.Steps

#$function spell_assembly:spells/thin_raycast/ray with storage spell_assembly:spells Spells[{ID:$(ID)}]
