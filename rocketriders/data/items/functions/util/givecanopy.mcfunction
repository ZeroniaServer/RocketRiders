##Gives executor a Canopy
#Antidupe check - Canopies are an exception for modes that require extra Canopies for travel. In this case, you can only have 3 Canopies.
execute store result score @s HasPlat run clear @s ender_pearl 0
execute if entity @e[tag=Selection,tag=doStacking,tag=!canopyStack,type=armor_stand] run scoreboard players operation @s HasPlat %= 16 CmdData
execute if entity @e[tag=Selection,tag=doStacking,tag=!canopyStack,type=armor_stand] as @s[scores={HasPlat=1..15},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,tag=!canopyStack,type=armor_stand] run scoreboard players set @s HasPlat 0

#Without Canopy stacking
execute if entity @e[tag=Selection,type=armor_stand,tag=!canopyStack] run title @s[scores={HasPlat=1..},tag=!fullHotbar] actionbar {"text":"Canopy already obtained.","color":"aqua"}
execute if entity @e[tag=Selection,type=armor_stand,tag=!canopyStack] run title @s[scores={HasPlat=0},tag=!fullHotbar] actionbar {"text":"Canopy obtained.","color":"aqua"}
execute if entity @e[tag=Selection,type=armor_stand,tag=!canopyStack] run give @s[team=Yellow,scores={HasPlat=0},tag=!fullHotbar] ender_pearl{CustomModelData:2,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Canopy","color":"gold","bold":"true"}]',Lore:['{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don\'t play with fire on it!","color":"gray"}']}} 1
execute if entity @e[tag=Selection,type=armor_stand,tag=!canopyStack] run give @s[team=Blue,scores={HasPlat=0},tag=!fullHotbar] ender_pearl{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Canopy","color":"blue","bold":"true"}]',Lore:['{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don\'t play with fire on it!","color":"gray"}']}} 1

#With Canopy stacking
execute if entity @e[tag=Selection,type=armor_stand,tag=canopyStack] as @s[scores={HasPlat=1..2},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,type=armor_stand,tag=canopyStack] run title @s[scores={HasPlat=3..},tag=!fullHotbar] actionbar {"text":"Canopy already obtained.","color":"aqua"}
execute if entity @e[tag=Selection,type=armor_stand,tag=canopyStack] run title @s[scores={HasPlat=..2},tag=!fullHotbar] actionbar {"text":"Canopy obtained.","color":"aqua"}
execute if entity @e[tag=Selection,type=armor_stand,tag=canopyStack] run give @s[team=Yellow,scores={HasPlat=..2},tag=!fullHotbar] ender_pearl{CustomModelData:2,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Canopy","color":"gold","bold":"true"}]',Lore:['{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don\'t play with fire on it!","color":"gray"}']}} 1
execute if entity @e[tag=Selection,type=armor_stand,tag=canopyStack] run give @s[team=Blue,scores={HasPlat=..2},tag=!fullHotbar] ender_pearl{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Canopy","color":"blue","bold":"true"}]',Lore:['{"text":"The Canopy creates a leaf platform.","color":"gray"}','{"text":"Use it to quickly reposition yourself,","color":"gray"}','{"text":"but don\'t play with fire on it!","color":"gray"}']}} 1

#Game tracking
tag @e[tag=Selection,type=armor_stand] add givenCanopy