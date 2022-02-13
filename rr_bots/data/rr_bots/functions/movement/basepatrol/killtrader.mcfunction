execute store result score #current AI_Data run scoreboard players get @s AI_Data
execute as @e[tag=Bot] if score #current AI_Data = @s AI_Data run tag @s add currentbot
execute as @e[tag=PatrolTrader] unless entity @e[tag=currentbot] run tp @s ~ ~-200 ~
execute as @e[tag=PatrolTrader] unless entity @e[tag=currentbot] run kill @s
tag @e[tag=Bot,tag=currentbot] remove currentbot