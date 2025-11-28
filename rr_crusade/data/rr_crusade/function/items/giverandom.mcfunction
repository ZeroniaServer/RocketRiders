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

##Actionbar notifications
tag @a[x=0,predicate=custom:team/any_playing_team] add DelayActionbar
scoreboard players set @a[x=0,predicate=custom:team/any_playing_team] actionbardelay 0
title @a[x=0,tag=fullHotbar,predicate=custom:team/any_playing_team] actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noFullHotbarSound] as @a[x=0,tag=fullHotbar,predicate=custom:team/any_playing_team] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @a[x=0,tag=wasFullHotbar,predicate=custom:team/any_playing_team] actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noFullHotbarSound] as @a[x=0,tag=wasFullHotbar,predicate=custom:team/any_playing_team] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

##Wind Down modifier - subtract two ticks from Item Delay
execute if predicate game:modifiers/wind_down/on run scoreboard players remove @s[scores={MaxItemTime=62..}] MaxItemTime 2
