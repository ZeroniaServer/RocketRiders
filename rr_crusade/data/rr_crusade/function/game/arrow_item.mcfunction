scoreboard players set #arrowowner crusadechange 0
execute on origin if entity @s[type=player,scores={crusadekit=2},team=!Spectator,team=!Lobby] run scoreboard players set #arrowowner crusadechange 1

execute if score #arrowowner crusadechange matches 0 run data merge entity @s[tag=!nopickup] {PickupDelay:100000}
execute if score #arrowowner crusadechange matches 0 run tag @s add nopickup

execute if score #arrowowner crusadechange matches 1 run data merge entity @s[tag=nopickup] {PickupDelay:5}
execute if score #arrowowner crusadechange matches 1 run tag @s remove nopickup

execute unless entity @a[limit=1,distance=..2,scores={crusadekit=2},team=!Spectator,team=!Lobby] run data modify entity @s Owner set value [I;0,0,0,0]
execute unless entity @a[limit=1,distance=..2,scores={crusadekit=2},team=!Spectator,team=!Lobby] run data modify entity @s Thrower set value [I;0,0,0,0]

execute if score #arrowowner crusadechange matches 0 run data modify entity @s Owner set from entity @p[distance=..2,scores={crusadekit=2},team=!Spectator,team=!Lobby] UUID
execute if score #arrowowner crusadechange matches 0 run data modify entity @s Thrower set from entity @p[limit=1,distance=..2,scores={crusadekit=2},team=!Spectator,team=!Lobby] UUID