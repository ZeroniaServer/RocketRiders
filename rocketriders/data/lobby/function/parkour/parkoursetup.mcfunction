##Operator function -- resets parkour leaderboard/times

setblock 67 208 3 spruce_slab[type=bottom]
setblock 66 208 3 spruce_stairs[facing=east,half=top,shape=straight]
setblock 65 208 3 gold_block
setblock 64 208 3 spruce_stairs[facing=west,half=top,shape=straight]
setblock 63 208 3 spruce_slab[type=bottom]

setblock -32 190 17 black_concrete
setblock -31 190 16 black_concrete
setblock -31 191 17 black_concrete
setblock -31 190 18 black_concrete
setblock -30 190 17 black_concrete
setblock -31 189 17 black_concrete
setblock -31 190 17 warped_wall_sign[facing=south]

kill @e[x=0,type=armor_stand,tag=ParkourLB]
kill @e[x=0,type=area_effect_cloud,tag=ParkourLB]
summon armor_stand 65 209 3 {Tags:["parkour","ParkourPlayer","ParkourLB"],NoGravity:true,NoBasePlate:true,Marker:true,Invulnerable:true,ShowArms:true,Rotation:[180,0]}
summon minecraft:text_display 65 208.45 2 {Tags:["parkour","ParkourLB","ParkourName"],billboard:"center",text:"No players have completed",background:0}
summon minecraft:text_display 65 208.15 2 {Tags:["parkour","ParkourLB","ParkourTime"],billboard:"center",text:"the parkour course yet",background:0}
item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDM0ZTA2M2NhZmI0NjdhNWM4ZGU0M2VjNzg2MTkzOTlmMzY5ZjRhNTI0MzRkYTgwMTdhOTgzY2RkOTI1MTZhMCJ9fX0="}]}]
item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.chest with leather_chestplate[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.legs with leather_leggings[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.feet with leather_boots[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]

tag @a[x=0] remove firstParkour
scoreboard players reset * bestParkourMins
scoreboard players reset * bestParkourSecs
scoreboard players reset * bestParkourDeci
scoreboard players reset * bestParkourDeci2
scoreboard players reset * bestParkourTime
scoreboard players set $best_parkour_time global 2147483647