#XP/rank stuff
scoreboard players add @a XP 0
execute as @a if score @s XP matches ..0 run scoreboard players set @s XP 0
scoreboard players set @a[scores={XP=..99}] RankScore 6
scoreboard players set @a[scores={XP=100..399}] RankScore 5
scoreboard players set @a[scores={XP=400..699}] RankScore 4
scoreboard players set @a[scores={XP=700..999}] RankScore 3
scoreboard players set @a[scores={XP=1000..1299}] RankScore 2
scoreboard players set @a[scores={XP=1300..}] RankScore 2
execute as @a run function rr_duel:giveboots
execute as @a[team=Lobby,tag=!inParkour] run function rr_duel:rankdisplay
execute as @a store result score @s xp_bar run xp query @s levels
execute as @a unless score @s xp_bar = @s XP run function rr_duel:update_xp_bar