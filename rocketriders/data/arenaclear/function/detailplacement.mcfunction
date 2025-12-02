#########################################
## DETAIL PLACEMENT: The core function ##
## for placing selected Base Details   ##
#########################################

#Runs individual detail placement functions depending on initial tags
execute unless predicate game:modifiers/hardcore/on if entity @s[tag=!noDetailBlue] run function arenaclear:detailplacementblue
execute unless predicate game:modifiers/hardcore/on if entity @s[tag=!noDetailYellow] run function arenaclear:detailplacementyellow
tag @s remove noDetailBlue
tag @s remove noDetailYellow

#Portal detail - Blue
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/glass_rim unless predicate game:gamemode_components/red_for_blue run fill -11 59 -74 35 36 -74 blue_stained_glass_pane[east=true,west=true] replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/glass_rim if predicate game:gamemode_components/red_for_blue run fill -11 59 -74 35 36 -74 red_stained_glass_pane[east=true,west=true] replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/glass_cover unless predicate game:gamemode_components/red_for_blue run fill -11 59 -73 35 36 -75 blue_stained_glass replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/glass_cover if predicate game:gamemode_components/red_for_blue run fill -11 59 -73 35 36 -75 red_stained_glass replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/end_stone_cover run fill -11 59 -73 35 36 -75 end_stone replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/hole_in_one run fill -11 59 -73 34 36 -75 obsidian replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/hole_in_one run fill 1 48 -73 1 47 -73 air replace obsidian strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/hole_in_one run fill 23 48 -73 23 47 -73 air replace obsidian strict

execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/small if predicate game:arena_details/portal/glass_rim unless predicate game:gamemode_components/red_for_blue run fill 2 43 -67 22 57 -67 blue_stained_glass_pane[east=true,west=true] replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/small if predicate game:arena_details/portal/glass_rim if predicate game:gamemode_components/red_for_blue run fill 2 43 -67 22 57 -67 red_stained_glass_pane[east=true,west=true] replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/small if predicate game:arena_details/portal/glass_cover unless predicate game:gamemode_components/red_for_blue run fill 2 43 -68 22 57 -66 blue_stained_glass replace #custom:air_and_glass strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/small if predicate game:arena_details/portal/glass_cover if predicate game:gamemode_components/red_for_blue run fill 2 43 -68 22 57 -66 red_stained_glass replace #custom:air_and_glass strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/small if predicate game:arena_details/portal/end_stone_cover run fill 2 43 -68 22 57 -66 end_stone replace #custom:air_and_glass strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/small if predicate game:arena_details/portal/hole_in_one run fill 2 43 -68 22 57 -66 obsidian replace #custom:air_and_glass strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:blue_portal_revealed if predicate game:portal_type/small if predicate game:arena_details/portal/hole_in_one run fill 12 50 -66 12 51 -66 air replace obsidian strict

#Portal detail - Yellow
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:yellow_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/glass_rim run fill -11 59 74 35 36 74 yellow_stained_glass_pane[east=true,west=true] replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:yellow_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/glass_cover run fill -11 59 73 35 36 75 yellow_stained_glass replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:yellow_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/end_stone_cover run fill -11 59 73 35 36 75 end_stone replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:yellow_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/hole_in_one run fill -11 59 73 34 36 75 obsidian replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:yellow_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/hole_in_one run fill 1 48 73 1 47 73 air replace obsidian strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:yellow_portal_revealed if predicate game:portal_type/default if predicate game:arena_details/portal/hole_in_one run fill 23 48 73 23 47 73 air replace obsidian strict

execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:yellow_portal_revealed if predicate game:portal_type/small if predicate game:arena_details/portal/glass_rim run fill 2 43 67 22 57 67 yellow_stained_glass_pane[east=true,west=true] replace #custom:air strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:yellow_portal_revealed if predicate game:portal_type/small if predicate game:arena_details/portal/glass_cover run fill 2 43 66 22 57 68 yellow_stained_glass replace #custom:air_and_glass strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:yellow_portal_revealed if predicate game:portal_type/small if predicate game:arena_details/portal/end_stone_cover run fill 2 43 66 22 57 68 end_stone replace #custom:air_and_glass strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:yellow_portal_revealed if predicate game:portal_type/small if predicate game:arena_details/portal/hole_in_one run fill 2 43 66 22 57 68 obsidian replace #custom:air_and_glass strict
execute unless predicate game:gamemode_components/arena/no_portal_details if predicate game:yellow_portal_revealed if predicate game:portal_type/small if predicate game:arena_details/portal/hole_in_one run fill 12 50 66 12 51 66 air replace obsidian strict

#Spawnpoint obsidian placement - Blue and Yellow
fill 14 63 66 10 63 66 obsidian
fill 13 63 65 11 63 65 obsidian
setblock 12 63 64 obsidian
fill 13 65 67 11 65 67 obsidian
setblock 12 66 67 obsidian

fill 10 63 -66 14 63 -66 obsidian
fill 11 63 -65 13 63 -65 obsidian
setblock 12 63 -64 obsidian
fill 11 65 -67 13 65 -67 obsidian
setblock 12 66 -67 obsidian
