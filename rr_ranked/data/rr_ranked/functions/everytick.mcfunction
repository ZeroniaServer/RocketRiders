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