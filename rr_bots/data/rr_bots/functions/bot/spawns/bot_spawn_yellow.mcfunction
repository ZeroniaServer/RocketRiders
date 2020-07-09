summon armor_stand ~ ~ ~ {Tags:["FreshYellowBot","YellowBot","Bot"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,CustomName:"{\"text\":\"[BOT]\",\"color\":\"gold\"}",CustomNameVisible:1b,Pose:{LeftArm:[0f,0f,270f],RightArm:[0f,0f,90f]}}
execute as @e[tag=FreshYellowBot,type=armor_stand] run team join Yellow @s
execute as @e[tag=FreshYellowBot,type=armor_stand] run scoreboard players set @s BotHP 3
execute as @e[tag=FreshYellowBot,type=armor_stand] run replaceitem entity @s armor.head player_head{SkullOwner:Cam}
execute as @e[tag=FreshYellowBot,type=armor_stand] run replaceitem entity @s armor.chest leather_chestplate{display:{color:16449280}}
execute as @e[tag=FreshYellowBot,type=armor_stand] run replaceitem entity @s armor.legs leather_leggings{display:{color:16449280}}
execute as @e[tag=FreshYellowBot,type=armor_stand] run replaceitem entity @s armor.feet leather_boots{display:{color:16449280}}
execute as @e[tag=FreshYellowBot,type=armor_stand] run replaceitem entity @s weapon.mainhand bow
tag @e[tag=FreshYellowBot,type=armor_stand] remove FreshYellowBot