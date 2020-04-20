#After game ends
scoreboard players add @s endtimer 1
tag @s remove GameStarted
execute as @s[scores={endtimer=1}] run gamemode adventure @a[team=Blue]
execute as @s[scores={endtimer=1}] run gamemode adventure @a[team=Yellow]
#hotfix for extra fireworks
execute as @s[scores={endtimer=1..450}] run clear @a[scores={HasFirework=6..}] firework_rocket 1
execute as @s[scores={endtimer=1..100}] run tag @e[tag=EditedSettings] remove EditedSettings
execute as @s[scores={endtimer=1..100}] run tag @e[tag=yellowjoinpad] add CancelJoin
execute as @s[scores={endtimer=1..100}] run tag @e[tag=bluejoinpad] add CancelJoin
execute as @s[scores={endtimer=1..100}] run tag @e[tag=specjoinpad] add CancelJoin
execute as @s[scores={endtimer=250}] run tag @a[team=Blue] add WasInBlue
execute as @s[scores={endtimer=250}] run tag @a[team=Yellow] add WasInYellow
execute as @s[scores={endtimer=250}] run gamemode spectator @a[team=Blue]
execute as @s[scores={endtimer=250}] run gamemode spectator @a[team=Yellow]
execute as @s[scores={endtimer=450}] run team join Spectator @a[team=Blue]
execute as @s[scores={endtimer=450}] run team join Spectator @a[team=Yellow]
execute as @s[scores={endtimer=450}] run gamemode adventure @a[team=!Developer,team=!Lobby]
execute as @s[scores={endtimer=450}] run tp @a[team=Spectator,tag=!WasInBlue,tag=!WasInYellow] -43 211 78 90 0
execute as @s[scores={endtimer=450}] run tp @a[tag=WasInYellow] -36 211 96 90 0
execute as @s[scores={endtimer=450}] run tp @a[tag=WasInBlue] -36 211 60 90 0
execute as @s[scores={endtimer=450}] run tag @a[tag=WasInYellow] remove WasInYellow
execute as @s[scores={endtimer=450}] run tag @a[tag=WasInBlue] remove WasInBlue
execute as @s[scores={endtimer=450}] run team join Lobby @a[team=Spectator]
execute as @s[scores={endtimer=450}] run spawnpoint @a[team=!Developer] -43 211 78
execute as @s[scores={endtimer=450}] run tag @a remove SummonPlat
execute as @s[scores={endtimer=450}] run clear @a[team=!Lobby,team=!Developer]
execute as @s[scores={endtimer=450}] run scoreboard players set @a kills 0
execute as @s[scores={endtimer=450}] run scoreboard players set @a deaths 0
execute as @s[scores={endtimer=450}] run tag @a remove FailedBallet
execute as @s[scores={endtimer=450}] at @s run data merge entity @e[tag=AnnounceChanges,limit=1] {CustomNameVisible:1}
execute as @s[scores={endtimer=450}] run tag @e[tag=Selection] remove EditedSettings
execute as @s[scores={endtimer=450}] run fill -57 201 84 -70 201 72 air replace barrier
execute as @s[scores={endtimer=450}] run gamerule fallDamage false
execute as @s[scores={endtimer=450}] run gamerule drowningDamage false
execute as @s[scores={endtimer=450}] run gamerule fireDamage false
tag @s[scores={endtimer=1..}] remove GameStarted
tag @s[scores={endtimer=450..}] remove GameEnd
scoreboard players set @s[scores={endtimer=450..}] endtimer 0