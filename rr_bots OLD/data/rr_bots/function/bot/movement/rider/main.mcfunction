execute if entity @s[tag=Speed20] at @s run function rr_bots:bot/movement/rider/speeds/speed20
execute if entity @s[tag=Speed22] at @s run function rr_bots:bot/movement/rider/speeds/speed22
execute if entity @s[tag=Speed17] at @s run function rr_bots:bot/movement/rider/speeds/speed17
execute if entity @s[tag=Speed33] at @s run function rr_bots:bot/movement/rider/speeds/speed33

execute if entity @s[tag=BotRider] if entity @s[tag=!Speed20,tag=!Speed22,tag=!Speed17,tag=!Speed33] unless entity @s[scores={botmisspawn=1..40}] run scoreboard players add @s botriding 2

execute if entity @s[tag=BotRider] at @s if entity @e[type=tnt,distance=..10] run tag @s remove BotRider

execute if entity @s[tag=BotRider] at @s run function rr_bots:bot/animations/walkanim

tag @s[tag=!BotRider] remove Speed20
tag @s[tag=!BotRider] remove Speed22
tag @s[tag=!BotRider] remove Speed17
tag @s[tag=!BotRider] remove Speed33