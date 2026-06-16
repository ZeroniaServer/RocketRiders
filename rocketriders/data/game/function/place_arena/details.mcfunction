#########################################
## DETAIL PLACEMENT: The core function ##
## for placing selected Base Details   ##
#########################################

#Runs individual detail placement functions depending on initial tags
execute unless predicate game:modifiers/hardcore/on run function game:place_arena/details/blue
execute unless predicate game:modifiers/hardcore/on run function game:place_arena/details/yellow
