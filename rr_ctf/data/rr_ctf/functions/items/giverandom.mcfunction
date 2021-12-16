##########################################
## GIVERANDOM: The function called when ##
## the game tries to give out any items ##
##########################################

##UUID randomizer - pick canopy or select other item
#Generate random number
summon marker ~ ~ ~ {Tags:["CTFRNG"]}
scoreboard players set @e[type=marker,tag=CTFRNG,limit=1] RNGmax 4
execute as @e[type=marker,tag=CTFRNG,limit=1] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=CTFRNG,limit=1] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax
execute if entity @s[tag=!gaveFirstItem] run scoreboard players set @e[type=marker,tag=CTFRNG,limit=1] RNGscore 3

#Give canopy (25% chance) - cannot have a streak greater than 2 canopies in a row
execute if entity @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=..1},tag=!doStacking] run schedule function items:scheduleantidupe 1t append
execute if entity @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=..1}] if entity @e[type=marker,tag=CTFRNG,limit=1,scores={RNGscore=0}] as @e[type=item] if data entity @s {Item:{id:"minecraft:ender_pearl"}} run function items:deduct
execute if entity @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=..1}] if entity @e[type=marker,tag=CTFRNG,limit=1,scores={RNGscore=0}] run function items:full_hotbar
execute if entity @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=..1}] if entity @e[type=marker,tag=CTFRNG,limit=1,scores={RNGscore=0}] as @a unless entity @s[team=!Yellow,team=!Blue] run function items:util/givecanopy
execute if entity @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=..1}] if entity @e[type=marker,tag=CTFRNG,limit=1,scores={RNGscore=0}] run scoreboard players add @s canopyStreak 1
execute if entity @s[tag=canopyStreaked] if entity @e[type=marker,tag=CTFRNG,limit=1,scores={RNGscore=0}] run function items:rng
execute if entity @s[tag=canopyStreaked] if entity @e[type=marker,tag=CTFRNG,limit=1,scores={RNGscore=0}] run function items:tetris
execute if entity @s[tag=canopyStreaked,scores={canopyStreak=1..}] if entity @e[type=marker,tag=CTFRNG,limit=1,scores={RNGscore=0}] run scoreboard players remove @s canopyStreak 1
execute if entity @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=2..}] if entity @e[type=marker,tag=CTFRNG,limit=1,scores={RNGscore=0}] run tag @s add canopyStreaked

#Select item (75% chance)
execute if entity @e[type=marker,tag=CTFRNG,limit=1,scores={RNGscore=1..3}] run function items:tetris
execute if entity @e[type=marker,tag=CTFRNG,limit=1,scores={RNGscore=1..3}] run function items:rng
execute if entity @e[type=marker,tag=CTFRNG,limit=1,scores={RNGscore=1..3}] run function items:tetris
execute if entity @s[scores={canopyStreak=1..}] if entity @e[type=marker,tag=CTFRNG,limit=1,scores={RNGscore=1..3}] run scoreboard players remove @s canopyStreak 1
tag @s add gaveFirstItem
execute if entity @s[tag=canopyStreaked,scores={canopyStreak=..0}] run tag @s remove canopyStreaked

##Condition for Tetris bag resetting
execute if entity @s[tag=!Chaos,tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllUtil] run function items:tetrisreset
execute if entity @s[tag=Chaos,tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllSpecial,tag=givenAllUtil] run function items:tetrisreset

#Kill randomizer
kill @e[type=marker,tag=CTFRNG,limit=1]

##Actionbar notifications
execute as @a unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @a unless entity @s[team=!Yellow,team=!Blue] run scoreboard players set @s actionbardelay 0
execute as @a[tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noFullHotbarSound] as @a[tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @a[tag=wasFullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noFullHotbarSound] as @a[tag=wasFullHotbar] unless entity @s[team=!Yellow,team=!Blue] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

##Wind Down modifier - subtract two ticks from Item Delay
scoreboard players remove @s[tag=WindDown,scores={MaxItemTime=62..}] MaxItemTime 2