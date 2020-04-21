scoreboard players add SwapPlatform swapside 1

scoreboard players set 110 swapside 110


setblock 9 51 -3 minecraft:structure_block[mode=load]{mode:"LOAD",powered:0b,name:"minecraft:swappoint",posY:-1}
setblock 9 52 -3 minecraft:observer[facing=up,powered=true]
setblock 9 52 -3 minecraft:observer[facing=up,powered=true]


execute if score SwapPlatform swapside >= 110 swapside run execute unless entity @e[tag=swapplatform,limit=1] run summon area_effect_cloud 12 55 0 {Tags:[swapplatform],Duration:2000000000}
execute if score SwapPlatform swapside >= 110 swapside run execute unless entity @e[tag=swapplatform,limit=1] run scoreboard players reset SwapPlatform swapside
execute as @e[tag=swapplatform] run scoreboard players reset SwapPlatform swapside
execute as @e[tag=swapplatform] at @s run particle portal ~ ~ ~ 2 2 2 0.1 10 force

execute as @a[team=!Spectator] at @s if entity @e[tag=swapplatform,distance=..3] run tag @e[tag=swapplatform] add SwappingSides



execute as @e[tag=SwappingSides,tag=!BlueSwapped] unless entity @s[tag=SwappedSuccess2,tag=!SwappedSuccess] if score SwapSide swapside matches 0 run function rr_swap:baseswap/lightyellow

execute as @e[tag=SwappingSides,tag=YellowSwapped] unless entity @s[tag=SwappedSuccess,tag=!SwappedSuccess2] if score SwapSide swapside matches 1 run function rr_swap:baseswap/darkyellow

execute as @e[tag=SwappedSuccess] run fill 15 51 -3 9 54 3 air destroy
kill @e[tag=SwappedSuccess]

execute as @e[tag=SwappedSuccess2] run fill 15 51 -3 9 54 3 air destroy
kill @e[tag=SwappedSuccess2]
