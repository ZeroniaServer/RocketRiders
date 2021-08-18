##Gives executor Arrows (for Crusade Archers)
execute store result score @s HasArrows run clear @s arrow 0

#Title/giving
title @s[scores={HasArrows=4..}] actionbar {"text":"Arrows already obtained.","color":"aqua"}
execute if entity @s[scores={HasArrows=4..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasArrows=..3}] actionbar {"text":"Arrows obtained.","color":"aqua"}

#Tries to give enough arrows to refill up to 4
give @s[scores={HasArrows=0},tag=fullOffhand] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'}} 4
give @s[scores={HasArrows=1},tag=fullOffhand] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'}} 3
give @s[scores={HasArrows=2},tag=fullOffhand] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'}} 2
give @s[scores={HasArrows=3},tag=fullOffhand] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'}} 1

#If possible, places arrows in offhand
item replace entity @s[scores={HasArrows=0},tag=!fullOffhand] weapon.offhand with arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'}} 4
item replace entity @s[scores={HasArrows=1},tag=!fullOffhand] weapon.offhand with arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'}} 3
item replace entity @s[scores={HasArrows=2},tag=!fullOffhand] weapon.offhand with arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'}} 2
item replace entity @s[scores={HasArrows=3},tag=!fullOffhand] weapon.offhand with arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'}} 1
execute if entity @s[scores={HasArrows=..3},tag=!fullOffhand] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2