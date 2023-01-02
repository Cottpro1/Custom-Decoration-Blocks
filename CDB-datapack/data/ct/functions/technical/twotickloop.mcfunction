schedule function ct:technical/twotickloop 2t replace

#raycast

execute as @a at @s anchored eyes run function ct:blocks/raycast


#block breaking/placing

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"11","italic":false}'}}}}] at @s run function ct:blocks/drysoil/dsplace

execute as @e[type=marker,tag=ds] at @s unless block ~ ~ ~ spruce_slab run function ct:blocks/drysoil/dsbreak


#fix blocks

execute as @e[type=marker,tag=ds] at @s if block ~ ~ ~ minecraft:spruce_slab[type=double,waterlogged=false] run setblock ~ ~ ~ minecraft:spruce_slab[type=double,waterlogged=true]