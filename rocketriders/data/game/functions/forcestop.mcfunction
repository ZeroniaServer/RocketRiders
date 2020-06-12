kill @e[tag=Bot]
execute unless entity @e[tag=Selection,tag=noAchievements] run function achievements:aftergame

tag @e[tag=Selection] add GameEnd
execute as @a unless entity @s[team=!Blue,team=!Yellow] run clear @s #custom:clear
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect clear @s
tag @e[tag=Selection] remove GameStarted
tag @e[tag=Selection] remove gaveFirstItem
scoreboard players set @e[tag=Selection] gametime 0
worldborder warning distance 0
gamerule fallDamage false
gamerule drowningDamage false
gamerule fireDamage false
execute as @a run function everytick:score_reset
tag @e[tag=EditedSettings] remove EditedSettings
tag @e[tag=yellowjoinpad] add CancelJoin
tag @e[tag=bluejoinpad] add CancelJoin
tag @e[tag=specjoinpad] add CancelJoin

scoreboard players set @e[tag=Selection,tag=GameEnd] endtimer 567