# Ramp Power
# maximum explosion radius is 1.7333 times explosion power, rounded up
execute if score $actual_explosion_power var matches 10.. if predicate custom:intersects_portal/radius_18 run scoreboard players set $actual_explosion_power var 9
execute if score $actual_explosion_power var matches 9 if predicate custom:intersects_portal/radius_16 run scoreboard players set $actual_explosion_power var 8
execute if score $actual_explosion_power var matches 8 if predicate custom:intersects_portal/radius_14 run scoreboard players set $actual_explosion_power var 7
execute if score $actual_explosion_power var matches 7 if predicate custom:intersects_portal/radius_13 run scoreboard players set $actual_explosion_power var 6
execute if score $actual_explosion_power var matches 6 if predicate custom:intersects_portal/radius_11 run scoreboard players set $actual_explosion_power var 5
execute if score $actual_explosion_power var matches 5 if predicate custom:intersects_portal/radius_9 run scoreboard players set $actual_explosion_power var 4
execute if score $actual_explosion_power var matches 4 if predicate custom:intersects_portal/radius_7 run scoreboard players set $actual_explosion_power var 3
execute if score $actual_explosion_power var matches 3 if predicate custom:intersects_portal/radius_6 run scoreboard players set $actual_explosion_power var 2
execute if score $actual_explosion_power var matches 2 if predicate custom:intersects_portal/radius_4 run scoreboard players set $actual_explosion_power var 1
execute if score $actual_explosion_power var matches 1 if predicate custom:intersects_portal/radius_2 run scoreboard players set $actual_explosion_power var 0
