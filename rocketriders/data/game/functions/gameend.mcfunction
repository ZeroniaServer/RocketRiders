#After game ends
scoreboard players add @s endtimer 1
tag @s[scores={endtimer=1}] remove GameStarted
tag @s[scores={endtimer=1}] remove SuddenDeath
tag @s[scores={endtimer=1}] remove gaveFirstItem
scoreboard players operation @s[scores={endtimer=81}] MaxItemTime = @s[scores={endtimer=81}] MaxItemSec
scoreboard players operation @s[scores={endtimer=81}] MaxItemTime *= 20 MaxItemSec
execute as @s[scores={endtimer=1..80}] run worldborder warning distance 0
execute as @s[scores={endtimer=1}] run tag @a remove SummonPlat
execute as @s[scores={endtimer=1}] run gamemode adventure @a[team=Blue]
execute as @s[scores={endtimer=1}] run gamemode adventure @a[team=Yellow]
execute as @s[scores={endtimer=1}] run effect clear @a haste
execute as @s[scores={endtimer=1}] run effect clear @a blindness
execute as @s[scores={endtimer=1}] run effect clear @a glowing
execute as @s[scores={endtimer=1}] run effect clear @a speed
execute as @s[scores={endtimer=1}] run gamerule fallDamage false
execute as @s[scores={endtimer=1}] run gamerule drowningDamage false
execute as @s[scores={endtimer=1}] run gamerule fireDamage false
execute as @s[scores={endtimer=1}] as @a run function everytick:score_reset
execute as @s[scores={endtimer=1..2}] run tp @a[team=Blue] 12 64 -66 0 0
execute as @s[scores={endtimer=1..2}] run tp @a[team=Yellow] 12 64 66 180 0
execute as @s[scores={endtimer=81..100}] run tag @s[tag=EditedSettings] remove EditedSettings
execute as @s[scores={endtimer=81..100}] run tag @e[tag=yellowjoinpad] add CancelJoin
execute as @s[scores={endtimer=81..100}] run tag @e[tag=bluejoinpad] add CancelJoin
execute as @s[scores={endtimer=81..100}] run tag @e[tag=specjoinpad] add CancelJoin

#This is the system for ties.
execute as @s[tag=doTying,tag=!rankedEnabled,tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,scores={endtimer=1..80}] at @s unless block 11 38 -74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=doTying,tag=!rankedEnabled,tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,scores={endtimer=1..80}] at @s unless block 13 38 -74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=doTying,tag=!rankedEnabled,tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,scores={endtimer=1..80}] at @s unless block 13 38 74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=doTying,tag=!rankedEnabled,tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,scores={endtimer=1..80}] at @s unless block 11 38 74 nether_portal run tag @s add SuddenDeath
execute as @s[tag=doTying,tag=!rankedEnabled,tag=YellowWon,tag=BlueWon,tag=!SuddenDeath,scores={endtimer=1..80}] run tag @s add SuddenDeath

execute as @s[scores={endtimer=250}] run gamemode spectator @a[team=Blue]
execute as @s[scores={endtimer=250}] run gamemode spectator @a[team=Yellow]
execute as @s[scores={endtimer=570}] run tag @a[team=Blue] add WasInBlue
execute as @s[scores={endtimer=570}] run tag @a[team=Yellow] add WasInYellow
execute as @s[scores={endtimer=570}] run team join Spectator @a[team=Blue]
execute as @s[scores={endtimer=570}] run team join Spectator @a[team=Yellow]
execute as @s[scores={endtimer=570}] run gamemode adventure @a[team=!Developer,team=!Lobby]
execute as @s[scores={endtimer=570}] run tp @a[team=Spectator,tag=!WasInBlue,tag=!WasInYellow] -43 211 78 90 0
execute as @s[scores={endtimer=570}] run tp @a[tag=WasInYellow] -36 211 96.0 90 0
execute as @s[scores={endtimer=570}] run tp @a[tag=WasInBlue] -36 211 61.0 90 0
execute as @s[scores={endtimer=570}] run tag @a[tag=WasInYellow] remove WasInYellow
execute as @s[scores={endtimer=570}] run tag @a[tag=WasInBlue] remove WasInBlue
execute as @s[scores={endtimer=570}] run team join Lobby @a[team=Spectator]
execute as @s[scores={endtimer=570}] run spawnpoint @a[team=!Developer] -43 211 78
execute as @s[scores={endtimer=570}] run clear @a[team=!Lobby,team=!Developer]
execute as @s[scores={endtimer=570}] run scoreboard players set @a kills 0
execute as @s[scores={endtimer=570}] run scoreboard players set @a deaths 0
execute as @s[scores={endtimer=570}] run tag @a remove FailedBallet
execute as @s[scores={endtimer=570}] run data merge entity @e[tag=AnnounceChanges,limit=1] {CustomNameVisible:1}
execute as @s[scores={endtimer=570}] run fill -57 201 84 -70 201 72 air replace barrier
execute as @s[scores={count=570..}] at @s run bossbar set rr:startgame color white
tag @s[scores={endtimer=570..}] remove BlueWon
tag @s[scores={endtimer=570..}] remove YellowWon
tag @s[scores={endtimer=570..}] remove BlueWonFirst
tag @s[scores={endtimer=570..}] remove YellowWonFirst
tag @s[scores={endtimer=570..}] remove SuddenDeath
tag @s[scores={endtimer=570..}] remove GameEnd
scoreboard players set @s[scores={endtimer=570..}] endtimer 0