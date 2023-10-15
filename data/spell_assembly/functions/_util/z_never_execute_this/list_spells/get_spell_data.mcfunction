
$data modify storage spell_assembly:temp data.Name set from storage spell_assembly:spells Spells[$(SpellSlot)].Name.text
$data modify storage spell_assembly:temp data.NameColor set from storage spell_assembly:spells Spells[$(SpellSlot)].Name.color
$data modify storage spell_assembly:temp data.Description set from storage spell_assembly:spells Spells[$(SpellSlot)].Description.text
$data modify storage spell_assembly:temp data.DescriptionColor set from storage spell_assembly:spells Spells[$(SpellSlot)].Description.color
$data modify storage spell_assembly:temp data.ID set from storage spell_assembly:spells Spells[$(SpellSlot)].ID

function spell_assembly:_util/z_never_execute_this/list_spells/output_spell_info with storage spell_assembly:temp data
