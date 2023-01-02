execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:spruce_slab[type=double,waterlogged=true] unless entity @e[type=marker,tag=ds,distance=..0.1] run summon marker ~ ~ ~ {Tags:["ds","customblock"]}

execute if entity @s[distance=..5] positioned ^ ^ ^0.3 run function ct:blocks/raycast