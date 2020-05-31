scoreboard players add @s BotHP 1
execute as @s[tag=!Returned,tag=!DeniedLOS] at @s if entity @e[tag=BotArrows,distance=..4,limit=1,sort=nearest] run tag @e[tag=BotArrows,distance=..4,limit=1,sort=nearest] add BotFireArrow
execute as @s[tag=BotSpotted,tag=!DeniedLOS] at @s if entity @e[tag=BotArrows,distance=..4,limit=1,sort=nearest] run tag @s add Returned
execute as @s[tag=BotSpotted,tag=!DeniedLOS] at @s if entity @e[tag=BotArrows,distance=..4,limit=1,sort=nearest] run kill @s
execute as @s[tag=!DeniedLOS] at @s unless block ^ ^ ^0.1 air run kill @s

execute as @s[tag=LOSTrackerBlue,tag=!Returned,tag=!DeniedLOS] at @s unless block ~ ~ ~ air run tag @s add DeniedLOS
execute as @s[tag=LOSTrackerBlue,tag=!Returned,tag=!DeniedLOS] at @s if block ^ ^ ^0.1 air unless entity @e[team=Yellow,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^0.1
execute as @s[tag=LOSTrackerBlue,tag=!BotSpotted,tag=!DeniedLOS] at @s if entity @a[team=Yellow,limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~180 ~
execute as @s[tag=LOSTrackerBlue,tag=!BotSpotted,tag=!DeniedLOS] at @s if entity @a[team=Yellow,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^3

execute as @s[tag=LOSTrackerBlue,tag=!DeniedLOS] at @s if entity @e[team=Yellow,limit=1,sort=nearest,distance=..5] run tag @s add BotSpotted

execute as @s[tag=LOSTrackerYellow,tag=!Returned,tag=!DeniedLOS] at @s if block ^ ^ ^0.1 air unless entity @e[team=Blue,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^0.1
execute as @s[tag=LOSTrackerYellow,tag=!BotSpotted,tag=!DeniedLOS] at @s if entity @a[team=Blue,limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~180 ~
execute as @s[tag=LOSTrackerYellow,tag=!BotSpotted,tag=!DeniedLOS] at @s if entity @a[team=Blue,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^3

kill @s[tag=DeniedLOS]

kill @s[scores={BotHP=451..}]

execute as @s[tag=LOSTrackerYellow,tag=!DeniedLOS] at @s if entity @e[team=Blue,limit=1,sort=nearest,distance=..5] run tag @s add BotSpotted

execute as @s[tag=!DeniedLOS] at @s unless block ~ ~ ~ air run function bot:attacks/lostrack
execute as @s at @s unless block ~ ~ ~ air run tag @s add DeniedLOS
kill @s[tag=DeniedLOS]