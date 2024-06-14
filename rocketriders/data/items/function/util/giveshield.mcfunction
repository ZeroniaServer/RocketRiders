##Gives executor a Shield
#Antidupe check
execute store result score @s HasShield run clear @s snowball 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasShield %= 16 CmdData
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasShield=1..15},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasShield 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasShield=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Shield already obtained.","color":"aqua"}
execute if entity @s[scores={HasShield=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Shield already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasShield=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Shield obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasShield=0},tag=!fullHotbar] snowball[max_stack_size=64,custom_name='[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Shield","color":"gold","bold":true}]',lore=['{"text":"Throw to spawn a glass Shield.","color":"gray"}','{"text":"This is able to stop most missiles.","color":"gray"}'],custom_model_data=2] 1
give @s[team=Blue,scores={HasShield=0},tag=!fullHotbar] max_stack_size=64,custom_name='[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Shield","color":"blue","bold":true}]',lore=['{"text":"Throw to spawn a glass Shield.","color":"gray"}','{"text":"This is able to stop most missiles.","color":"gray"}'],custom_model_data=1] 1

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,tag=givenShield,tag=tetrisTime] add givenShieldTwice
tag @e[x=0,type=armor_stand,tag=Selection,tag=tetrisTime] add givenShield