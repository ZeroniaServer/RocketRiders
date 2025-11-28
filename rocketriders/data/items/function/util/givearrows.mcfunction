##Gives executor Arrows
#Antidupe check - Arrows are an exception for stacking in modes that limit arrows.
execute store result score @s[tag=!itemDeducted] HasArrows run clear @s arrow 0
execute if predicate game:game_rules/item_stacking/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!arrowLimit] run scoreboard players operation @s HasArrows %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!arrowLimit] if entity @s[scores={HasArrows=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!arrowLimit] run scoreboard players set @s HasArrows 0
execute unless predicate game:game_rules/item_stacking/on if entity @s[scores={HasArrows=1..3},tag=fullHotbar] run tag @s remove fullHotbar

#Title/giving
title @s[scores={HasArrows=4..},tag=!fullHotbar,predicate=!items:shooting_saber/infinity] actionbar {"text":"Arrows already obtained.","color":"aqua"}
execute if entity @s[scores={HasArrows=4..},tag=!fullHotbar,predicate=!items:shooting_saber/infinity] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasArrows=..3},tag=!fullHotbar,predicate=!items:shooting_saber/infinity] actionbar {"text":"Arrows obtained.","color":"aqua"}
title @s[scores={HasArrows=0},tag=!fullHotbar,predicate=items:shooting_saber/infinity] actionbar {"text":"Arrow obtained.","color":"aqua"}

# Normal
execute if score @s HasArrows matches 0 unless predicate items:shooting_saber/infinity if entity @s[tag=!fullHotbar] run function items:give/arrow {count:4}
execute if score @s HasArrows matches 1 unless predicate items:shooting_saber/infinity if entity @s[tag=!fullHotbar] run function items:give/arrow {count:3}
execute if score @s HasArrows matches 2 unless predicate items:shooting_saber/infinity if entity @s[tag=!fullHotbar] run function items:give/arrow {count:2}
execute if score @s HasArrows matches 3 unless predicate items:shooting_saber/infinity if entity @s[tag=!fullHotbar] run function items:give/arrow {count:1}
# Infinity Saber
execute if score @s HasArrows matches 0 if predicate items:shooting_saber/infinity run function items:give/arrow {count:1}

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=givenArrows,tag=tetrisTime] add givenArrowsTwice
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenArrows
scoreboard players set @e[x=0,type=armor_stand,tag=Bot] botarrowitems 4