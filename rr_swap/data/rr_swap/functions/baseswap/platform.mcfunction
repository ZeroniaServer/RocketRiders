execute if score SwapPlatformSec swapside matches 2.. run bossbar set rr_swap:swap_progress name [{"text":"Swapping in: ","bold":true},{"score":{"name":"SwapPlatformSec","objective":"swapside"}},{"text":" seconds"}]
execute if score SwapPlatformSec swapside matches 1 run bossbar set rr_swap:swap_progress name [{"text":"Swapping in: ","bold":true},{"score":{"name":"SwapPlatformSec","objective":"swapside"}},{"text":" second"}]
scoreboard players add SwapPlatform swapside 1
scoreboard players add SwapPlatformTick swapside 1
execute if score SwapPlatformTick swapside matches 20 run scoreboard players remove SwapPlatformSec swapside 1
execute if score SwapPlatformTick swapside matches 20 run scoreboard players set SwapPlatformTick swapside 0

execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={SDtime=1..}] unless score QuickSwap swapside matches 1 run scoreboard players set SwapSide swapside 0
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={SDtime=1..}] unless score QuickSwap swapside matches 1 run scoreboard players set SwapPlatform swapside 0
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={SDtime=1..}] unless score QuickSwap swapside matches 1 run scoreboard players set BossbarA swapside 0
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={SDtime=1..}] run scoreboard players set QuickSwap swapside 1

bossbar set rr_swap:swap_progress players @a[predicate=custom:indimension,team=!Lobby]

execute if score QuickSwap swapside matches 0 if score SwapPlatform swapside matches 21..30 if score BossbarB swapside matches 1..10 run scoreboard players remove BossbarB swapside 1
execute if score QuickSwap swapside matches 0 if score SwapPlatform swapside matches 1000.. run scoreboard players add BossbarA swapside 1
execute if score QuickSwap swapside matches 0 if score SwapPlatform swapside matches 1200.. run tag @e[predicate=custom:indimension,type=marker,tag=swapplatform] add SwappingSides

execute if score QuickSwap swapside matches 1 if score SwapPlatform swapside matches 21..30 if score BossbarB swapside matches 1..10 run scoreboard players remove BossbarB swapside 1
execute if score QuickSwap swapside matches 1 if score SwapPlatform swapside matches 200.. run scoreboard players add BossbarA swapside 1
execute if score QuickSwap swapside matches 1 if score SwapPlatform swapside matches 400.. run tag @e[predicate=custom:indimension,type=marker,tag=swapplatform] add SwappingSides


execute if score BossbarA swapside matches 20.. run scoreboard players add BossbarB swapside 1
execute if score BossbarA swapside matches 20.. if score BossbarB swapside matches 1..5 as @a[predicate=custom:indimension,team=!Lobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score BossbarA swapside matches 20.. if score BossbarB swapside matches 6 as @a[predicate=custom:indimension,team=!Lobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.6
execute if score BossbarA swapside matches 20.. if score BossbarB swapside matches 7 as @a[predicate=custom:indimension,team=!Lobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.7
execute if score BossbarA swapside matches 20.. if score BossbarB swapside matches 8 as @a[predicate=custom:indimension,team=!Lobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.8
execute if score BossbarA swapside matches 20.. if score BossbarB swapside matches 9 as @a[predicate=custom:indimension,team=!Lobby] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.9
execute if score BossbarA swapside matches 20.. run scoreboard players set BossbarA swapside 0
execute store result bossbar rr_swap:swap_progress value run scoreboard players get BossbarB swapside
execute if entity @e[predicate=custom:indimension,type=marker,tag=SwappingSides] if score QuickSwap swapside matches 0 run scoreboard players set SwapPlatformSec swapside 60
execute if entity @e[predicate=custom:indimension,type=marker,tag=SwappingSides] if score QuickSwap swapside matches 1 run scoreboard players set SwapPlatformSec swapside 20
execute if entity @e[predicate=custom:indimension,type=marker,tag=SwappingSides] run scoreboard players set SwapPlatformTick swapside 0
execute if entity @e[predicate=custom:indimension,type=marker,tag=SwappingSides] as @a[predicate=custom:indimension,team=!Lobby] at @s run playsound entity.zombie_villager.converted master @s ~ ~ ~ 1 1.2
execute if score SwapSide swapside matches 0 as @e[predicate=custom:indimension,type=marker,tag=SwappingSides] run function rr_swap:baseswap/lightyellow
execute if score SwapSide swapside matches 1 as @e[predicate=custom:indimension,type=marker,tag=SwappingSides] run function rr_swap:baseswap/darkyellow