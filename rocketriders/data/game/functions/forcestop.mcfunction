##Operator function for forcing a game to end
tag @e[type=armor_stand,tag=Selection] add GameEnd
execute as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run clear @s #custom:clear
execute as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run clear @s crossbow{nova:1b}
execute as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s
tag @e[type=armor_stand,tag=Selection] remove GameStarted
tag @e[type=armor_stand,tag=Selection] remove Countdown
tag @e[type=armor_stand,tag=Selection] remove forceCountdown
tag @e[type=armor_stand,tag=Selection] remove bossbarOverride
tag @e[type=armor_stand,tag=Selection] remove gaveFirstItem
scoreboard players set @e[type=armor_stand,tag=Selection] count 0
scoreboard players set @e[type=armor_stand,tag=Selection] gametime 0
worldborder warning distance 0
execute as @a[predicate=custom:indimension] run function everytick:score_reset
tag @e[type=armor_stand,tag=EditedSettings] remove EditedSettings
tag @e[type=marker,tag=yellowjoinpad] add CancelJoin
tag @e[type=marker,tag=bluejoinpad] add CancelJoin
tag @e[type=marker,tag=specjoinpad] add CancelJoin
bossbar set rr:startgame max 30
tag @a[predicate=custom:indimension] remove deathchamp
tag @a[predicate=custom:indimension] remove flagschamp
tag @a[predicate=custom:indimension] remove killschamp
tag @a[predicate=custom:indimension] remove spawnchamp
scoreboard players set @e[type=armor_stand,tag=Selection,tag=GameEnd] endtimer 568