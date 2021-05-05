#Antidupe check
execute store result score @s HasSlapFish run clear @s cooked_salmon 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasSlapFish %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasSlapFish=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasSlapFish 0

#Title/giving
title @s[scores={HasSlapFish=1..},tag=!fullHotbar] actionbar {"text":"Slap Fish already obtained.","color":"light_purple"}
execute as @s[scores={HasSlapFish=1..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 1
title @s[scores={HasSlapFish=0},tag=!fullHotbar] actionbar {"text":"Slap Fish obtained.","color":"light_purple"}
give @s[scores={HasSlapFish=0},tag=!fullHotbar] cooked_salmon{display:{Name:'{"text":"Slap Fish","color":"dark_purple","bold":true,"italic":true}',Lore:['{"text":"Use to slap your enemies away!","color":"gray"}','{"text":"Only good for one use.","color":"gray"}']},Enchantments:[{id:"minecraft:knockback",lvl:3s}]} 1
tag @e[tag=Selection,type=armor_stand] add givenFish