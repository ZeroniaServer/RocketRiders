#########################################
## DETAIL PLACEMENT: The core function ##
## for placing selected Base Details   ##
#########################################

#Runs individual detail placement functions depending on initial tags
execute unless predicate game:modifiers/hardcore/on run function game:place_arena/details/blue
execute unless predicate game:modifiers/hardcore/on unless predicate game:match_components/arena/no_yellow_base_details run function game:place_arena/details/yellow

#Spawnpoint obsidian placement - Blue and Yellow
fill 14 63 66 10 63 66 obsidian strict
fill 13 63 65 11 63 65 obsidian strict
setblock 12 63 64 obsidian strict
fill 13 65 67 11 65 67 obsidian strict
setblock 12 66 67 obsidian strict

fill 10 63 -66 14 63 -66 obsidian strict
fill 11 63 -65 13 63 -65 obsidian strict
setblock 12 63 -64 obsidian strict
fill 11 65 -67 13 65 -67 obsidian strict
setblock 12 66 -67 obsidian strict
