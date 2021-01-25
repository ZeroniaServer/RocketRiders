function arenaclear:baseplacement
execute if entity @s[tag=Molerat] run fill 4 52 -8 20 58 8 air
scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] capturePoint 0
execute as @e[tag=captureMiddle,type=area_effect_cloud] at @s run function rr_powerups:everytick/powerup_platform
function arenaclear:detailplacement

#Pregame powerup platform
fill -98 200 77 -98 200 79 minecraft:obsidian
fill -96 200 81 -94 200 81 minecraft:obsidian
fill -92 200 79 -92 200 77 minecraft:obsidian
fill -94 200 75 -96 200 75 minecraft:obsidian
setblock -97 200 76 minecraft:obsidian
setblock -97 200 80 minecraft:obsidian
setblock -93 200 80 minecraft:obsidian
setblock -93 200 76 minecraft:obsidian
fill -94 200 76 -96 200 76 minecraft:quartz_stairs
fill -97 200 79 -97 200 77 minecraft:quartz_stairs[facing=west]
fill -96 200 80 -94 200 80 minecraft:quartz_stairs[facing=south]
fill -93 200 77 -93 200 79 minecraft:quartz_stairs[facing=east]
setblock -96 200 79 quartz_slab[type=top]
setblock -94 200 79 quartz_slab[type=top]
setblock -94 200 77 quartz_slab[type=top]
setblock -96 200 77 quartz_slab[type=top]
setblock -96 200 79 quartz_slab[type=top]
setblock -95 200 79 minecraft:purpur_slab[type=top]
setblock -94 200 78 purpur_slab[type=top]
setblock -95 200 77 purpur_slab[type=top]
setblock -96 200 78 purpur_slab[type=top]
setblock -95 200 78 minecraft:sea_lantern