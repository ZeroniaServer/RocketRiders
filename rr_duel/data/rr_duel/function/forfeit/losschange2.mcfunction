#Detect rank change for rank-down notifications
execute if score @s XP matches 0..99 run scoreboard players set $NewLossRank XP 0
execute if score @s XP matches 100..399 run scoreboard players set $NewLossRank XP 1
execute if score @s XP matches 400..699 run scoreboard players set $NewLossRank XP 2
execute if score @s XP matches 700..999 run scoreboard players set $NewLossRank XP 3
execute if score @s XP matches 1000..1299 run scoreboard players set $NewLossRank XP 4
execute if score @s XP matches 1300.. run scoreboard players set $NewLossRank XP 5
execute if score $NewLossRank XP < $OldLossRank XP at @s run function rr_duel:forfeit/rankdown
scoreboard players reset $NewLossRank XP
scoreboard players reset $OldLossRank XP
tag @s remove losschange