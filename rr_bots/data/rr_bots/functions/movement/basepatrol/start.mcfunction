#execute store result score #current AI_Data run scoreboard players get @s AI_Data
#execute as @e[tag=PatrolTrader] if score @s AI_Data = #current AI_Data run tp @s ~ ~-2000 ~
#execute as @e[tag=PatrolTrader] if score @s AI_Data = #current AI_Data run kill @s

execute if entity @s[tag=YellowBot] run summon wandering_trader ~ ~-1000 ~ {Silent:1b,Tags:["PatrolTrader","Yellow","NewPatrolTrader"],Invulnerable:1b,Attributes:[{Name:"generic.movement_speed",Base:1.05f}],Offers:{Recipes:[]}}
execute if entity @s[tag=BlueBot] run summon wandering_trader ~ ~-1000 ~ {Silent:1b,Tags:["PatrolTrader","Blue","NewPatrolTrader"],Invulnerable:1b,Attributes:[{Name:"generic.movement_speed",Base:1.05f}],Offers:{Recipes:[]}}

execute if entity @s[tag=YellowBot] run summon marker 38 64 52 {Tags:["patrolX","PatrolRNG"]}
execute if entity @s[tag=BlueBot] run summon marker 38 64 -66 {Tags:["patrolX","PatrolRNG"]}
scoreboard players set @e[tag=patrolX] RNGmax 42
execute if entity @s[tag=YellowBot] run summon marker 38 64 52 {Tags:["patrolZ","PatrolRNG"]}
execute if entity @s[tag=BlueBot] run summon marker 38 64 -66 {Tags:["patrolZ","PatrolRNG"]}
scoreboard players set @e[tag=patrolZ] RNGmax 15

execute as @e[tag=patrolX] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=patrolZ] store result score @s RNGscore run data get entity @s UUID[0]

execute as @e[tag=patrolX] run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @e[tag=patrolZ] run scoreboard players operation @s RNGscore %= @s RNGmax

execute as @e[tag=PatrolRNG] at @s run function rr_bots:movement/basepatrol/confirmlocation

execute as @e[tag=NewPatrolTrader] run data modify entity @s WanderTarget.X set from entity @e[tag=patrolX,limit=1,sort=nearest] Pos[0]
execute as @e[tag=NewPatrolTrader] run data modify entity @s WanderTarget.Y set value 75
execute as @e[tag=NewPatrolTrader] run data modify entity @s WanderTarget.Z set from entity @e[tag=patrolZ,limit=1,sort=nearest] Pos[2]

execute as @e[tag=PatrolLocation] at @s

execute at @s store result score @e[tag=NewPatrolTrader] AI_Data run scoreboard players get @s AI_Data
execute as @e[tag=NewPatrolTrader] at @s run tp @s ~ ~1000 ~

kill @e[tag=PatrolRNG]
tag @e[tag=NewPatrolTrader] remove NewPatrolTrader

tag @s add BasePatrol