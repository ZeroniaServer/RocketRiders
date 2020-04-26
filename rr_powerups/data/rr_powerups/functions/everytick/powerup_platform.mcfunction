#obsidian rim
fill ~6 ~-1 ~-1 ~6 ~-1 ~1 obsidian
fill ~-6 ~-1 ~-1 ~-6 ~-1 ~1 obsidian
fill ~-1 ~-1 ~6 ~1 ~-1 ~6 obsidian
fill ~-1 ~-1 ~-6 ~1 ~-1 ~-6 obsidian
fill ~-5 ~-1 ~2 ~-5 ~-1 ~3 obsidian
fill ~-5 ~-1 ~-2 ~-5 ~-1 ~-3 obsidian
fill ~5 ~-1 ~2 ~5 ~-1 ~3 obsidian
fill ~5 ~-1 ~-2 ~5 ~-1 ~-3 obsidian
fill ~-2 ~-1 ~5 ~-3 ~-1 ~5 obsidian
fill ~-2 ~-1 ~-5 ~-3 ~-1 ~-5 obsidian
fill ~2 ~-1 ~5 ~3 ~-1 ~5 obsidian
fill ~2 ~-1 ~-5 ~3 ~-1 ~-5 obsidian
setblock ~4 ~-1 ~4 obsidian
setblock ~-4 ~-1 ~4 obsidian
setblock ~-4 ~-1 ~-4 obsidian
setblock ~4 ~-1 ~-4 obsidian

#purpur stairs
setblock ~-1 ~-1 ~ purpur_stairs[facing=west]
setblock ~1 ~-1 ~ purpur_stairs[facing=east]
setblock ~ ~-1 ~-1 purpur_stairs[facing=north]
setblock ~ ~-1 ~1 purpur_stairs[facing=south]

execute as @s[scores={capturePoint=0},tag=!contested] at @s run function rr_powerups:everytick/uncaptured_platform
execute as @s[scores={capturePoint=1},tag=!contested] at @s run function rr_powerups:everytick/blue_platform
execute as @s[scores={capturePoint=2},tag=!contested] at @s run function rr_powerups:everytick/yellow_platform
execute as @s[tag=contested] at @s run function rr_powerups:everytick/contested_platform

#antidupe blocks
fill ~-1 ~-2 ~-5 ~1 ~-2 ~5 air
fill ~-5 ~-2 ~-1 ~5 ~-2 ~1 air
fill ~-3 ~-2 ~-4 ~3 ~-2 ~4 air
fill ~-4 ~-2 ~-3 ~4 ~-2 ~3 air