#management
execute as @e[tag=rr_ranked] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!rankedEnabled,tag=switchGamemodes,limit=1] SetGamemode = @e[tag=rr_ranked,limit=1] gamemodeID run function rr_ranked:enable
execute as @e[tag=Selection,tag=rankedEnabled] run function rr_ranked:ifenabled
execute as @e[tag=Selection,tag=rankedLast] run function rr_ranked:iflast

#XP/rank stuff
execute as @a if score @s XP matches ..0 run scoreboard players set @s XP 0
execute as @a store success score @s HasXP run scoreboard players get @s XP
execute as @a if score @s HasXP matches 0 run scoreboard players set @s XP 100
scoreboard players set @a[scores={XP=..100}] RankScore 6
scoreboard players set @a[scores={XP=101..400}] RankScore 5
scoreboard players set @a[scores={XP=401..700}] RankScore 4
scoreboard players set @a[scores={XP=701..1000}] RankScore 3
scoreboard players set @a[scores={XP=1001..1300}] RankScore 2
scoreboard players set @a[scores={XP=1301..}] RankScore 2
execute as @a[team=Lobby] run function rr_ranked:rankdisplay