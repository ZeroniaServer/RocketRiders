##Gives executor a Canopy
#Antidupe check - Canopies are an exception for modes that require extra Canopies for travel. In this case, you can only have 2 Canopies.
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack] store result score @s HasPlat run clear @s ender_pearl 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack] store result score @s[tag=!itemDeducted] HasPlat run clear @s ender_pearl 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasPlat %= $16 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasPlat=1..15},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasPlat 0

#Without Canopy stacking
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!canopyStack] run title @s[scores={HasPlat=1..},tag=!fullHotbar] actionbar {"text":"Canopy already obtained.","color":"aqua"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!canopyStack] if entity @s[scores={HasPlat=1..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!canopyStack] run title @s[scores={HasPlat=0},tag=!fullHotbar] actionbar {"text":"Canopy obtained.","color":"aqua"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!canopyStack] if entity @s[scores={HasPlat=0},tag=!fullHotbar] run function items:give/canopy {count:1}

#With Canopy stacking
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack,tag=!CTF3stack] if entity @s[scores={HasPlat=1},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack,tag=!CTF3stack] run title @s[scores={HasPlat=2..},tag=!fullHotbar] actionbar {"text":"Canopy already obtained.","color":"aqua"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack,tag=!CTF3stack] if entity @s[scores={HasPlat=2..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack,tag=!CTF3stack] run title @s[scores={HasPlat=..1},tag=!fullHotbar] actionbar {"text":"Canopy obtained.","color":"aqua"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack,tag=!CTF3stack] if entity @s[scores={HasPlat=..1},tag=!fullHotbar] run function items:give/canopy {count:1}

#CTF mode overtime
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack,tag=CTF3stack] if entity @s[scores={HasPlat=1},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack,tag=CTF3stack] run title @s[scores={HasPlat=3..},tag=!fullHotbar] actionbar {"text":"Canopy already obtained.","color":"aqua"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack,tag=CTF3stack] if entity @s[scores={HasPlat=3..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack,tag=CTF3stack] run title @s[scores={HasPlat=..2},tag=!fullHotbar] actionbar {"text":"Canopy obtained.","color":"aqua"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=canopyStack,tag=CTF3stack] if entity @s[scores={HasPlat=..2},tag=!fullHotbar] run function items:give/canopy {count:1}

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenCanopy