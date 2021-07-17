#Remember previous ranks for rank-up notifications
execute if score @s XP matches 0..99 run scoreboard players set $OldPrizeRank XP 0
execute if score @s XP matches 100..399 run scoreboard players set $OldPrizeRank XP 1
execute if score @s XP matches 400..699 run scoreboard players set $OldPrizeRank XP 2
execute if score @s XP matches 700..999 run scoreboard players set $OldPrizeRank XP 3
execute if score @s XP matches 1000..1299 run scoreboard players set $OldPrizeRank XP 4
execute if score @s XP matches 1300.. run scoreboard players set $OldPrizeRank XP 5
tag @s add prizechange