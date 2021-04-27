##Clear Yellow/Blue spawn blocks (for valid spawnpoints)

execute if entity @s[tag=!leaveBSpawn] run fill 11 64 -66 13 66 -65 cave_air
execute if entity @s[tag=!leaveYSpawn] run fill 13 64 66 11 66 65 cave_air