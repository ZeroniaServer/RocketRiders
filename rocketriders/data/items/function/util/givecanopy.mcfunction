##Gives executor a Canopy
#Antidupe check - Canopies are an exception for modes that require extra Canopies for travel. In this case, you can only have 2 Canopies.
execute unless predicate game:match_components/additional_canopy_available store result score @s HasPlat run clear @s ender_pearl 0
execute if predicate game:match_components/additional_canopy_available store result score @s[tag=!itemDeducted] HasPlat run clear @s ender_pearl 0
execute if predicate game:game_rules/item_stacking/on run scoreboard players operation @s HasPlat %= $16 constant
execute if predicate game:game_rules/item_stacking/on if entity @s[scores={HasPlat=1..15},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:game_rules/item_stacking/on run scoreboard players set @s HasPlat 0

execute if predicate game:match_components/additional_canopy_available if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!CTF3stack] if entity @s[scores={HasPlat=1},tag=fullHotbar] run tag @s remove fullHotbar
execute if predicate game:match_components/additional_canopy_available if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CTF3stack] if entity @s[scores={HasPlat=1},tag=fullHotbar] run tag @s remove fullHotbar

scoreboard players set $give_canopy var 0
execute unless predicate game:match_components/additional_canopy_available if entity @s[scores={HasPlat=0},tag=!fullHotbar] run scoreboard players set $give_canopy var 1
execute if predicate game:match_components/additional_canopy_available if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!CTF3stack] if entity @s[scores={HasPlat=..1},tag=!fullHotbar] run scoreboard players set $give_canopy var 1
execute if predicate game:match_components/additional_canopy_available if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CTF3stack] if entity @s[scores={HasPlat=..2},tag=!fullHotbar] run scoreboard players set $give_canopy var 1

execute if predicate game:game_rules/show_debug_logs/on if score $give_canopy var matches 0 run function custom:log {message:["(items:missile/util/givecanopy) Failed to give Canopy to ",{selector:"@s"}]}
execute if score $give_canopy var matches 0 run title @s[scores={HasPlat=..1}] actionbar {"text":"Canopy already obtained.","color":"aqua"}
execute if score $give_canopy var matches 0 run title @s[scores={HasPlat=2..}] actionbar {"text":"Maximum Canopies already obtained.","color":"aqua"}
execute if score $give_canopy var matches 0 at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

execute if predicate game:game_rules/show_debug_logs/on if score $give_canopy var matches 1 run function custom:log {message:["(items:missile/util/givecanopy) Gave Canopy to ",{selector:"@s"}]}
execute if score $give_canopy var matches 1 run title @s actionbar {"text":"Canopy obtained.","color":"aqua"}
execute if score $give_canopy var matches 1 run function items:give/canopy {count:1}

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenCanopy