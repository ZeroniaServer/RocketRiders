##########################################
## GIVERANDOM: The function called when ##
## the game tries to give out any items ##
##########################################

##UUID randomizer - pick canopy or select other item
#Generate random number
execute store result score $CTFRNG RNGscore run random value 0..3
execute if entity @s[tag=!gaveFirstItem] run scoreboard players set $CTFRNG RNGscore 3

#Give canopy (25% chance) - cannot have a streak greater than 2 canopies in a row
execute if predicate game:game_rules/show_debug_logs/on if entity @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=..1}] if score $CTFRNG RNGscore matches 0 run function custom:log {message:["(rr_ctf:items/giverandom) Handing out canopy (special 25% logic)..."]}
execute if entity @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=..1}] if score $CTFRNG RNGscore matches 0 as @a[x=0,predicate=custom:team/any_playing_team] run function items:give_batch/canopy
execute if entity @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=..1}] if score $CTFRNG RNGscore matches 0 run scoreboard players add @s canopyStreak 1
execute if entity @s[tag=canopyStreaked] if score $CTFRNG RNGscore matches 0 run function items:rng
execute if entity @s[tag=canopyStreaked] if score $CTFRNG RNGscore matches 0 run function items:tetris
execute if entity @s[tag=canopyStreaked,scores={canopyStreak=1..}] if score $CTFRNG RNGscore matches 0 run scoreboard players remove @s canopyStreak 1
execute if entity @s[tag=gaveFirstItem,tag=!canopyStreaked,scores={canopyStreak=2..}] if score $CTFRNG RNGscore matches 0 run tag @s add canopyStreaked

#Select item (75% chance)
execute if score $CTFRNG RNGscore matches 1..3 run tag @a[x=0,predicate=custom:team/any_playing_team] add getItem
execute if score $CTFRNG RNGscore matches 1..3 run tag @s add tetrisTime
execute if score $CTFRNG RNGscore matches 1..3 run function items:tetris
execute if score $CTFRNG RNGscore matches 1..3 run function items:rng
execute if score $CTFRNG RNGscore matches 1..3 run function items:tetris
execute if score $CTFRNG RNGscore matches 1..3 run tag @a[x=0] remove getItem
execute if score $CTFRNG RNGscore matches 1..3 run tag @s remove tetrisTime
execute if entity @s[scores={canopyStreak=1..}] if score $CTFRNG RNGscore matches 1..3 run scoreboard players remove @s canopyStreak 1
tag @s add gaveFirstItem
execute if entity @s[tag=canopyStreaked,scores={canopyStreak=..0}] run tag @s remove canopyStreaked

##Condition for Tetris bag resetting
execute unless predicate game:modifiers/special_treatment/on if entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllUtil] run function items:tetrisreset
execute if predicate game:modifiers/special_treatment/on if entity @s[tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllSpecial,tag=givenAllUtil] run function items:tetrisreset

#Kill randomizer
kill @e[x=0,type=marker,tag=CTFRNG,limit=1]

##Wind Down modifier - subtract two ticks from Item Delay
execute if predicate game:modifiers/wind_down/on run scoreboard players remove @s[scores={MaxItemTime=62..}] MaxItemTime 2
