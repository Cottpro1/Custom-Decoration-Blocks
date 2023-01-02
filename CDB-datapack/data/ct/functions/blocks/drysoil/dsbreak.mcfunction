setblock ~ ~ ~ air

kill @e[type=item,nbt={Item:{id:"minecraft:spruce_slab"}},distance=..1]

summon item ~ ~ ~ {Motion:[0.03,0.28,0.03],Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"translate":"item.minecraft.dry_soil","italic":false}'},CustomModelData:21,EntityTag:{Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"11","italic":false}'}}}}}}}

kill @s