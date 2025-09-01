advancement revoke @s only custom:event/player_places_building_block_too_high

title @s actionbar {color:"red",translate:"build.tooHigh",with:[159]}

execute anchored eyes positioned ^ ^ ^ align y if predicate {condition:"minecraft:location_check",predicate:{position:{y:{min:174}}}} run return run fill ~-8 ~-8 ~-8 ~8 181 ~8 air replace #custom:building_blocks
execute anchored eyes positioned ^ ^ ^ align y if predicate {condition:"minecraft:location_check",predicate:{position:{y:{min:169,max:173}}}} run return run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 air replace #custom:building_blocks
execute anchored eyes positioned ^ ^ ^ align y if predicate {condition:"minecraft:location_check",predicate:{position:{y:{min:152,max:168}}}} run return run fill ~-8 160 ~-8 ~8 ~8 ~8 air replace #custom:building_blocks
execute anchored eyes positioned ^ ^ ^ align y run fill ~-8 160 ~-8 ~8 168 ~8 air replace #custom:building_blocks
