##Gives executor a Shield
#Antidupe check
execute store result score @s HasShield run clear @s snowball 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasShield %= 16 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] as @s[scores={HasShield=1..15},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasShield 0

#Title/giving
title @s[scores={HasShield=1..},tag=!fullHotbar] actionbar {"text":"Shield already obtained.","color":"aqua"}
execute as @s[scores={HasShield=1..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasShield=0},tag=!fullHotbar] actionbar {"text":"Shield obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasShield=0},tag=!fullHotbar] snowball{CustomModelData:2,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Shield","color":"gold","bold":true}]',Lore:['{"text":"Throw to spawn a glass Shield.","color":"gray"}','{"text":"This is able to stop most missiles.","color":"gray"}']}} 1
give @s[team=Blue,scores={HasShield=0},tag=!fullHotbar] snowball{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Shield","color":"blue","bold":true}]',Lore:['{"text":"Throw to spawn a glass Shield.","color":"gray"}','{"text":"This is able to stop most missiles.","color":"gray"}']}} 1

#Game tracking
tag @e[type=armor_stand,tag=Selection,tag=givenShield] add givenShieldTwice
tag @e[type=armor_stand,tag=Selection] add givenShield