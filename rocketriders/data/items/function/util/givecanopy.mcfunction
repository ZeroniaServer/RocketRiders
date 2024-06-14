##Gives executor a Canopy
#Antidupe check - Canopies are an exception for modes that require extra Canopies for travel. In this case, you can only have 2 Canopies.
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack] store result score @s HasPlat run clear @s ender_pearl 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack] store result score @s[tag=!itemDeducted] HasPlat run clear @s ender_pearl 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasPlat %= 16 CmdData
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasPlat=1..15},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasPlat 0

#Without Canopy stacking
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!canopyStack] run title @s[scores={HasPlat=1..},tag=!fullHotbar] actionbar {"text":"Canopy already obtained.","color":"aqua"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!canopyStack] if entity @s[scores={HasPlat=1..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!canopyStack] run title @s[scores={HasPlat=0},tag=!fullHotbar] actionbar {"text":"Canopy obtained.","color":"aqua"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!canopyStack] run give @s[team=Yellow,scores={HasPlat=0},tag=!fullHotbar] ender_pearl[max_stack_size=64,custom_name='[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Canopy","color":"gold","bold":true}]',lore=['{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don't play with fire on it!","color":"gray"}'],custom_model_data=2] 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!canopyStack] run give @s[team=Blue,scores={HasPlat=0},tag=!fullHotbar] ender_pearl[max_stack_size=64,custom_name='[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Canopy","color":"blue","bold":true}]',lore=['{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don't play with fire on it!","color":"gray"}'],custom_model_data=1] 1

#With Canopy stacking
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=!CTF3stack] if entity @s[scores={HasPlat=1},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=!CTF3stack] run title @s[scores={HasPlat=2..},tag=!fullHotbar] actionbar {"text":"Canopy already obtained.","color":"aqua"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=!CTF3stack] if entity @s[scores={HasPlat=2..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=!CTF3stack] run title @s[scores={HasPlat=..1},tag=!fullHotbar] actionbar {"text":"Canopy obtained.","color":"aqua"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=!CTF3stack] run give @s[team=Yellow,scores={HasPlat=..1},tag=!fullHotbar] ender_pearl[max_stack_size=64,custom_name='[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Canopy","color":"gold","bold":true}]',lore=['{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don't play with fire on it!","color":"gray"}'],custom_model_data=2] 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=!CTF3stack] run give @s[team=Blue,scores={HasPlat=..1},tag=!fullHotbar] ender_pearl[max_stack_size=64,custom_name='[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Canopy","color":"blue","bold":true}]',lore=['{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don't play with fire on it!","color":"gray"}'],custom_model_data=1] 1

#CTF mode overtime
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=CTF3stack] if entity @s[scores={HasPlat=1},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=CTF3stack] run title @s[scores={HasPlat=3..},tag=!fullHotbar] actionbar {"text":"Canopy already obtained.","color":"aqua"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=CTF3stack] if entity @s[scores={HasPlat=3..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=CTF3stack] run title @s[scores={HasPlat=..2},tag=!fullHotbar] actionbar {"text":"Canopy obtained.","color":"aqua"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=CTF3stack] run give @s[team=Yellow,scores={HasPlat=..2},tag=!fullHotbar] ender_pearl[max_stack_size=64,custom_name='[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Canopy","color":"gold","bold":true}]',lore=['{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don't play with fire on it!","color":"gray"}'],custom_model_data=2] 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=canopyStack,tag=CTF3stack] run give @s[team=Blue,scores={HasPlat=..2},tag=!fullHotbar] ender_pearl[max_stack_size=64,custom_name='[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Canopy","color":"blue","bold":true}]',lore=['{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don't play with fire on it!","color":"gray"}'],custom_model_data=1] 1

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,tag=tetrisTime] add givenCanopy