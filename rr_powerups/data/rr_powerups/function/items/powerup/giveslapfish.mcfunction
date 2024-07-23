#Antidupe check
execute store result score @s HasSlapFish run clear @s cooked_salmon 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasSlapFish %= 64 CmdData
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasSlapFish=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasSlapFish 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasSlapFish=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Slap Fish already obtained.","color":"light_purple"}
execute if entity @s[scores={HasSlapFish=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Slap Fish already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasSlapFish=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Slap Fish obtained.","color":"light_purple"}
give @s[scores={HasSlapFish=0},tag=!fullHotbar] minecraft:cooked_salmon[custom_name='{"text":"Slap Fish","color":"dark_purple","bold":true,"italic":true}',lore=['{"text":"Use to slap your enemies away!","color":"gray"}','{"text":"Only good for one use.","color":"gray"}'],enchantments={"minecraft:knockback":3}] 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenFish