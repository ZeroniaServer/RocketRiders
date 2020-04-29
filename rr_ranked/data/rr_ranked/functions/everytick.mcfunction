#management
execute as @e[tag=rr_ranked] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!rankedEnabled,limit=1] SetGamemode = @e[tag=rr_ranked,limit=1] gamemodeID run function rr_ranked:enable
execute as @e[tag=Selection,tag=rankedEnabled] run function rr_ranked:ifenabled
execute as @e[tag=Selection,tag=rankedLast] run function rr_ranked:iflast

#reset lobby
tag @a[team=Lobby] remove WonARound
scoreboard players reset @a[team=Lobby] RoundsWon

#New players need XP, so here we go I guess.
execute as @a if score @s XP <= 0 XP run scoreboard players set @s XP 0
execute as @a unless score @s XP >= 0 XP run scoreboard players set @s XP 100
#Set everyone's RankScore
scoreboard players set @a[scores={XP=..300}] RankScore 6
scoreboard players set @a[scores={XP=301..600}] RankScore 5
scoreboard players set @a[scores={XP=601..900}] RankScore 4
scoreboard players set @a[scores={XP=901..1200}] RankScore 3
scoreboard players set @a[scores={XP=1201..1500}] RankScore 2
scoreboard players set @a[scores={XP=1501..}] RankScore 2


execute as @a[team=Lobby] run function rr_ranked:rankdisplay



#Lock joinpads when a game started or when a team already has someone in it

execute as @e[tag=EditedSettings,tag=rankedEnabled] if entity @a[team=Blue] run tag @e[tag=bluejoinpad] add CancelJoin
execute as @e[tag=EditedSettings,tag=rankedEnabled] if entity @a[team=Yellow] run tag @e[tag=yellowjoinpad] add CancelJoin
execute as @e[tag=EditedSettings,tag=rankedEnabled] unless entity @a[team=Blue] run tag @e[tag=bluejoinpad] remove CancelJoin
execute as @e[tag=EditedSettings,tag=rankedEnabled] unless entity @a[team=Yellow] run tag @e[tag=yellowjoinpad] remove CancelJoin
execute as @e[tag=EditedSettings,tag=rankedEnabled] unless entity @a[team=Blue] unless entity @a[team=Yellow] run tag @e[tag=Selection] remove Countdown


#forfeit
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute if entity @e[tag=Selection,tag=GameStarted] unless entity @e[scores={RoundsWon=2..}] as @a[team=Yellow] unless entity @a[team=Blue] run tag @e[tag=Selection] add TimeOut
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute if entity @e[tag=Selection,tag=GameStarted] unless entity @e[scores={RoundsWon=2..}] as @a[team=Blue] unless entity @a[team=Yellow] run tag @e[tag=Selection] add TimeOut


execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @a[tag=InRanked,team=!Blue,team=!Yellow,limit=1] unless entity @a[team=Blue] run tag @s add JoinBlue
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @a[tag=InRanked,team=!Blue,team=!Yellow,limit=1] unless entity @a[team=Yellow] run tag @s add JoinYellow

execute as @e[tag=EditedSettings,tag=rankedEnabled] run scoreboard players add @e[tag=TimeOut] ForfeitTimeout 1
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[scores={ForfeitTimeout=1..}] run kill @e[type=tnt]
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[scores={ForfeitTimeout=1..}] run clear @a[team=Yellow] #custom:clear
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[scores={ForfeitTimeout=1..}] run clear @a[team=Blue] #custom:clear
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[scores={ForfeitTimeout=1..}] run tp @a[team=Blue] 12 64 -66 0 0
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[scores={ForfeitTimeout=1..}] run tp @a[team=Yellow] 12 64 66 180 0
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[scores={ForfeitTimeout=1}] run tellraw @a ["",{"text":"[TIMEOUT] ","bold":true,"color":"dark_red"},{"text":"Someone left the ranked match! They have 1 minute to rejoin.","color":"red"}]
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[tag=TimeOut] if entity @a[team=Blue] if entity @a[team=Yellow] run scoreboard players set @e[tag=Selection] RandomItem 395
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[tag=TimeOut] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s remove TimeOut
execute as @e[tag=EditedSettings,tag=rankedEnabled] run scoreboard players reset @e[tag=Selection,tag=!TimeOut] ForfeitTimeout

execute as @e[tag=TimeOut,scores={ForfeitTimeout=1200..}] run execute as @e[tag=ForfeitWon] run function rr_ranked:forfeit/giveprize

execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[tag=TimeOut,scores={ForfeitTimeout=1200..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run scoreboard players set @a[team=Blue] RoundsWon 1
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[tag=TimeOut,scores={ForfeitTimeout=1200..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run tag @a[team=Blue] add WonARound
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[tag=TimeOut,scores={ForfeitTimeout=1200..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run function rr_ranked:game/winblue
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[tag=TimeOut,scores={ForfeitTimeout=1200..}] unless entity @a[team=Blue] if entity @a[team=Yellow] run scoreboard players set @a[team=Yellow] RoundsWon 1
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[tag=TimeOut,scores={ForfeitTimeout=1200..}] unless entity @a[team=Blue] if entity @a[team=Yellow] run tag @a[team=Yellow] add WonARound
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[tag=TimeOut,scores={ForfeitTimeout=1200..}] unless entity @a[team=Blue] if entity @a[team=Yellow] run function rr_ranked:game/winyellow
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[tag=TimeOut,scores={ForfeitTimeout=1200..}] run tag @a[tag=InRanked,team=Blue] add ForfeitWon
execute as @e[tag=EditedSettings,tag=rankedEnabled] run execute as @e[tag=TimeOut,scores={ForfeitTimeout=1200..}] run tag @a[tag=InRanked,team=Yellow] add ForfeitWon
execute as @e[tag=TimeOut,scores={ForfeitTimeout=1200..}] run tag @a[team=Blue,tag=InRanked] remove InRanked
execute as @e[tag=TimeOut,scores={ForfeitTimeout=1200..}] run tag @a[team=Yellow,tag=InRanked] remove InRanked
tag @e[scores={ForfeitTimeout=1200..}] remove TimeOut
scoreboard players reset @e[scores={ForfeitTimeout=1200..}] ForfeitTimeout

scoreboard players reset @a[tag=!InRanked] ForfeitWin
scoreboard players reset @a[tag=!InRanked] ForfeitLoss

execute as @a[team=!Blue,team=!Yellow,tag=InRanked] unless entity @e[tag=Selection,tag=rankedEnabled,tag=GameStarted] run function rr_ranked:forfeit/giveloss