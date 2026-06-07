##Randomized paintings for Lobby easter eggs
# choose random painting
execute store result score $painting var run random value 0..7

# prevent the same painting being chosen
execute if score $painting var matches 0 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:components":{"minecraft:painting/variant":"minecraft:aztec"}}} run scoreboard players add $painting var 1
execute if score $painting var matches 1 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:components":{"minecraft:painting/variant":"minecraft:alban"}}} run scoreboard players add $painting var 1
execute if score $painting var matches 2 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:components":{"minecraft:painting/variant":"minecraft:aztec2"}}} run scoreboard players add $painting var 1
execute if score $painting var matches 3 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:components":{"minecraft:painting/variant":"minecraft:bomb"}}} run scoreboard players add $painting var 1
execute if score $painting var matches 4 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:components":{"minecraft:painting/variant":"minecraft:kebab"}}} run scoreboard players add $painting var 1
execute if score $painting var matches 5 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:components":{"minecraft:painting/variant":"minecraft:plant"}}} run scoreboard players add $painting var 1
execute if score $painting var matches 6 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:components":{"minecraft:painting/variant":"minecraft:wasteland"}}} run scoreboard players add $painting var 1
execute if score $painting var matches 7 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:components":{"minecraft:painting/variant":"minecraft:meditative"}}} run scoreboard players add $painting var 1
execute if score $painting var matches 8 run scoreboard players set $painting var 0

# apply new painting
execute if score $painting var matches 0 run data modify entity @s variant set value "minecraft:aztec"
execute if score $painting var matches 1 run data modify entity @s variant set value "minecraft:alban"
execute if score $painting var matches 2 run data modify entity @s variant set value "minecraft:aztec2"
execute if score $painting var matches 3 run data modify entity @s variant set value "minecraft:bomb"
execute if score $painting var matches 4 run data modify entity @s variant set value "minecraft:kebab"
execute if score $painting var matches 5 run data modify entity @s variant set value "minecraft:plant"
execute if score $painting var matches 6 run data modify entity @s variant set value "minecraft:wasteland"
execute if score $painting var matches 7 run data modify entity @s variant set value "minecraft:meditative"
