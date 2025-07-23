##Gives executor a Splash
#Antidupe check
execute store result score @s HasSplash run clear @s lingering_potion[custom_data~{splash:1b}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasSplash %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasSplash=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasSplash 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasSplash=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Splash already obtained.","color":"aqua"}
execute if entity @s[scores={HasSplash=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Splash already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasSplash=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Splash obtained.","color":"aqua"}
loot give @s[scores={HasSplash=0},tag=!fullHotbar] loot items:util/splash
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasSplash=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenSplash