#Antidupe check
execute store result score @s[tag=!itemDeducted] HasTippedArrows run clear @s tipped_arrow 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players operation @s HasTippedArrows %= $64 constant
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] if entity @s[scores={HasTippedArrows=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasTippedArrows 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!doStacking] if entity @s[scores={HasTippedArrows=1..3},tag=fullHotbar] run tag @s remove fullHotbar

#Title/giving
title @s[scores={HasTippedArrows=4..},tag=!fullHotbar] actionbar {"text":"Tipped Arrows already obtained.","color":"light_purple"}
execute if entity @s[scores={HasTippedArrows=4..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasTippedArrows=..3},tag=!fullHotbar] actionbar {"text":"Blindness Arrows obtained.","color":"light_purple"}

#Intelligent stacking if player already has available arrow stack in inventory
tag @s[tag=!fullOffhand] add notFullOffhand
execute if items entity @s[tag=!fullOffhand] container.* tipped_arrow[count~{max:63},custom_data~{tipped_arrow_type:"blindness"}] run tag @s add fullOffhand

loot give @s[scores={HasTippedArrows=0},tag=!fullHotbar,tag=fullOffhand] loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/tipped_arrow_blindness",functions:[{function:"set_count",count:4}]}]}]}
loot give @s[scores={HasTippedArrows=1},tag=!fullHotbar,tag=fullOffhand] loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/tipped_arrow_blindness",functions:[{function:"set_count",count:3}]}]}]}
loot give @s[scores={HasTippedArrows=2},tag=!fullHotbar,tag=fullOffhand] loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/tipped_arrow_blindness",functions:[{function:"set_count",count:2}]}]}]}
loot give @s[scores={HasTippedArrows=3},tag=!fullHotbar,tag=fullOffhand] loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/tipped_arrow_blindness",functions:[{function:"set_count",count:1}]}]}]}
loot replace entity @s[scores={HasTippedArrows=0},tag=!fullHotbar,tag=!fullOffhand] weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/tipped_arrow_blindness",functions:[{function:"set_count",count:4}]}]}]}
loot replace entity @s[scores={HasTippedArrows=1},tag=!fullHotbar,tag=!fullOffhand] weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/tipped_arrow_blindness",functions:[{function:"set_count",count:3}]}]}]}
loot replace entity @s[scores={HasTippedArrows=2},tag=!fullHotbar,tag=!fullOffhand] weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/tipped_arrow_blindness",functions:[{function:"set_count",count:2}]}]}]}
loot replace entity @s[scores={HasTippedArrows=3},tag=!fullHotbar,tag=!fullOffhand] weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/tipped_arrow_blindness",functions:[{function:"set_count",count:1}]}]}]}

#Reset intelligent stacking
tag @s[tag=notFullOffhand] remove fullOffhand
tag @s[tag=notFullOffhand] remove notFullOffhand

execute if entity @s[scores={HasTippedArrows=..3},tag=!fullHotbar,tag=!fullOffhand] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenTipped