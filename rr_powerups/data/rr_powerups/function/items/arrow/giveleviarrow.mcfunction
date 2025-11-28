#Antidupe check
execute store result score @s[tag=!itemDeducted] HasTippedArrows run clear @s tipped_arrow 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasTippedArrows %= $64 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasTippedArrows=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasTippedArrows 0
execute unless predicate game:game_rules/item_stacking/on if entity @s[scores={HasTippedArrows=1..3},tag=fullHotbar] run tag @s remove fullHotbar

#Title/giving
title @s[scores={HasTippedArrows=4..},tag=!fullHotbar] actionbar {"text":"Tipped Arrows already obtained.","color":"light_purple"}
execute if entity @s[scores={HasTippedArrows=4..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasTippedArrows=..3},tag=!fullHotbar] actionbar {"text":"Levitation Arrows obtained.","color":"light_purple"}

execute if score @s HasArrows matches 0 if entity @s[tag=!fullHotbar] run function items:give/tipped_arrow_levitation {count:4}
execute if score @s HasArrows matches 1 if entity @s[tag=!fullHotbar] run function items:give/tipped_arrow_levitation {count:3}
execute if score @s HasArrows matches 2 if entity @s[tag=!fullHotbar] run function items:give/tipped_arrow_levitation {count:2}
execute if score @s HasArrows matches 3 if entity @s[tag=!fullHotbar] run function items:give/tipped_arrow_levitation {count:1}

execute if entity @s[scores={HasTippedArrows=..3},tag=!fullHotbar,tag=!fullOffhand] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenTipped