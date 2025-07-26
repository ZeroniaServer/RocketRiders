#Antidupe check
execute store result score @s HasSlapFish run clear @s cooked_salmon 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasSlapFish %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasSlapFish=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasSlapFish 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasSlapFish=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Slap Fish already obtained.","color":"light_purple"}
execute if entity @s[scores={HasSlapFish=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Slap Fish already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasSlapFish=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Slap Fish obtained.","color":"light_purple"}
loot give @s[scores={HasSlapFish=0},tag=!fullHotbar] loot items:misc/slap_fish
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasSlapFish=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenFish
