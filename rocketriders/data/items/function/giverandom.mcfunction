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

##Actionbar notifications
tag @a[x=0,predicate=custom:team/any_playing_team] add DelayActionbar
scoreboard players set @a[x=0,predicate=custom:team/any_playing_team] actionbardelay 0
title @a[x=0,tag=fullHotbar,predicate=custom:team/any_playing_team] actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noFullHotbarSound] as @a[x=0,tag=fullHotbar,predicate=custom:team/any_playing_team] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @a[x=0,tag=wasFullHotbar,predicate=custom:team/any_playing_team] actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noFullHotbarSound] as @a[x=0,tag=wasFullHotbar,predicate=custom:team/any_playing_team] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

##Wind Down modifier - subtract two ticks from Item Delay
scoreboard players remove @s[tag=WindDown,scores={MaxItemTime=62..}] MaxItemTime 2