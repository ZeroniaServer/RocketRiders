
#Teleports
execute as @a[scores={LobbyWarp=1}] at @s run tp @s -43 211 78 90 0
execute as @a[scores={LobbyWarp=2}] at @s run tp @s -64 202 78 90 0
execute as @a[scores={LobbyWarp=3}] at @s run tp @s -78 204 64 135 0
execute as @a[scores={LobbyWarp=4}] at @s run tp @s -78 204 92 45 0
execute as @a[scores={LobbyWarp=5}] at @s run tp @s -80 201 78 90 0
execute as @a[scores={LobbyWarp=6}] at @s run tp @s 11 204 78 -90 60
execute as @a[scores={LobbyWarp=7}] at @s run msg @s Coming soonTM




#Sound and effects
execute as @a[scores={LobbyWarp=1..}] at @s run playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 1 2
execute as @a[scores={LobbyWarp=1..}] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[scores={LobbyWarp=1..}] at @s run particle flash ~ ~1 ~ 0 0 0 0 5 force @s
scoreboard players reset @a[scores={LobbyWarp=1..}] LobbyWarp