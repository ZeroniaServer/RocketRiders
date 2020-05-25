#Summon the RNG entity
summon area_effect_cloud ~ ~ ~ {Tags:["UUIDRNG"],Duration:2000000000}

#Set a max value for the randomizer. The random value will be selected from 0-RNGmax
scoreboard players set @e[tag=UUIDRNG] RNGmax 100

#Get the RNG entity UUID and scale it down by 1 divided by 2 to the power of 32
#(Why exactly this number is required, I have no clue, but it's a necesary number)
execute as @e[tag=UUIDRNG] store result score @s RNGscore run data get entity @s UUIDMost 0.00000000023283064365386962890625

# % the RNGscore by the RNGmax
execute as @e[tag=UUIDRNG] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax


#Some tellraws that tell you what the max value was and what the selected value was.
execute if entity @e[tag=UUIDRNG,scores={RNGscore=0..}] run tellraw @a ["",{"text":"This test's maximum value: ","color":"dark_green"},{"score":{"name":"@e[tag=UUIDRNG,limit=1]","objective":"RNGmax"},"bold":true,"color":"green"}]
execute if entity @e[tag=UUIDRNG,scores={RNGscore=0..}] run tellraw @a ["",{"text":"Selected random value: ","color":"dark_green"},{"score":{"name":"@e[tag=UUIDRNG,limit=1]","objective":"RNGscore"},"bold":true,"color":"green"}]

#Some tellraws for if you're missing scoreboards
execute unless entity @e[tag=UUIDRNG,scores={RNGscore=0..}] run tellraw @a ["",{"text":"You're missing the RNGscore scoreboard (dummy objective)","color":"dark_red"}]
execute unless entity @e[tag=UUIDRNG,scores={RNGmax=0..}] run tellraw @a ["",{"text":"You're missing the RNGmax scoreboard (dummy objective)","color":"dark_red"}]

#Kill the RNG entity
kill @e[tag=UUIDRNG]