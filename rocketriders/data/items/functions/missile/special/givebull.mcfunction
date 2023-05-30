##Gives executor a Bullet
#Antidupe check
execute store result score @s HasBullet run clear @s skeleton_horse_spawn_egg 0
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players operation @s HasBullet %= 64 CmdData
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] if entity @s[scores={HasBullet=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasBullet 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasBullet=1..},tag=!fullHotbar,tag=!BackBull,tag=!itemDeducted] actionbar {"text":"Bullet already obtained.","color":"light_purple"}
execute if entity @s[scores={HasBullet=1..},tag=!fullHotbar,tag=!BackBull,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=!BackBull,tag=itemDeducted] actionbar {"text":"Bullet already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=!BackBull,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasBullet=0},tag=!fullHotbar,tag=!BackBull,tag=!itemDeducted] actionbar {"text":"Bullet obtained.","color":"light_purple"}
loot give @s[scores={HasBullet=0},tag=!fullHotbar] loot items:special/bullet
execute at @s run playsound minecraft:entity.item.pickup player @s[scores={HasBullet=0},tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
execute unless entity @s[tag=BackBull] run tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=tetrisTime] add givenBull
execute unless entity @s[tag=BackBull] run tag @e[predicate=custom:indimension,type=armor_stand,tag=Bot] add HasBullet