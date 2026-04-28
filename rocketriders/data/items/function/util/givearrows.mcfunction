##Gives executor Arrows
#Antidupe check - Arrows are an exception for stacking in modes that limit arrows (disable_arrow_stacking).
execute store result score @s[tag=!itemDeducted] HasArrows run clear @s arrow 0
execute if predicate game:game_rules/item_stacking/on unless predicate game:match_components/disable_arrow_stacking run scoreboard players operation @s HasArrows %= $64 constant
execute if predicate game:game_rules/item_stacking/on unless predicate game:match_components/disable_arrow_stacking if entity @s[scores={HasArrows=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on unless predicate game:match_components/disable_arrow_stacking run scoreboard players set @s HasArrows 0
execute unless predicate game:game_rules/item_stacking/on if entity @s[scores={HasArrows=1..3},tag=fullHotbar] run tag @s remove fullHotbar

scoreboard players set $give_arrows var 0
execute unless predicate items:shooting_saber/infinity if score @s HasArrows matches 0..3 unless entity @s[tag=fullHotbar] run scoreboard players set $give_arrows var 1
execute if predicate items:shooting_saber/infinity if score @s HasArrows matches 0 run scoreboard players set $give_arrows var 1
execute if score $give_arrows var matches 1 run title @s actionbar {"text":"Arrows obtained.","color":"aqua"}
execute if score $give_arrows var matches 0 run title @s actionbar {"text":"Maximum Arrows already obtained.","color":"aqua"}
execute if score $give_arrows var matches 0 at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

# Normal
execute if score $give_arrows var matches 1 unless predicate items:shooting_saber/infinity if score @s HasArrows matches 0 run function items:give/arrow {count:4}
execute if score $give_arrows var matches 1 unless predicate items:shooting_saber/infinity if score @s HasArrows matches 1 run function items:give/arrow {count:3}
execute if score $give_arrows var matches 1 unless predicate items:shooting_saber/infinity if score @s HasArrows matches 2 run function items:give/arrow {count:2}
execute if score $give_arrows var matches 1 unless predicate items:shooting_saber/infinity if score @s HasArrows matches 3 run function items:give/arrow {count:1}
# Infinity Saber
execute if score $give_arrows var matches 1 if predicate items:shooting_saber/infinity run function items:give/arrow {count:1}

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=givenArrows,tag=tetrisTime] add givenArrowsTwice
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenArrows
scoreboard players set @e[x=0,type=armor_stand,tag=Bot] botarrowitems 4