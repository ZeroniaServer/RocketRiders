##########################################
## GIVERANDOM: The function called when ##
## the game tries to give out any items ##
##########################################

##Select item
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run tag @s add getItem
tag @s add tetrisTime
function rr_crusade:items/rng
function rr_crusade:items/tetris
tag @a[x=0] remove getItem
tag @s remove tetrisTime
tag @s add gaveFirstItem

##Actionbar notifications
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run scoreboard players set @s actionbardelay 0
execute as @a[x=0,tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noFullHotbarSound] as @a[x=0,tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @a[x=0,tag=wasFullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noFullHotbarSound] as @a[x=0,tag=wasFullHotbar] unless entity @s[team=!Yellow,team=!Blue] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

##Wind Down modifier - subtract two ticks from Item Delay
scoreboard players remove @s[tag=WindDown,scores={MaxItemTime=62..}] MaxItemTime 2

##Schedule antidupe
execute unless entity @s[tag=doStacking] run schedule function rr_crusade:items/scheduleantidupe_indimension 1t append