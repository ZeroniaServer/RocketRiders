execute if predicate game:portal_type/default if block 11 38 74 nether_portal run scoreboard players set $y1port var 1
execute if predicate game:portal_type/default if block 13 38 74 nether_portal run scoreboard players set $y2port var 1
execute if predicate game:portal_type/default if block 11 38 -74 nether_portal run scoreboard players set $b1port var 1
execute if predicate game:portal_type/default if block 13 38 -74 nether_portal run scoreboard players set $b2port var 1

#Crusade Mode override behavior
execute if predicate game:gamemode_components/crusade_portals if block 4 45 67 nether_portal run scoreboard players set $yport var 1
execute if predicate game:gamemode_components/crusade_portals if block 4 45 -67 nether_portal run scoreboard players set $bport var 1