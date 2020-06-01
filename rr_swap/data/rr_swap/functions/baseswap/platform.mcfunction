scoreboard players set 1100 swapside 1100
scoreboard players add SwapPlatform swapside 1
scoreboard players set 10 swapside 10
scoreboard players set 20 swapside 20
scoreboard players set 800 swapside 800

execute if entity @e[tag=swapplatform] run bossbar set minecraft:swap players @a[team=!Lobby]

execute if score SwapPlatform swapside >= 1100 swapside run kill @e[tag=swapplatform]
execute if score SwapPlatform swapside >= 1100 swapside unless entity @e[tag=swapplatform,limit=1] run summon area_effect_cloud 12 55 0 {Tags:[swapplatform],Duration:2000000000}
execute if score SwapPlatform swapside >= 1100 swapside run scoreboard players set BossbarB swapside 0
execute if score SwapPlatform swapside >= 1100 swapside run scoreboard players set BossbarA swapside 0
execute if score SwapPlatform swapside >= 1100 swapside run scoreboard players reset SwapPlatform swapside

execute if entity @e[tag=swapplatform] if score SwapPlatform swapside >= 800 swapside run scoreboard players add BossbarA swapside 1
execute if score BossbarA swapside >= 20 swapside run scoreboard players add BossbarB swapside 1
execute if score BossbarA swapside >= 20 swapside run scoreboard players reset BossbarA swapside
execute store result bossbar minecraft:swap value run scoreboard players get BossbarB swapside
execute if score BossbarB swapside >= 10 swapside run tag @e[tag=swapplatform] add SwappingSides

execute if score SwapSide swapside matches 0 as @e[tag=SwappingSides] run function rr_swap:baseswap/lightyellow
execute if score SwapSide swapside matches 1 as @e[tag=SwappingSides] run function rr_swap:baseswap/darkyellow



execute as @e[tag=SwappingSides,tag=!BlueSwapped] unless entity @s[tag=!SwappedSuccess] if score SwapSide swapside matches 0 run function rr_swap:baseswap/lightyellow

execute as @e[tag=SwappingSides,tag=!YellowSwapped] unless entity @s[tag=!SwappedSuccess2] if score SwapSide swapside matches 1 run function rr_swap:baseswap/darkyellow