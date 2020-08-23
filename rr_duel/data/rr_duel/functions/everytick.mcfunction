#management
execute as @e[tag=rr_duel,type=armor_stand] run function gamemodes:updateid
execute if score @e[tag=Selection,tag=!duelEnabled,tag=switchGamemodes,limit=1,type=armor_stand] SetGamemode = @e[tag=rr_duel,limit=1,type=armor_stand] gamemodeID run function rr_duel:enable
execute as @e[tag=Selection,tag=duelEnabled,type=armor_stand] run function rr_duel:ifenabled
execute as @e[tag=Selection,tag=duelLast,type=armor_stand] run function rr_duel:iflast

#XP/rank stuff
scoreboard players add @a XP 0
execute as @a if score @s XP matches ..0 run scoreboard players set @s XP 0
scoreboard players set @a[scores={XP=..100}] RankScore 6
scoreboard players set @a[scores={XP=101..400}] RankScore 5
scoreboard players set @a[scores={XP=401..700}] RankScore 4
scoreboard players set @a[scores={XP=701..1000}] RankScore 3
scoreboard players set @a[scores={XP=1001..1300}] RankScore 2
scoreboard players set @a[scores={XP=1301..}] RankScore 2
execute as @a run function rr_duel:giveboots
execute as @a[team=Lobby,tag=!inParkour] run function rr_duel:rankdisplay
execute as @a store result score @s xp_bar run xp query @s levels
execute as @a unless score @s xp_bar = @s XP run function rr_duel:update_xp_bar