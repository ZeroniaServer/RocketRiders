execute if entity @e[type=armor_stand,tag=Selection,tag=!doStacking] as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run function rr_swap:items/antidupe
execute if entity @e[type=armor_stand,tag=Selection,tag=!doStacking] as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run function items:antidupe