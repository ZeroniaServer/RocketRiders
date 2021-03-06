##Operator function for forcing a game to end
tag @e[tag=Selection,type=armor_stand] add GameEnd
execute as @a unless entity @s[team=!Blue,team=!Yellow] run clear @s #custom:clear
execute as @a unless entity @s[team=!Blue,team=!Yellow] run clear @s crossbow{nova:1b}
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect clear @s
tag @e[tag=Selection,type=armor_stand] remove GameStarted
tag @e[tag=Selection,type=armor_stand] remove Countdown
tag @e[tag=Selection,type=armor_stand] remove forceCountdown
tag @e[tag=Selection,type=armor_stand] remove bossbarOverride
tag @e[tag=Selection,type=armor_stand] remove gaveFirstItem
scoreboard players set @e[tag=Selection,type=armor_stand] count 0
scoreboard players set @e[tag=Selection,type=armor_stand] gametime 0
worldborder warning distance 0
gamerule fallDamage false
gamerule drowningDamage false
gamerule fireDamage false
execute as @a run function everytick:score_reset
tag @e[tag=EditedSettings,type=armor_stand] remove EditedSettings
tag @e[tag=yellowjoinpad,type=marker] add CancelJoin
tag @e[tag=bluejoinpad,type=marker] add CancelJoin
tag @e[tag=specjoinpad,type=marker] add CancelJoin
bossbar set rr:startgame max 30
tag @a remove deathchamp
tag @a remove flagschamp
tag @a remove killschamp
tag @a remove spawnchamp
scoreboard players set @e[tag=Selection,tag=GameEnd,type=armor_stand] endtimer 568