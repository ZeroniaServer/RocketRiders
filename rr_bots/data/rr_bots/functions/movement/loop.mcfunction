#> Base Patrol
execute as @e[tag=Bot] run function rr_bots:movement/basepatrol/tp
execute as @e[tag=PatrolTrader] run function rr_bots:movement/basepatrol/killtrader

execute as @e[tag=Bot,tag=!BasePatrol,tag=!SpawningMissile,limit=1,sort=random] at @s unless entity @s[scores={AI_HasMis=1..}] run function rr_bots:movement/basepatrol/start