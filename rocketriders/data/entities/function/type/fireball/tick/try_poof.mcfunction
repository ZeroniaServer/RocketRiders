execute if predicate entities:origin_team/blue if entity @e[limit=1,distance=..5,predicate=entities:type/canopy/brain,predicate=entities:origin_team/blue] unless entity @e[limit=1,distance=..6,predicate=entities:type/canopy/brain,predicate=entities:origin_team/yellow] unless entity @a[limit=1,distance=..7,predicate=custom:team/yellow] run return 0
execute if predicate entities:origin_team/yellow if entity @e[limit=1,distance=..5,predicate=entities:type/canopy/brain,predicate=entities:origin_team/yellow] unless entity @e[limit=1,distance=..6,predicate=entities:type/canopy/brain,predicate=entities:origin_team/blue] unless entity @a[limit=1,distance=..7,predicate=custom:team/blue] run return 0

execute if entity @e[predicate=entities:type/canopy/brain,predicate=entities:origin_team/blue,distance=..2,scores={entity.age=2..399}] run tag @e[predicate=entities:canopy,predicate=entities:origin_team/blue,distance=..2,scores={entity.age=2..399}] add canopy.burn
execute if entity @e[predicate=entities:type/canopy/brain,predicate=entities:origin_team/yellow,distance=..2,scores={entity.age=2..399}] run tag @e[predicate=entities:canopy,predicate=entities:origin_team/yellow,distance=..2,scores={entity.age=2..399}] add canopy.burn

fill ~-1.4 ~-1.4 ~-1.4 ~1.4 ~1.4 ~1.4 fire replace #minecraft:banners

execute store result score $leaves_replaced var run fill ~-1.4 ~-1.4 ~-1.4 ~1.4 ~1.4 ~1.4 fire replace #minecraft:leaves
execute if score $leaves_replaced var matches 1.. run playsound entity.blaze.shoot master @a[x=0] ~ ~ ~ 2 1

execute store result score $logs_replaced var run fill ~-1.4 ~-1.4 ~-1.4 ~1.4 ~1.4 ~1.4 fire replace oak_log
execute if score $logs_replaced var matches 1.. run playsound entity.blaze.shoot master @a[x=0] ~ ~ ~ 2 1
