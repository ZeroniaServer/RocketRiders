##########################################
## GIVERANDOM: The function called when ##
## the game tries to give out any items ##
##########################################

##Select item
tag @a[x=0,predicate=custom:team/any_playing_team] add getItem
tag @s add tetrisTime
function items:tetris
function items:rng
function items:tetris
tag @a[x=0] remove getItem
tag @s remove tetrisTime

##Condition for Tetris bag resetting
execute unless predicate game:modifiers/special_treatment/on if entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllUtil] run function items:tetrisreset
execute if predicate game:modifiers/special_treatment/on if entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllSpecial,tag=givenAllUtil] run function items:tetrisreset

tag @s add gaveFirstItem

##Wind Down modifier - subtract two ticks from Item Delay
execute if predicate game:modifiers/wind_down/on run scoreboard players remove @s[scores={MaxItemTime=62..}] MaxItemTime 2