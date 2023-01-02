schedule function ct:technical/secondloop 10t replace

#misc code


execute as @e[type=!minecraft:marker,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud] at @s run function ct:blocks/geyser/testdamage


execute at @a if predicate ct:world/night run particle minecraft:end_rod ~ ~ ~ 20 3 20 0.01 1


execute at @a unless entity @e[type=marker,tag=loaded,distance=..100] run function ct:loadores


execute as @e[type=marker,tag=ge] at @s if block ~ ~1 ~ water run particle minecraft:bubble_column_up ~ ~ ~ 0.2 5 0.2 0 1


execute as @a[nbt={Inventory:[{id:"minecraft:vex_spawn_egg"}]},scores={craftcarpentertable=1..}] run function ct:give/carpenterstable

execute as @a[nbt={Inventory:[{id:"minecraft:shulker_spawn_egg"}]},scores={craftflute=1..}] run function ct:give/flute


execute as @a[nbt={Inventory:[{id:"minecraft:husk_spawn_egg"}]},scores={craftwhitebelt=1..}] run function ct:give/whitebelt


execute as @e[type=armor_stand,tag=ct] at @s run item replace block ~ ~-1 ~ container.9 with stick{display:{Name:'{"text":" "}'},CustomModelData:12} 1

clear @a stick{display:{Name:'{"text":" "}'},CustomModelData:12}

kill @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:12}}}]


execute as @a[nbt={Inventory:[{id:"minecraft:frog_spawn_egg"}]},scores={craftnecromancytable=1..}] run function ct:give/necromancytable

execute as @e[type=armor_stand,tag=nt] at @s run item replace block ~ ~-1 ~ container.9 with stick{display:{Name:'{"text":" "}'},CustomModelData:23} 1

clear @a stick{display:{Name:'{"text":" "}'},CustomModelData:23}

function ct:blocks/necromancytable/necromancygui

kill @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":" "}'},CustomModelData:23}}}]


execute as @a[nbt={Inventory:[{id:"minecraft:bee_spawn_egg"}]},scores={craftdripstonebricks=1..}] run function ct:give/dripstonebricks


execute as @a[nbt={Inventory:[{id:"minecraft:creeper_spawn_egg"}]},scores={craftazaleabundle=1..}] run function ct:give/bagofazaleapetals


execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:'{"text":"confusion_vial_place_holder"}'}}}}] run data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Vial of Confusion","color":"white","italic":false}'},CustomModelData:3,confusionvial:1,rc:1,Enchantments:[{}]}}}


execute as @a[nbt={Inventory:[{id:"minecraft:bat_spawn_egg"}]},scores={craftpackedsnow=1..}] run function ct:give/packedsnow


execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:'{"text":"bat_wing_place_holder"}'}}}}] run data merge entity @s {Item:{id:"minecraft:rabbit_hide",tag:{display:{Name:'{"text":"Bat Wing","italic":false}'},CustomModelData:1}}}


execute as @a[nbt={Inventory:[{id:"minecraft:horse_spawn_egg"}]},scores={craftarmorstandeditor=1..}] run function ct:give/armorstandeditor

execute at @a as @a[nbt={SelectedItem:{tag:{aseditor:1}}},scores={sn=1..}] at @s run function ct:posearmorstand

execute as @e[type=armor_stand] at @s if entity @s[scores={pose=..3}] run data merge entity @s {Pose:{LeftArm:[40f,0f,0f],RightArm:[-40f,0f,0f],LeftLeg:[40f,0f,0f],RightLeg:[-40f,0f,0f]}}

execute as @e[type=armor_stand] if entity @s[scores={pose=4..6}] at @s run data merge entity @s {Pose:{LeftArm:[0f,0f,-90f],RightArm:[0f,0f,90f]}}

execute as @e[type=armor_stand] if entity @s[scores={pose=7..9}] at @s run data merge entity @s {Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

execute as @e[type=armor_stand] if entity @s[scores={pose=10..12}] at @s run data merge entity @s {Pose:{LeftArm:[-40f,-40f,-40f],RightArm:[-40f,40f,40f],LeftLeg:[-50f,-40f,100f],RightLeg:[-50f,40f,-100f]}}

execute as @e[type=armor_stand] if entity @s[scores={pose=13..15}] at @s run data merge entity @s {Pose:{LeftArm:[-60f,0f,0f],RightArm:[-40f,0f,0f],RightLeg:[-30f,0f,0f],Head:[0f,0f,20f]}}

execute as @e[type=armor_stand] if entity @s[scores={pose=16..18}] at @s run data merge entity @s {Pose:{LeftArm:[-10f,0f,-10f],RightArm:[-10f,0f,10f]}}

execute as @e[type=armor_stand] if entity @s[scores={pose=19..}] at @s run scoreboard players reset @s pose


execute as @a[nbt={Inventory:[{id:"minecraft:phantom_spawn_egg"}]},scores={craftlightmeter=1..}] run function ct:give/lightmeter

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{lightmeter:1}}]}] at @s if predicate ct:world/light_level_0 run item replace entity @s weapon.offhand with wooden_sword{display:{Name:'{"text":"Light Meter","italic":false}',Lore:['{"text":"all hostile mobs can spawn","color":"blue","italic":false}']},CustomModelData:13,lightmeter:1} 1

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{lightmeter:1}}]}] at @s if predicate ct:world/light_level_7 run item replace entity @s weapon.offhand with wooden_sword{display:{Name:'{"text":"Light Meter","italic":false}',Lore:['{"text":"all nether mobs, endermen","color":"blue","italic":false}','{"text":"(in the end, nether and overworld only), silverfish","color":"blue","italic":false}','{"text":"and slimes can spawn","color":"blue","italic":false}']},CustomModelData:14,lightmeter:1} 1

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{lightmeter:1}}]}] at @s if predicate ct:world/light_level_11 run item replace entity @s weapon.offhand with wooden_sword{display:{Name:'{"text":"Light Meter","italic":false}',Lore:['{"text":"blazes, zombified piglins","color":"blue","italic":false}','{"text":"and endermen (only in the end) can spawn","color":"blue","italic":false}']},CustomModelData:15,lightmeter:1} 1

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{lightmeter:1}}]}] at @s if predicate ct:world/light_level_15 run item replace entity @s weapon.offhand with wooden_sword{display:{Name:'{"text":"Light Meter","italic":false}',Lore:['{"text":"all peaceful mobs can spawn","color":"blue","italic":false}']},CustomModelData:16,lightmeter:1} 1


execute at @a as @a[scores={playmusic=1..}] at @s run function ct:stopmusic


scoreboard players enable @a testload

execute as @a[scores={testload=1..}] at @s run function ct:testload

scoreboard players enable @a optimize

execute as @a[scores={optimize=1..}] at @s run function ct:clearlag/trigger


execute as @a[nbt={Inventory:[{id:"minecraft:ravager_spawn_egg"}]},scores={craftchocolatemilk=1..}] run function ct:give/chocolatemilk

execute as @a[nbt={Inventory:[{id:"minecraft:panda_spawn_egg"}]},scores={craftcupcake=1..}] run function ct:give/cupcake


execute as @a[nbt={Inventory:[{id:"minecraft:zoglin_spawn_egg"}]},scores={crafttungstenpickaxe=1..}] run function ct:give/tungstenpickaxe

execute as @a[nbt={Inventory:[{id:"minecraft:sheep_spawn_egg"}]},scores={crafttungstenshovel=1..}] run function ct:give/tungstenshovel

execute as @a[nbt={Inventory:[{id:"minecraft:slime_spawn_egg"}]},scores={crafttungstensword=1..}] run function ct:give/tungstensword

execute as @a[nbt={Inventory:[{id:"minecraft:piglin_spawn_egg"}]},scores={crafttungstenaxe=1..}] run function ct:give/tungstenaxe

execute as @a[nbt={Inventory:[{id:"minecraft:pig_spawn_egg"}]},scores={crafttungstenhoe=1..}] run function ct:give/tungstenhoe

execute as @a[nbt={Inventory:[{id:"minecraft:goat_spawn_egg"}]},scores={crafttungstenblock=1..}] run function ct:give/tungstenblock

execute as @a[nbt={Inventory:[{id:"minecraft:pillager_spawn_egg"}]},scores={crafttungstenhelmet=1..}] run function ct:give/tungstenhelmet

execute as @a[nbt={Inventory:[{id:"minecraft:skeleton_spawn_egg"}]},scores={crafttungstenchestplate=1..}] run function ct:give/tungstenchestplate

execute as @a[nbt={Inventory:[{id:"minecraft:squid_spawn_egg"}]},scores={crafttungstenleggings=1..}] run function ct:give/tungstenleggings

execute as @a[nbt={Inventory:[{id:"minecraft:zombie_spawn_egg"}]},scores={crafttungstenboots=1..}] run function ct:give/tungstenboots

execute as @a[advancements={ct:armordamaged=true}] at @s run function ct:damagearmor/geartest

