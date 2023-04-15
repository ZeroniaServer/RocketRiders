#Remember previous ranks for rank change notifications
execute if score @a[predicate=custom:indimension,team=Blue,limit=1] XP matches 0..99 run scoreboard players set $OldBlueRank XP 0
execute if score @a[predicate=custom:indimension,team=Blue,limit=1] XP matches 100..399 run scoreboard players set $OldBlueRank XP 1
execute if score @a[predicate=custom:indimension,team=Blue,limit=1] XP matches 400..699 run scoreboard players set $OldBlueRank XP 2
execute if score @a[predicate=custom:indimension,team=Blue,limit=1] XP matches 700..999 run scoreboard players set $OldBlueRank XP 3
execute if score @a[predicate=custom:indimension,team=Blue,limit=1] XP matches 1000..1299 run scoreboard players set $OldBlueRank XP 4
execute if score @a[predicate=custom:indimension,team=Blue,limit=1] XP matches 1300.. run scoreboard players set $OldBlueRank XP 5

execute if score @a[predicate=custom:indimension,team=Yellow,limit=1] XP matches 0..99 run scoreboard players set $OldYellowRank XP 0
execute if score @a[predicate=custom:indimension,team=Yellow,limit=1] XP matches 100..399 run scoreboard players set $OldYellowRank XP 1
execute if score @a[predicate=custom:indimension,team=Yellow,limit=1] XP matches 400..699 run scoreboard players set $OldYellowRank XP 2
execute if score @a[predicate=custom:indimension,team=Yellow,limit=1] XP matches 700..999 run scoreboard players set $OldYellowRank XP 3
execute if score @a[predicate=custom:indimension,team=Yellow,limit=1] XP matches 1000..1299 run scoreboard players set $OldYellowRank XP 4
execute if score @a[predicate=custom:indimension,team=Yellow,limit=1] XP matches 1300.. run scoreboard players set $OldYellowRank XP 5