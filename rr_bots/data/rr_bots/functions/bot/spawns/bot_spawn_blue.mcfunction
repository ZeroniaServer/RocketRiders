summon armor_stand ~ ~ ~ {Tags:["FreshBlueBot","BlueBot","Bot"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,CustomName:"{\"text\":\"[BOT]\",\"color\":\"blue\"}",CustomNameVisible:1b,Pose:{LeftArm:[0f,0f,270f],RightArm:[0f,0f,90f]}}
execute as @e[tag=FreshBlueBot] run team join Blue @s
execute as @e[tag=FreshBlueBot] run scoreboard players set @s BotHP 3
execute as @e[tag=FreshBlueBot] run replaceitem entity @s armor.head player_head{SkullOwner:Cam}
execute as @e[tag=FreshBlueBot] run replaceitem entity @s armor.chest leather_chestplate{display:{color:2359551}}
execute as @e[tag=FreshBlueBot] run replaceitem entity @s armor.legs leather_leggings{display:{color:2359551}}
execute as @e[tag=FreshBlueBot] run replaceitem entity @s armor.feet leather_boots{display:{color:2359551}}
execute as @e[tag=FreshBlueBot] run replaceitem entity @s weapon.mainhand bow
tag @e[tag=FreshBlueBot] remove FreshBlueBot