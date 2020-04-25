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

execute as @s[scores={capturePoint=0}] at @s run function rr_powerups:everytick/uncaptured_platform
execute as @s[scores={capturePoint=1}] at @s run function rr_powerups:everytick/blue_platform
execute as @s[scores={capturePoint=2}] at @s run function rr_powerups:everytick/yellow_platform