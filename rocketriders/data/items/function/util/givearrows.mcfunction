##Gives executor Arrows
#Antidupe check - Arrows are an exception for stacking in modes that limit arrows.
execute store result score @s[tag=!itemDeducted] HasArrows run clear @s arrow 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking,tag=!arrowLimit] run scoreboard players operation @s HasArrows %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking,tag=!arrowLimit] if entity @s[scores={HasArrows=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking,tag=!arrowLimit] run scoreboard players set @s HasArrows 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!doStacking] if entity @s[scores={HasArrows=1..3},tag=fullHotbar] run tag @s remove fullHotbar

#Title/giving
title @s[scores={HasArrows=4..},tag=!fullHotbar,predicate=!items:shooting_saber/infinity] actionbar {"text":"Arrows already obtained.","color":"aqua"}
execute if entity @s[scores={HasArrows=4..},tag=!fullHotbar,predicate=!items:shooting_saber/infinity] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasArrows=..3},tag=!fullHotbar,predicate=!items:shooting_saber/infinity] actionbar {"text":"Arrows obtained.","color":"aqua"}
title @s[scores={HasArrows=0},tag=!fullHotbar,predicate=items:shooting_saber/infinity] actionbar {"text":"Arrow obtained.","color":"aqua"}

#Intelligent stacking if player already has available arrow stack in inventory
tag @s[tag=!fullOffhand] add notFullOffhand
execute if items entity @s[tag=!fullOffhand] container.* arrow[count~{max:63}] run tag @s add fullOffhand
execute if predicate custom:invisible run tag @s add fullOffhand

#Tries to give enough arrows to refill up to 4
loot give @s[scores={HasArrows=0},tag=!fullHotbar,tag=fullOffhand,predicate=!items:shooting_saber/infinity] loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:4}]}]}
loot give @s[scores={HasArrows=1},tag=!fullHotbar,tag=fullOffhand,predicate=!items:shooting_saber/infinity] loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:3}]}]}
loot give @s[scores={HasArrows=2},tag=!fullHotbar,tag=fullOffhand,predicate=!items:shooting_saber/infinity] loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:2}]}]}
loot give @s[scores={HasArrows=3},tag=!fullHotbar,tag=fullOffhand,predicate=!items:shooting_saber/infinity] loot items:misc/arrow
loot give @s[scores={HasArrows=0},tag=fullOffhand,predicate=items:shooting_saber/infinity] loot items:misc/arrow

#If possible, places arrows in offhand
loot replace entity @s[scores={HasArrows=0},tag=!fullHotbar,tag=!fullOffhand,predicate=!items:shooting_saber/infinity] weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:4}]}]}
loot replace entity @s[scores={HasArrows=1},tag=!fullHotbar,tag=!fullOffhand,predicate=!items:shooting_saber/infinity] weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:3}]}]}
loot replace entity @s[scores={HasArrows=2},tag=!fullHotbar,tag=!fullOffhand,predicate=!items:shooting_saber/infinity] weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow"}],functions:[{function:"set_count",count:2}]}]}
loot replace entity @s[scores={HasArrows=3},tag=!fullHotbar,tag=!fullOffhand,predicate=!items:shooting_saber/infinity] weapon.offhand loot items:misc/arrow
loot replace entity @s[scores={HasArrows=0},tag=!fullOffhand,predicate=items:shooting_saber/infinity] weapon.offhand loot items:misc/arrow
execute if entity @s[scores={HasArrows=..3},tag=!fullHotbar,tag=!fullOffhand,predicate=!items:shooting_saber/infinity] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
execute if entity @s[scores={HasArrows=0},tag=!fullOffhand,predicate=items:shooting_saber/infinity] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2

#Reset intelligent stacking
tag @s[tag=notFullOffhand] remove fullOffhand
tag @s[tag=notFullOffhand] remove notFullOffhand

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=givenArrows,tag=tetrisTime] add givenArrowsTwice
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenArrows
scoreboard players set @e[x=0,type=armor_stand,tag=Bot] botarrowitems 4