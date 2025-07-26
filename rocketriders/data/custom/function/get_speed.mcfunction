execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:0.1}}}} run return 0

data modify storage rocketriders:main get_movement set value {min:0,max:200,mean:100}
scoreboard players set $min var 0
scoreboard players set $max var 200000
scoreboard players set $mean var 100000
return run function custom:_get_movement_/speed {min:0,max:200,mean:100}
