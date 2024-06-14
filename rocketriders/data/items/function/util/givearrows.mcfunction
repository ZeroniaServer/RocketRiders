##Gives executor Arrows
#Antidupe check - Arrows are an exception for stacking in modes that limit arrows.
execute store result score @s[tag=!itemDeducted] HasArrows run clear @s arrow 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking,tag=!arrowLimit] run scoreboard players operation @s HasArrows %= 64 CmdData
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking,tag=!arrowLimit] if entity @s[scores={HasArrows=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking,tag=!arrowLimit] run scoreboard players set @s HasArrows 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!doStacking] if entity @s[scores={HasArrows=1..3},tag=fullHotbar] run tag @s remove fullHotbar

#Title/giving
title @s[scores={HasArrows=4..},tag=!fullHotbar,tag=!Infinity] actionbar {"text":"Arrows already obtained.","color":"aqua"}
execute if entity @s[scores={HasArrows=4..},tag=!fullHotbar,tag=!Infinity] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasArrows=..3},tag=!fullHotbar,tag=!Infinity] actionbar {"text":"Arrows obtained.","color":"aqua"}
title @s[scores={HasArrows=0},tag=!fullHotbar,tag=Infinity] actionbar {"text":"Arrow obtained.","color":"aqua"}

#Tries to give enough arrows to refill up to 4
give @s[scores={HasArrows=0},tag=!fullHotbar,tag=fullOffhand,tag=!Infinity] arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'] 4
give @s[scores={HasArrows=1},tag=!fullHotbar,tag=fullOffhand,tag=!Infinity] arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'] 3
give @s[scores={HasArrows=2},tag=!fullHotbar,tag=fullOffhand,tag=!Infinity] arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'] 2
give @s[scores={HasArrows=3},tag=!fullHotbar,tag=fullOffhand,tag=!Infinity] arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'] 1
give @s[scores={HasArrows=0},tag=fullOffhand,tag=Infinity] arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'] 1

#If possible, places arrows in offhand
item replace entity @s[scores={HasArrows=0},tag=!fullHotbar,tag=!fullOffhand,tag=!Infinity] weapon.offhand with arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'] 4
item replace entity @s[scores={HasArrows=1},tag=!fullHotbar,tag=!fullOffhand,tag=!Infinity] weapon.offhand with arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'] 3
item replace entity @s[scores={HasArrows=2},tag=!fullHotbar,tag=!fullOffhand,tag=!Infinity] weapon.offhand with arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'] 2
item replace entity @s[scores={HasArrows=3},tag=!fullHotbar,tag=!fullOffhand,tag=!Infinity] weapon.offhand with arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'] 1
item replace entity @s[scores={HasArrows=0},tag=!fullOffhand,tag=Infinity] weapon.offhand with arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'] 1
execute if entity @s[scores={HasArrows=..3},tag=!fullHotbar,tag=!fullOffhand,tag=!Infinity] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
execute if entity @s[scores={HasArrows=0},tag=!fullOffhand,tag=Infinity] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,tag=givenArrows,tag=tetrisTime] add givenArrowsTwice
tag @e[x=0,type=armor_stand,tag=Selection,tag=tetrisTime] add givenArrows
scoreboard players set @e[x=0,type=armor_stand,tag=Bot] botarrowitems 4