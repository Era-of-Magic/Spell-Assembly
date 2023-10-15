
scoreboard players set spellAssembly.raycastSteps temp 23

scoreboard players operation id temp = @s spellAssembly.id 

function spell_assembly:spells/thin_raycast/ray
