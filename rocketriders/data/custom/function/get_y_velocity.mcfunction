execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{y:{min:0.1}}}} unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{y:{max:-0.1}}}} run return 0

data modify storage rocketriders:main get_movement set value {min:-200,max:200,mean:0}
scoreboard players set $min var -200000
scoreboard players set $max var 200000
scoreboard players set $mean var 0
return run function custom:_get_movement_/y_velocity {min:-200,max:200,mean:0}
