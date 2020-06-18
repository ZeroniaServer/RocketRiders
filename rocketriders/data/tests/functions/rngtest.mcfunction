scoreboard objectives add RNGmax dummy
scoreboard objectives add RNGscore dummy

summon area_effect_cloud ~ ~ ~ {Tags:["UUIDRNG"],Duration:2000000000}
scoreboard players set @e[tag=UUIDRNG] RNGmax 100
execute as @e[tag=UUIDRNG] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=UUIDRNG] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=UUIDRNG,limit=1] RNGscore

kill @e[tag=UUIDRNG]