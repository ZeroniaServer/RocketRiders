##########################################
## GIVERANDOM: The function called when ##
## the game tries to give out any items ##
##########################################

##Full hotbar check
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar

##UUID randomizer - pick canopy or select other item
#Generate random number
summon marker ~ ~ ~ {Tags:["CTFRNG"]}
scoreboard players set @e[tag=CTFRNG,type=marker,limit=1] RNGmax 4
execute as @e[tag=CTFRNG,type=marker,limit=1] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=CTFRNG,type=marker,limit=1] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @s[tag=!gaveFirstItem] run scoreboard players set @e[tag=CTFRNG,type=marker,limit=1] RNGscore 3

#Give canopy (25% chance) - cannot have a streak greater than 2 canopies in a row
execute as @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=..1}] if entity @e[tag=CTFRNG,type=marker,limit=1,scores={RNGscore=0}] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givecanopy
execute as @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=..1}] if entity @e[tag=CTFRNG,type=marker,limit=1,scores={RNGscore=0}] run scoreboard players add @s canopyStreak 1
execute as @s[tag=canopyStreaked] if entity @e[tag=CTFRNG,type=marker,limit=1,scores={RNGscore=0}] run function items:rng
execute as @s[tag=canopyStreaked] if entity @e[tag=CTFRNG,type=marker,limit=1,scores={RNGscore=0}] run function items:tetris
execute as @s[tag=canopyStreaked,scores={canopyStreak=1..}] if entity @e[tag=CTFRNG,type=marker,limit=1,scores={RNGscore=0}] run scoreboard players remove @s canopyStreak 1
execute as @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=2..}] if entity @e[tag=CTFRNG,type=marker,limit=1,scores={RNGscore=0}] run tag @s add canopyStreaked

#Select item (75% chance)
execute if entity @e[tag=CTFRNG,type=marker,limit=1,scores={RNGscore=1..3}] run function items:rng
execute if entity @e[tag=CTFRNG,type=marker,limit=1,scores={RNGscore=1..3}] run function items:tetris
execute as @s[scores={canopyStreak=1..}] if entity @e[tag=CTFRNG,type=marker,limit=1,scores={RNGscore=1..3}] run scoreboard players remove @s canopyStreak 1
tag @s add gaveFirstItem
execute as @s[tag=canopyStreaked,scores={canopyStreak=..0}] run tag @s remove canopyStreaked

#Kill randomizer
kill @e[tag=CTFRNG,type=marker,limit=1]

##Actionbar notifications
execute as @a unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @a unless entity @s[team=!Yellow,team=!Blue] run scoreboard players set @s actionbardelay 0
execute as @a[tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}

##Wind Down modifier - subtract two ticks from Item Delay
scoreboard players remove @s[tag=WindDown,scores={MaxItemTime=62..}] MaxItemTime 2