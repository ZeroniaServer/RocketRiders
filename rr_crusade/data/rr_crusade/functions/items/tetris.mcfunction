########################################
## TETRIS: The Tetris bag-like system ##
## that prevents against repeat items ##
########################################

##Tetris bag logic
execute if score $missile CmdData matches 5.. run tag @s add givenAllMissile
execute if score $util CmdData matches 3.. run tag @s add givenAllUtil

##Condition for Tetris bag resetting
execute if entity @s[tag=givenAllMissile,tag=givenAllUtil] run function rr_crusade:items/tetrisreset