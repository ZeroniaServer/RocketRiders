#management
execute as @e[tag=rr_ranked] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!rankedEnabled,limit=1] SetGamemode = @e[tag=rr_ranked,limit=1] gamemodeID run function rr_ranked:enable
execute as @e[tag=Selection,tag=rankedEnabled] run function rr_ranked:ifenabled
execute as @e[tag=Selection,tag=rankedLast] run function rr_ranked:iflast

#reset lobby
tag @a[team=Lobby] remove WonARound
scoreboard players reset @a[team=Lobby] RoundsWon

#XP/rank stuff
execute as @a if score @s XP <= 0 XP run scoreboard players set @s XP 0
execute as @a unless score @s XP >= 0 XP run scoreboard players set @s XP 100
scoreboard players set @a[scores={XP=..300}] RankScore 6
scoreboard players set @a[scores={XP=301..600}] RankScore 5
scoreboard players set @a[scores={XP=601..900}] RankScore 4
scoreboard players set @a[scores={XP=901..1200}] RankScore 3
scoreboard players set @a[scores={XP=1201..1500}] RankScore 2
scoreboard players set @a[scores={XP=1501..}] RankScore 2
execute as @a[team=Lobby] run function rr_ranked:rankdisplay