##Called 1 tick after items are given to prevent duplication
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!doStacking] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run function items:antidupe