summon armor_stand ~ ~ ~ {Tags:["FreshBlueBot","BlueBot","Bot"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,CustomName:'{"text":"[BOT]","color":"blue"}',CustomNameVisible:1b,Pose:{LeftArm:[0f,0f,270f],RightArm:[0f,0f,90f]}}
execute as @e[tag=FreshBlueBot,type=armor_stand] run team join Blue @s
execute as @e[tag=FreshBlueBot,type=armor_stand] run scoreboard players set @s BotHP 3
execute as @e[tag=FreshBlueBot,type=armor_stand] run item replace entity @s armor.head with player_head{SkullOwner: {Id: [I; -1159147547, -358856001, -1657709452, 1393773299], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTBiZmI3ZWYzNzA5ZmM2NmMwYTNiMGY1MjE0MzI4MTk2MTkzOWRkMDUxOTBiNTNlYmQwNTBiNWUzZjY2NjdmMSJ9fX0="}]}}}
execute as @e[tag=FreshBlueBot,type=armor_stand] run item replace entity @s armor.chest with leather_chestplate{display: {color: 2359551}}
execute as @e[tag=FreshBlueBot,type=armor_stand] run item replace entity @s armor.legs with leather_leggings{display: {color: 2359551}}
execute as @e[tag=FreshBlueBot,type=armor_stand] run item replace entity @s armor.feet with leather_boots{display: {color: 2359551}}
execute as @e[tag=FreshBlueBot,type=armor_stand] run item replace entity @s weapon.mainhand with bow
tag @e[tag=FreshBlueBot,type=armor_stand] remove FreshBlueBot