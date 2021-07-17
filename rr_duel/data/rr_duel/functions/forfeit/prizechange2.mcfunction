#Detect rank change for rank-up notifications
execute if score @s XP matches 0..99 run scoreboard players set $NewPrizeRank XP 0
execute if score @s XP matches 100..399 run scoreboard players set $NewPrizeRank XP 1
execute if score @s XP matches 400..699 run scoreboard players set $NewPrizeRank XP 2
execute if score @s XP matches 700..999 run scoreboard players set $NewPrizeRank XP 3
execute if score @s XP matches 1000..1299 run scoreboard players set $NewPrizeRank XP 4
execute if score @s XP matches 1300.. run scoreboard players set $NewPrizeRank XP 5
execute if score $NewPrizeRank XP > $OldPrizeRank XP at @s run function rr_duel:forfeit/rankup
scoreboard players reset $NewPrizeRank XP
scoreboard players reset $OldPrizeRank XP
tag @s remove prizechange