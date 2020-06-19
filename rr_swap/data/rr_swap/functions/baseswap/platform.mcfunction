scoreboard players add SwapPlatform swapside 1

execute if entity @e[tag=Selection,scores={SDtime=1..}] run scoreboard players set QuickSwap swapside 1

bossbar set rr_swap:swap_progress players @a[team=!Lobby]

execute if score QuickSwap swapside matches 0 if score SwapPlatform swapside matches 21..30 if score BossbarB swapside matches 1..10 run scoreboard players remove BossbarB swapside 1
execute if score QuickSwap swapside matches 0 if score SwapPlatform swapside matches 1000.. run scoreboard players add BossbarA swapside 1
execute if score QuickSwap swapside matches 0 if score SwapPlatform swapside matches 1200.. run tag @e[tag=swapplatform] add SwappingSides

execute if score QuickSwap swapside matches 1 if score SwapPlatform swapside matches 21..30 if score BossbarB swapside matches 1..10 run scoreboard players remove BossbarB swapside 1
execute if score QuickSwap swapside matches 1 if score SwapPlatform swapside matches 200.. run scoreboard players add BossbarA swapside 1
execute if score QuickSwap swapside matches 1 if score SwapPlatform swapside matches 400.. run tag @e[tag=swapplatform] add SwappingSides


execute if score BossbarA swapside matches 20.. run scoreboard players add BossbarB swapside 1
execute if score BossbarA swapside matches 20.. if score BossbarB swapside matches 1..5 as @a[team=!Lobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score BossbarA swapside matches 20.. if score BossbarB swapside matches 6 as @a[team=!Lobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.6
execute if score BossbarA swapside matches 20.. if score BossbarB swapside matches 7 as @a[team=!Lobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.7
execute if score BossbarA swapside matches 20.. if score BossbarB swapside matches 8 as @a[team=!Lobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.8
execute if score BossbarA swapside matches 20.. if score BossbarB swapside matches 9 as @a[team=!Lobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.9
execute if score BossbarA swapside matches 20.. run scoreboard players set BossbarA swapside 0
execute store result bossbar rr_swap:swap_progress value run scoreboard players get BossbarB swapside
execute if entity @e[tag=SwappingSides] as @a[team=!Lobby] at @s run playsound entity.zombie_villager.converted player @s ~ ~ ~ 1 1.2
execute if score SwapSide swapside matches 0 as @e[tag=SwappingSides] run function rr_swap:baseswap/lightyellow
execute if score SwapSide swapside matches 1 as @e[tag=SwappingSides] run function rr_swap:baseswap/darkyellow