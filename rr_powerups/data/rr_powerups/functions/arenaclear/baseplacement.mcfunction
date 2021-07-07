function arenaclear:baseplacement
execute if entity @s[tag=Molerat] run fill 4 52 -8 20 58 8 air
scoreboard players set @e[tag=captureMiddle,type=marker] capturePoint 0
execute as @e[tag=captureMiddle,type=marker] at @s run function rr_powerups:everytick/powerup_platform
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

#Pregame crystal platforms
setblock -95 202 59 air
fill -93 202 58 -93 202 55 obsidian
fill -97 202 58 -97 202 55 obsidian
fill -94 202 55 -96 202 55 obsidian
fill -94 201 58 -96 201 56 crying_obsidian
fill -95 201 58 -95 201 56 netherite_block
fill -94 201 57 -96 201 57 netherite_block
setblock -95 201 57 end_portal_frame[facing=south]
setblock -95 203 59 air
fill -97 203 55 -93 205 57 barrier replace air
fill -94 202 56 -96 204 58 air

setblock -95 202 97 air
fill -93 202 98 -93 202 101 obsidian
fill -97 202 98 -97 202 101 obsidian
fill -94 202 101 -96 202 101 obsidian
fill -94 201 98 -96 201 100 crying_obsidian
fill -95 201 98 -95 201 100 netherite_block
fill -94 201 99 -96 201 99 netherite_block
setblock -95 201 99 end_portal_frame[facing=north]
setblock -95 203 97 air
fill -97 203 101 -93 205 99 barrier replace air
fill -94 202 100 -96 204 98 air