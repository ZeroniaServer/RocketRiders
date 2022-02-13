execute if entity @s[tag=BlueBot] run summon wandering_trader ~ ~-1000 ~ {Silent:1b,Tags:["SpawningTrader","Blue","NewSpawningTrader"],Invulnerable:1b,Attributes:[{Name:"generic.movement_speed",Base:1.05f}],Offers:{Recipes:[]}}
execute if entity @s[tag=YellowBot] run summon wandering_trader ~ ~-1000 ~ {Silent:1b,Tags:["SpawningTrader","Yellow","NewSpawningTrader"],Invulnerable:1b,Attributes:[{Name:"generic.movement_speed",Base:1.05f}],Offers:{Recipes:[]}}

execute as @e[tag=NewSpawningTrader] run data modify entity @s WanderTarget.X set from entity @s Pos[0]
execute as @e[tag=NewSpawningTrader] run data modify entity @s WanderTarget.Y set value 55
execute as @e[tag=NewSpawningTrader,tag=Blue] run data modify entity @s WanderTarget.Z set value 67
execute as @e[tag=NewSpawningTrader,tag=Yellow] run data modify entity @s WanderTarget.Z set value -67

execute as @e[tag=PatrolLocation] at @s

execute at @s store result score @e[tag=NewSpawningTrader] AI_Data run scoreboard players get @s AI_Data
execute as @e[tag=NewSpawningTrader] at @s run tp @s ~ ~1000 ~

tag @e[tag=NewSpawningTrader] remove NewSpawningTrader

tag @s add SpawningMissile