scoreboard players add @s BotHP 1

execute if entity @s[tag=!Returned,tag=!DeniedLOS] at @s if entity @e[type=armor_stand,tag=BotArrows,distance=..4,limit=1,sort=nearest] run tag @e[type=armor_stand,tag=BotArrows,distance=..4,limit=1,sort=nearest] add BotFireArrow
execute if entity @s[tag=BotSpotted,tag=!DeniedLOS] at @s if entity @e[type=armor_stand,tag=BotArrows,distance=..4,limit=1,sort=nearest] run tag @s add Returned
execute if entity @s[tag=BotSpotted,tag=!DeniedLOS] at @s if entity @e[type=armor_stand,tag=BotArrows,distance=..4,limit=1,sort=nearest] run kill @s
execute if entity @s[tag=!DeniedLOS] at @s unless block ^ ^ ^0.1 air run kill @s

execute if entity @s[tag=LOSTrackerBlue,tag=!Returned,tag=!DeniedLOS] at @s unless block ~ ~ ~ air run tag @s add DeniedLOS
execute if entity @s[tag=LOSTrackerBlue,tag=!Returned,tag=!DeniedLOS] at @s if block ^ ^ ^0.1 air unless entity @e[team=Yellow,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^0.1
execute if entity @s[tag=LOSTrackerBlue,tag=!BotSpotted,tag=!DeniedLOS] at @s if entity @a[team=Yellow,limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~180 ~
execute if entity @s[tag=LOSTrackerBlue,tag=!BotSpotted,tag=!DeniedLOS] at @s if entity @a[team=Yellow,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^3

execute if entity @s[tag=LOSTrackerBlue,tag=!DeniedLOS] at @s if entity @e[team=Yellow,limit=1,sort=nearest,distance=..5] run tag @s add BotSpotted

execute if entity @s[tag=LOSTrackerYellow,tag=!Returned,tag=!DeniedLOS] at @s if block ^ ^ ^0.1 air unless entity @e[team=Blue,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^0.1
execute if entity @s[tag=LOSTrackerYellow,tag=!BotSpotted,tag=!DeniedLOS] at @s if entity @a[team=Blue,limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~180 ~
execute if entity @s[tag=LOSTrackerYellow,tag=!BotSpotted,tag=!DeniedLOS] at @s if entity @a[team=Blue,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^3

kill @s[tag=DeniedLOS]

kill @s[scores={BotHP=451..}]

execute if entity @s[tag=LOSTrackerYellow,tag=!DeniedLOS] at @s if entity @e[team=Blue,limit=1,sort=nearest,distance=..5] run tag @s add BotSpotted

execute if entity @s[tag=!DeniedLOS] at @s unless block ~ ~ ~ air run function rr_bots:bot/attacks/lostrack
execute at @s unless block ~ ~ ~ air run tag @s add DeniedLOS
kill @s[tag=DeniedLOS]