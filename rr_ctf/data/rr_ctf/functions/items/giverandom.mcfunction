##########################################
## GIVERANDOM: The function called when ##
## the game tries to give out any items ##
##########################################

##Full hotbar check
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar

#Select item
function rr_ctf:items/rng
function rr_ctf:items/tetris
tag @s add gaveFirstItem

##Actionbar notifications
execute as @a unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @a[tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}

##Wind Down modifier - subtract two ticks from Item Delay
scoreboard players remove @s[tag=WindDown,scores={MaxItemTime=22..}] MaxItemTime 2