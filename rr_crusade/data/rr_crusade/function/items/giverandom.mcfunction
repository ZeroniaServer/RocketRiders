##########################################
## GIVERANDOM: The function called when ##
## the game tries to give out any items ##
##########################################

##Select item
execute as @a[x=0,predicate=custom:team/any_playing_team] run tag @s add getItem
tag @s add tetrisTime
function rr_crusade:items/rng
function rr_crusade:items/tetris
tag @a[x=0] remove getItem
tag @s remove tetrisTime
tag @s add gaveFirstItem

##Wind Down modifier - subtract two ticks from Item Delay
execute if predicate game:modifiers/wind_down/on run scoreboard players remove @s[scores={MaxItemTime=62..}] MaxItemTime 2
