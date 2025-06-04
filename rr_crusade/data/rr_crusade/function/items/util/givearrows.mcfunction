##Gives executor Arrows (for Crusade Archers)
execute store result score @s HasArrows run clear @s arrow 0

#Title/giving
title @s[scores={HasArrows=4..},tag=!itemDeducted] actionbar {"text":"Arrows already obtained.","color":"aqua"}
execute if entity @s[scores={HasArrows=4..},tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasArrows=..3},tag=!itemDeducted] actionbar {"text":"Arrows obtained.","color":"aqua"}

#Intelligent stacking if player already has available arrow stack in inventory
tag @s[tag=!fullOffhand] add notFullOffhand
execute if items entity @s[tag=!fullOffhand] container.* arrow[count~{max:63}] run tag @s add fullOffhand

#Tries to give enough arrows to refill up to 4
loot give @s[scores={HasArrows=0},tag=fullOffhand] loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:4}]}]}
loot give @s[scores={HasArrows=1},tag=fullOffhand] loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:3}]}]}
loot give @s[scores={HasArrows=2},tag=fullOffhand] loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:2}]}]}
loot give @s[scores={HasArrows=3},tag=fullOffhand] loot items:misc/arrow

#If possible, places arrows in offhand
loot replace entity @s[scores={HasArrows=0},tag=!fullOffhand] weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:4}]}]}
loot replace entity @s[scores={HasArrows=1},tag=!fullOffhand] weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:3}]}]}
loot replace entity @s[scores={HasArrows=2},tag=!fullOffhand] weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:2}]}]}
loot replace entity @s[scores={HasArrows=3},tag=!fullOffhand] weapon.offhand loot items:misc/arrow
execute if entity @s[scores={HasArrows=..3},tag=!fullOffhand] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2

#Reset intelligent stacking
tag @s[tag=notFullOffhand] remove fullOffhand
tag @s[tag=notFullOffhand] remove notFullOffhand