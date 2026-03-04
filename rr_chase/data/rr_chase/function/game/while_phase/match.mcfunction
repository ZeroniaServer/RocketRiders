#Flagpole
fill 12 64 64 12 71 64 oak_fence replace #custom:basereplace

fill -14 64 66 39 74 70 air replace white_wool
fill -14 64 66 39 74 70 air replace black_wool
fill -14 64 65 39 74 70 air replace oak_fence

fill -14 64 62 39 74 58 air replace white_wool
fill -14 64 62 39 74 58 air replace black_wool
fill -14 64 63 39 74 58 air replace oak_fence

#Make flag wave around
scoreboard players add FlagWave FlagScore 1

execute if score FlagWave FlagScore matches 20 run place template game:flag/checkered/stage_1 8 70 63
execute if score FlagWave FlagScore matches 40.. run place template game:flag/checkered/stage_2 8 70 63
execute if score FlagWave FlagScore matches 40.. run scoreboard players reset FlagWave FlagScore

#Place stairs
execute positioned 10 63 66 run function rr_chase:arenaclear/stairleft
execute positioned 14 63 66 run function rr_chase:arenaclear/stairright
