##Gives executor a Vortex
#Antidupe check
execute store result score @s[team=Yellow] HasVortex run clear @s egg{CustomModelData:2} 0
execute store result score @s[team=Blue] HasVortex run clear @s egg{CustomModelData:1} 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasVortex %= 16 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasVortex=1..15},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasVortex 0

#Title/giving
title @s[scores={HasVortex=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Vortex already obtained","color":"aqua"}
execute if entity @s[scores={HasVortex=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasVortex=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Vortex obtained","color":"aqua"}
give @s[team=Yellow,scores={HasVortex=0},tag=!fullHotbar] egg{icbm:0b,CustomModelData:2,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Vortex","color":"gold","bold":true}]',Lore:['{"text":"A sky-mine. Blows up when enemies get close,","color":"gray"}','{"text":"when missiles pass through it, or when it gets","color":"gray"}','{"text":"shot by projectiles. It also follows enemies!","color":"gray"}']}} 1
give @s[team=Blue,scores={HasVortex=0},tag=!fullHotbar] egg{icbm:0b,CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Vortex","color":"blue","bold":true}]',Lore:['{"text":"A sky-mine. Blows up when enemies get close,","color":"gray"}','{"text":"when missiles pass through it, or when it gets","color":"gray"}','{"text":"shot by projectiles. It also follows enemies!","color":"gray"}']}} 1

#Game tracking
tag @e[type=armor_stand,tag=Selection] add givenVortex