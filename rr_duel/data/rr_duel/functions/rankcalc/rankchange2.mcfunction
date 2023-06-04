#Detect rank change for rank change notifications
execute if score @a[x=0,team=Blue,limit=1] XP matches 0..99 run scoreboard players set $NewBlueRank XP 0
execute if score @a[x=0,team=Blue,limit=1] XP matches 100..399 run scoreboard players set $NewBlueRank XP 1
execute if score @a[x=0,team=Blue,limit=1] XP matches 400..699 run scoreboard players set $NewBlueRank XP 2
execute if score @a[x=0,team=Blue,limit=1] XP matches 700..999 run scoreboard players set $NewBlueRank XP 3
execute if score @a[x=0,team=Blue,limit=1] XP matches 1000..1299 run scoreboard players set $NewBlueRank XP 4
execute if score @a[x=0,team=Blue,limit=1] XP matches 1300.. run scoreboard players set $NewBlueRank XP 5

execute if score @a[x=0,team=Yellow,limit=1] XP matches 0..99 run scoreboard players set $NewYellowRank XP 0
execute if score @a[x=0,team=Yellow,limit=1] XP matches 100..399 run scoreboard players set $NewYellowRank XP 1
execute if score @a[x=0,team=Yellow,limit=1] XP matches 400..699 run scoreboard players set $NewYellowRank XP 2
execute if score @a[x=0,team=Yellow,limit=1] XP matches 700..999 run scoreboard players set $NewYellowRank XP 3
execute if score @a[x=0,team=Yellow,limit=1] XP matches 1000..1299 run scoreboard players set $NewYellowRank XP 4
execute if score @a[x=0,team=Yellow,limit=1] XP matches 1300.. run scoreboard players set $NewYellowRank XP 5

execute if score $NewBlueRank XP > $OldBlueRank XP as @a[x=0,team=Blue,limit=1] at @s run function rr_duel:rankcalc/rankupblue
execute if score $NewYellowRank XP > $OldYellowRank XP as @a[x=0,team=Yellow,limit=1] at @s run function rr_duel:rankcalc/rankupyellow
execute if score $NewBlueRank XP < $OldBlueRank XP as @a[x=0,team=Blue,limit=1] at @s run function rr_duel:rankcalc/rankdownblue
execute if score $NewYellowRank XP < $OldYellowRank XP as @a[x=0,team=Yellow,limit=1] at @s run function rr_duel:rankcalc/rankdownyellow

scoreboard players reset $NewBlueRank XP
scoreboard players reset $OldBlueRank XP
scoreboard players reset $NewYellowRank XP
scoreboard players reset $OldYellowRank XP