execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!doStacking] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run function rr_powerups:items/antidupe
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!doStacking] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run function items:antidupe