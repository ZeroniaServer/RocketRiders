##Operator function -- resets parkour leaderboard/times

setblock -30 196 22 spruce_stairs[half=top,facing=east]
setblock -29 196 22 spruce_slab
setblock -31 196 22 gold_block
setblock -32 196 22 spruce_stairs[half=top,facing=west]
setblock -33 196 22 spruce_slab
setblock -32 190 17 black_concrete
setblock -31 190 16 black_concrete
setblock -31 191 17 black_concrete
setblock -31 190 18 black_concrete
setblock -30 190 17 black_concrete
setblock -31 189 17 black_concrete
setblock -31 190 17 warped_wall_sign[facing=south]

kill @e[tag=ParkourLB]
summon armor_stand -31 197 22 {Tags:["ParkourPlayer","ParkourLB"],NoGravity:1b,NoBasePlate:1b,Marker:1b,Invulnerable:1b,ShowArms:1b}
summon area_effect_cloud -31 196 21 {Duration:2000000000,Tags:["ParkourLB","ParkourName"],CustomName:'"?"',CustomNameVisible:1b}
summon area_effect_cloud -31 195.7 21 {Duration:2000000000,Tags:["ParkourLB","ParkourTime"],CustomName:'"?"',CustomNameVisible:1b}
execute as @e[tag=ParkourPlayer] at @s run tp @s ~ ~ ~ 180 0
item replace entity @e[tag=ParkourPlayer] armor.head with player_head{SkullOwner:{Id:[I;-539389612,1309754415,-1282767004,-1831671292],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDM0ZTA2M2NhZmI0NjdhNWM4ZGU0M2VjNzg2MTkzOTlmMzY5ZjRhNTI0MzRkYTgwMTdhOTgzY2RkOTI1MTZhMCJ9fX0="}]}}}
item replace entity @e[tag=ParkourPlayer] armor.chest with leather_chestplate{display:{color: 16772430}}
item replace entity @e[tag=ParkourPlayer] armor.legs with leather_leggings{display:{color: 16772430}}
item replace entity @e[tag=ParkourPlayer] armor.feet with leather_boots{display:{color: 16772430}}

tag @a remove firstParkour
scoreboard players reset * bestParkourMins
scoreboard players reset * bestParkourSecs
scoreboard players reset * bestParkourDeci
scoreboard players reset * bestParkourDeci2
scoreboard players reset * bestParkourTime
scoreboard players set @e[tag=ParkourTime] bestParkourTime 2000000000