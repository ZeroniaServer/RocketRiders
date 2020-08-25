##Operator function -- resets parkour leaderboard

setblock -30 196 22 spruce_stairs[half=top,facing=east]
setblock -29 196 22 spruce_slab
setblock -31 196 22 gold_block
setblock -32 196 22 spruce_stairs[half=top,facing=west]
setblock -33 196 22 spruce_slab
setblock -31 190 17 warped_wall_sign

kill @e[tag=ParkourLB]
summon armor_stand -31 197 22 {Tags:["ParkourPlayer","ParkourLB"],NoGravity:1b,NoBasePlate:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b}
summon area_effect_cloud -31 196 21 {Duration:2000000000,Tags:["ParkourLB","ParkourName"],CustomName:"\"?\"",CustomNameVisible:1b}
summon area_effect_cloud -31 195.7 21 {Duration:2000000000,Tags:["ParkourLB","ParkourTime"],CustomName:"\"?\"",CustomNameVisible:1b}
execute as @e[tag=ParkourPlayer] at @s run tp @s ~ ~ ~ 180 0
replaceitem entity @e[tag=ParkourPlayer] armor.head player_head{SkullOwner:MHF_Question}
replaceitem entity @e[tag=ParkourPlayer] armor.chest leather_chestplate{display:{color:16772430}}
replaceitem entity @e[tag=ParkourPlayer] armor.legs leather_leggings{display:{color:16772430}}
replaceitem entity @e[tag=ParkourPlayer] armor.feet leather_boots{display:{color:16772430}}

scoreboard players set @e[tag=ParkourTime] bestParkourTime 2000000000