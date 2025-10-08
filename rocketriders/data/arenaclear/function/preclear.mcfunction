##Kill all entities in the arena upon return to lobby
execute as @e[x=0,type=!player,predicate=custom:belowroof,predicate=!custom:has_vehicle] run function custom:kill_entity_and_passengers
