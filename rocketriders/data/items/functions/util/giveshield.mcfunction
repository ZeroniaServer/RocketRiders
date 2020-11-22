##Gives executor a Shield
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasShield run clear @s snowball 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasShield 0

#Title/giving
title @s[scores={HasShield=1..},tag=!fullHotbar] actionbar {"text":"Shield already obtained.","color":"aqua"}
title @s[scores={HasShield=0},tag=!fullHotbar] actionbar {"text":"Shield obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasShield=0},tag=!fullHotbar] snowball{CustomModelData:2,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Shield","color":"gold","bold":"true"}]',Lore:['{"text":"Throw to spawn a glass Shield.","color":"gray"}','{"text":"This is able to stop most missiles.","color":"gray"}']}} 1
give @s[team=Blue,scores={HasShield=0},tag=!fullHotbar] snowball{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Shield","color":"blue","bold":"true"}]',Lore:['{"text":"Throw to spawn a glass Shield.","color":"gray"}','{"text":"This is able to stop most missiles.","color":"gray"}']}} 1

#Game tracking
tag @e[tag=Selection,tag=givenShield] add givenShieldTwice
tag @e[tag=Selection,type=armor_stand] add givenShield