##Gives executor a Vortex
#Antidupe check
execute store result score @s HasVortex run clear @s egg{icbm:0b} 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasVortex %= 16 CmdData
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasVortex=1..15},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasVortex 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasVortex=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Vortex already obtained","color":"aqua"}
execute if entity @s[scores={HasVortex=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Vortex already obtained","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasVortex=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Vortex obtained","color":"aqua"}
give @s[team=Yellow,scores={HasVortex=0},tag=!fullHotbar] egg{icbm:0b,CustomModelData:2,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Vortex","color":"gold","bold":true}]',Lore:['{"text":"A sky-mine. Blows up when enemies get close,","color":"gray"}','{"text":"when missiles pass through it, or when it gets","color":"gray"}','{"text":"shot by projectiles. It also follows enemies!","color":"gray"}']}} 1
give @s[team=Blue,scores={HasVortex=0},tag=!fullHotbar] egg{icbm:0b,CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Vortex","color":"blue","bold":true}]',Lore:['{"text":"A sky-mine. Blows up when enemies get close,","color":"gray"}','{"text":"when missiles pass through it, or when it gets","color":"gray"}','{"text":"shot by projectiles. It also follows enemies!","color":"gray"}']}} 1

#Game tracking
tag @e[type=armor_stand,tag=Selection,tag=tetrisTime] add givenVortex