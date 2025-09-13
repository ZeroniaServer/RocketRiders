#Antidupe check
execute store result score @s HasFireball run clear @s *[custom_data~{id:"cluster_fireball"}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasFireball %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasFireball=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasFireball 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasFireball=1..},tag=!fullHotbar,tag=!BackFireball,tag=!itemDeducted] actionbar {"text":"Cluster Fireball already obtained.","color":"aqua"}
execute if entity @s[scores={HasFireball=1..},tag=!fullHotbar,tag=!BackFireball,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackFireball,tag=itemDeducted] actionbar {"text":"Cluster Fireball already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=!BackFireball,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasFireball=0},tag=!fullHotbar,tag=!BackFireball,tag=!itemDeducted] actionbar {"text":"Cluster Fireball obtained.","color":"aqua"}
execute if entity @s[scores={HasFireball=0},tag=!fullHotbar] run function items:give/cluster_fireball {count:1}

tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add givenFireball