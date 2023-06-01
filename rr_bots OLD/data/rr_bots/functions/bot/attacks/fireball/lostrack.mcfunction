execute if entity @s[tag=!Returned] at @s if entity @e[predicate=custom:indimension,type=armor_stand,tag=BotArrows,distance=..4,limit=1,sort=nearest] run tag @e[predicate=custom:indimension,type=armor_stand,tag=BotArrows,distance=..4,limit=1,sort=nearest] add BotFireArrow
execute if entity @s[tag=BotSpotted] at @s if entity @e[predicate=custom:indimension,type=armor_stand,tag=BotArrows,distance=..4,limit=1,sort=nearest] run tag @s add Returned
execute if entity @s[tag=BotSpotted] at @s if entity @e[predicate=custom:indimension,type=armor_stand,tag=BotArrows,distance=..4,limit=1,sort=nearest] run kill @s
execute at @s unless block ^ ^ ^0.1 air run kill @s

execute if entity @s[tag=LOSTrackerBlue,tag=!Returned] at @s if block ^ ^ ^0.1 air unless entity @e[predicate=custom:indimension,team=Yellow,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^0.1
execute if entity @s[tag=LOSTrackerBlue,tag=!BotSpotted] at @s if entity @a[predicate=custom:indimension,team=Yellow,limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~180 ~
execute if entity @s[tag=LOSTrackerBlue,tag=!BotSpotted] at @s if entity @a[predicate=custom:indimension,team=Yellow,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^3

execute if entity @s[tag=LOSTrackerBlue] at @s if entity @e[predicate=custom:indimension,team=Yellow,limit=1,sort=nearest,distance=..5] run tag @s add BotSpotted

execute if entity @s[tag=LOSTrackerYellow,tag=!Returned] at @s if block ^ ^ ^0.1 air unless entity @e[predicate=custom:indimension,team=Blue,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^0.1
execute if entity @s[tag=LOSTrackerYellow,tag=!BotSpotted] at @s if entity @a[predicate=custom:indimension,team=Blue,limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~180 ~
execute if entity @s[tag=LOSTrackerYellow,tag=!BotSpotted] at @s if entity @a[predicate=custom:indimension,team=Blue,limit=1,sort=nearest,distance=..3] run tp @s ^ ^ ^3

execute if entity @s[tag=LOSTrackerYellow] at @s if entity @e[predicate=custom:indimension,team=Blue,limit=1,sort=nearest,distance=..5] run tag @s add BotSpotted

execute at @s run function rr_bots:bot/attacks/lostrack