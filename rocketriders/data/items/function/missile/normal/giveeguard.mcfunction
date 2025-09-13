##Gives executor an Elder Guardian
#Antidupe check
execute store result score @s HasGuard run clear @s *[custom_data~{id:"missile/elder_guardian"}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasGuard %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasGuard=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasGuard 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasGuard=1..},tag=!fullHotbar,tag=!BackGuard,tag=!itemDeducted] actionbar {"text":"Elder Guardian already obtained.","color":"aqua"}
execute if entity @s[scores={HasGuard=1..},tag=!fullHotbar,tag=!BackGuard,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackGuard,tag=itemDeducted] actionbar {"text":"Elder Guardian already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackGuard,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasGuard=0},tag=!fullHotbar,tag=!BackGuard,tag=!itemDeducted] actionbar {"text":"Elder Guardian obtained.","color":"aqua"}
execute if entity @s[scores={HasGuard=0},tag=!fullHotbar] run function items:give/missile/elder_guardian {count:1}

#Game tracking
execute unless entity @s[tag=BackGuard] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenGuard
execute unless entity @s[tag=BackGuard] run tag @e[x=0,type=armor_stand,tag=Bot] add HasEguard