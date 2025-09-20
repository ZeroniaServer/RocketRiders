#Reset pregame queue
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!swapEnabled] run fill -89 201 96 -101 195 95 white_stained_glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!swapEnabled] run fill -89 201 94 -101 195 93 orange_stained_glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!swapEnabled] run fill -89 201 91 -101 195 92 yellow_stained_glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!swapEnabled] run fill -89 201 60 -101 195 61 white_stained_glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!swapEnabled] unless predicate game:gamemode_components/red_for_blue run fill -89 201 62 -101 195 63 cyan_stained_glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!swapEnabled] unless predicate game:gamemode_components/red_for_blue run fill -89 201 65 -101 195 64 blue_stained_glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!swapEnabled] if predicate game:gamemode_components/red_for_blue run fill -89 201 62 -101 195 63 pink_stained_glass
execute unless predicate game:modifiers/hardcore/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!swapEnabled] if predicate game:gamemode_components/red_for_blue run fill -89 201 65 -101 195 64 red_stained_glass

execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_swap:items/tetrisreset
scoreboard players reset * swapside