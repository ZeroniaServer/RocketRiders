##Operator function for forcing a game to end
tag @e[x=0,type=armor_stand,tag=Selection] add GameEnd
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run clear @s #custom:clear
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run clear @s crossbow[custom_data={nova:1b}]
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s
tag @e[x=0,type=armor_stand,tag=Selection] remove GameStarted
tag @e[x=0,type=armor_stand,tag=Selection] remove Countdown
tag @e[x=0,type=armor_stand,tag=Selection] remove forceCountdown
tag @e[x=0,type=armor_stand,tag=Selection] remove bossbarOverride
tag @e[x=0,type=armor_stand,tag=Selection] remove gaveFirstItem
scoreboard players set @e[x=0,type=armor_stand,tag=Selection] count 0
scoreboard players set @e[x=0,type=armor_stand,tag=Selection] gametime 0
worldborder warning distance 0
execute as @a[x=0] run function everytick:score_reset
tag @e[x=0,type=armor_stand,tag=EditedSettings] remove EditedSettings
tag @e[x=0,type=marker,tag=yellowjoinpad] add CancelJoin
tag @e[x=0,type=marker,tag=bluejoinpad] add CancelJoin
tag @e[x=0,type=marker,tag=specjoinpad] add CancelJoin
bossbar set rr:startgame max 30
tag @a[x=0] remove deathchamp
tag @a[x=0] remove flagschamp
tag @a[x=0] remove killschamp
tag @a[x=0] remove spawnchamp
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,tag=GameEnd] endtimer 568