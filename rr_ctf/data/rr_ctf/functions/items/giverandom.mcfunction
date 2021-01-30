##########################################
## GIVERANDOM: The function called when ##
## the game tries to give out any items ##
##########################################

##Full hotbar check
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar

##UUID randomizer - pick canopy or select other item
#Generate random number
summon area_effect_cloud ~ ~ ~ {Tags:["CTFRNG"],Duration:1}
scoreboard players set @e[tag=CTFRNG,type=area_effect_cloud,limit=1] RNGmax 10
execute as @e[tag=CTFRNG,type=area_effect_cloud,limit=1] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=CTFRNG,type=area_effect_cloud,limit=1] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

#Give canopy (20% chance)
execute as @s[tag=gaveFirstItem] if entity @e[tag=CTFRNG,type=area_effect_cloud,limit=1,scores={RNGscore=0..1}] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givecanopy

#Give fireball/nova (10% chance)
execute as @s[tag=gaveFirstItem] if entity @e[tag=CTFRNG,type=area_effect_cloud,limit=1,scores={RNGscore=2}] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givefireball

#Select item (70% chance)
execute if entity @e[tag=CTFRNG,type=area_effect_cloud,limit=1,scores={RNGscore=3..9}] run function items:rng
execute if entity @e[tag=CTFRNG,type=area_effect_cloud,limit=1,scores={RNGscore=3..9}] run function items:tetris
execute if entity @e[tag=CTFRNG,type=area_effect_cloud,limit=1,scores={RNGscore=3..9}] run tag @s add gaveFirstItem

#Kill randomizer
kill @e[tag=CTFRNG,type=area_effect_cloud,limit=1]

##Actionbar notifications
execute as @a unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @a[tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}

##Wind Down modifier - subtract two ticks from Item Delay
scoreboard players remove @s[tag=WindDown,scores={MaxItemTime=22..}] MaxItemTime 2