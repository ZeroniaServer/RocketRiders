$execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:distance":{x:{min:1.5}}}} run return run execute positioned ~ ~-1 ~ if block ~ ~ ~ #custom:air unless entity @e[limit=1,distance=..5,type=player,gamemode=!spectator] run setblock ~ ~ ~ $(back)

$execute positioned ~ ~-1 ~-1 if block ~ ~ ~ #custom:air unless entity @e[limit=1,distance=..5,type=player,gamemode=!spectator] run setblock ~ ~ ~ $(back)
$execute positioned ~ ~-1 ~ if block ~ ~ ~ #custom:air unless entity @e[limit=1,distance=..5,type=player,gamemode=!spectator] run setblock ~ ~ ~ $(back)
$execute positioned ~ ~-1 ~1 if block ~ ~ ~ #custom:air unless entity @e[limit=1,distance=..5,type=player,gamemode=!spectator] run setblock ~ ~ ~ $(back)
