summon armor_stand ~ ~ ~ {Tags:["FreshYellowBot","YellowBot","Bot"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,CustomName:'{"text":"[BOT]","color":"gold"}',CustomNameVisible:1b,Pose:{LeftArm:[0.0f,0.0f,270.0f],RightArm:[0.0f,0.0f,90.0f]}}
execute as @e[x=0,type=armor_stand,tag=FreshYellowBot] run team join Yellow @s
execute as @e[x=0,type=armor_stand,tag=FreshYellowBot] run scoreboard players set @s BotHP 3
execute as @e[x=0,type=armor_stand,tag=FreshYellowBot] run item replace entity @s armor.head with minecraft:player_head[profile={id:[I;-1159147547,-358856001,-1657709452,1393773299],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTBiZmI3ZWYzNzA5ZmM2NmMwYTNiMGY1MjE0MzI4MTk2MTkzOWRkMDUxOTBiNTNlYmQwNTBiNWUzZjY2NjdmMSJ9fX0="}]}]
execute as @e[x=0,type=armor_stand,tag=FreshYellowBot] run item replace entity @s armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:netherite",pattern:"minecraft:spire"},dyed_color=16449280]
execute as @e[x=0,type=armor_stand,tag=FreshYellowBot] run item replace entity @s armor.legs with minecraft:leather_leggings[trim={material:"minecraft:netherite",pattern:"minecraft:spire"},dyed_color=16449280]
execute as @e[x=0,type=armor_stand,tag=FreshYellowBot] run item replace entity @s armor.feet with minecraft:leather_boots[trim={material:"minecraft:netherite",pattern:"minecraft:spire"},dyed_color=16449280]
execute as @e[x=0,type=armor_stand,tag=FreshYellowBot] run item replace entity @s weapon.mainhand with bow
tag @e[x=0,type=armor_stand,tag=FreshYellowBot] remove FreshYellowBot