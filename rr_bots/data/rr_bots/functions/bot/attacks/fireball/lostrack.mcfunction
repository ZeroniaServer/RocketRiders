execute as @s[tag=!Returned] at @s if entity @e[tag=BotArrows,distance=..4,limit=1,sort=nearest,type=armor_stand] run tag @e[tag=BotArrows,distance=..4,limit=1,sort=nearest,type=armor_stand] add BotFireArrow
execute as @s[tag=BotSpotted] at @s if entity @e[tag=BotArrows,distance=..4,limit=1,sort=nearest,type=armor_stand] run tag @s add Returned
execute as @s[tag=BotSpotted] at @s if entity @e[tag=BotArrows,distance=..4,limit=1,sort=nearest,type=armor_stand] run kill @s
execute as @s at @s unless block ^ ^ ^0.1 air run kill @s

execute as @s[tag=LOSTrackerBlue,tag=!Returned] at @s if block ^ ^ ^0.1 air unless entity @e[team=Yellow,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^0.1
execute as @s[tag=LOSTrackerBlue,tag=!BotSpotted] at @s if entity @a[team=Yellow,limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~180 ~
execute as @s[tag=LOSTrackerBlue,tag=!BotSpotted] at @s if entity @a[team=Yellow,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^3

execute as @s[tag=LOSTrackerBlue] at @s if entity @e[team=Yellow,limit=1,sort=nearest,distance=..5] run tag @s add BotSpotted

execute as @s[tag=LOSTrackerYellow,tag=!Returned] at @s if block ^ ^ ^0.1 air unless entity @e[team=Blue,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^0.1
execute as @s[tag=LOSTrackerYellow,tag=!BotSpotted] at @s if entity @a[team=Blue,limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~180 ~
execute as @s[tag=LOSTrackerYellow,tag=!BotSpotted] at @s if entity @a[team=Blue,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^3

execute as @s[tag=LOSTrackerYellow] at @s if entity @e[team=Blue,limit=1,sort=nearest,distance=..5] run tag @s add BotSpotted

execute as @s at @s run function rr_bots:bot/attacks/lostrack