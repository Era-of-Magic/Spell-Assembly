
execute align xyz positioned ~ ~-1 ~ run kill @e[type=item,dx=0,nbt={Item:{tag:{GuiItem:1b}}}]
execute align xyz positioned ~ ~-.1 ~ run kill @e[type=item_display,tag=fusion_altar_rods,dx=0]
loot spawn ~ ~-.5 ~ loot spell_assembly:blocks/fusion_altar
kill
