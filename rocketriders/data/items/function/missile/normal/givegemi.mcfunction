##Gives executor a Gemini
#Antidupe check
execute store result score @s HasGemi run clear @s *[custom_data~{id:"missile/gemini"}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasGemi %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasGemi=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasGemi 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasGemi=1..},tag=!fullHotbar,tag=!BackGemi,tag=!itemDeducted] actionbar {"text":"Gemini already obtained.","color":"aqua"}
execute if entity @s[scores={HasGemi=1..},tag=!fullHotbar,tag=!BackGemi,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackGemi,tag=itemDeducted] actionbar {"text":"Gemini already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackGemi,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasGemi=0},tag=!fullHotbar,tag=!BackGemi,tag=!itemDeducted] actionbar {"text":"Gemini obtained.","color":"aqua"}
execute if entity @s[scores={HasGemi=0},tag=!fullHotbar] run function items:give/missile/gemini {count:1}

#Game tracking
execute unless entity @s[tag=BackGemi] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenGemi
execute unless entity @s[tag=BackGemi] run tag @e[x=0,type=armor_stand,tag=Bot] add HasGemi