##Utility function for clearing Obsidian Shields

execute unless predicate {condition:"location_check",predicate:{position:{y:{min:180}}}} run fill ~-2 ~-1 ~ ~2 ~1 ~ air destroy
execute if predicate {condition:"location_check",predicate:{position:{y:{min:180}}}} unless predicate {condition:"location_check",predicate:{position:{y:{min:181}}}} run fill ~-2 ~-1 ~ ~2 180 ~ air destroy
execute if predicate {condition:"location_check",predicate:{position:{y:{min:181}}}} unless predicate {condition:"location_check",predicate:{position:{y:{min:182}}}} run fill ~-2 180 ~ ~2 180 ~ air destroy

execute unless predicate {condition:"location_check",predicate:{position:{y:{min:179}}}} run fill ~-1 ~-2 ~ ~1 ~2 ~ air destroy
execute if predicate {condition:"location_check",predicate:{position:{y:{min:179}}}} unless predicate {condition:"location_check",predicate:{position:{y:{min:181}}}} run fill ~-1 ~-2 ~ ~1 ~1 ~ air destroy
execute if predicate {condition:"location_check",predicate:{position:{y:{min:181}}}} unless predicate {condition:"location_check",predicate:{position:{y:{min:182}}}} run fill ~-1 ~-2 ~ ~1 180 ~ air destroy
execute if predicate {condition:"location_check",predicate:{position:{y:{min:182}}}} unless predicate {condition:"location_check",predicate:{position:{y:{min:183}}}} run fill ~-1 180 ~ ~1 180 ~ air destroy

kill @s
