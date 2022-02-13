execute as @e[tag=Bot] run function rr_bots:action/missile/hasmissile
execute as @e[tag=Bot,tag=!BasePatrol,tag=!SpawningMissile,scores={AI_HasMis=1..},limit=1,sort=random] run tag @s add BotSpawnMis
execute as @e[tag=PatrolTrader] run function rr_bots:action/missile/killtrader

execute as @e[tag=Bot,tag=!SpawningMissile,tag=!BasePatrol,tag=BotSpawnMis,scores={AI_HasMis=1..}] at @s run function rr_bots:action/missile/start
tag @e[tag=BotSpawnMis] remove BotSpawnMis

execute as @e[tag=Bot,tag=SpawningMissile,limit=1,sort=random] at @s run function rr_bots:action/missile/pick
execute as @e[tag=Bot,tag=SpawningMissile] at @s run function rr_bots:action/missile/tp
scoreboard players add @e[tag=BotMissile] CmdData 1
kill @e[tag=BotMissile,scores={CmdData=150..}]

execute as @e[tag=BotMissile] at @s run particle soul_fire_flame ~ ~ ~ 0 1 0 0 3 force