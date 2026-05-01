###################################################
## Conditionally gives the executor Rifter items ##
###################################################

## Game tracking
execute unless entity @s[tag=BackRift] run tag @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=tetrisTime] add givenRift
execute unless entity @s[tag=BackRift] run tag @e[x=0,type=armor_stand,tag=Bot] add HasRift

## Get limit
scoreboard players set $item_limit var 1
execute if score $increase_item_limit.missile/rifter match_components matches 1.. run scoreboard players operation $item_limit var += $increase_item_limit.missile/rifter match_components
execute if predicate game:game_rules/item_stacking/on run scoreboard players set $item_limit var 64
execute if score $item_limit var matches 65.. run scoreboard players set $item_limit var 64

## Get inventory count
tag @s add matchOrigin
execute as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/rifter"},!custom_data~{droppable:true}] if function custom:match_origin run function items:give/__return_item
tag @s remove matchOrigin
execute store result score $inventory_count var run clear @s *[custom_data~{id:"missile/rifter"}] 0
execute if entity @s[tag=BackRift] run scoreboard players add $inventory_count var 1

## Get batch size
scoreboard players set $intended_batch_size var 1

scoreboard players operation $final_batch_size var = $inventory_count var
scoreboard players operation $final_batch_size var += $intended_batch_size var
scoreboard players operation $final_batch_size var < $item_limit var
scoreboard players operation $final_batch_size var -= $inventory_count var
scoreboard players operation $final_batch_size var > $0 constant

## Check availability
scoreboard players set $give_item var 1
# full hotbar
function items:give/__check_full_hotbar
# limit reached
execute if score $give_item var matches 1 if score $final_batch_size var matches 0 if score $item_limit var matches 1 run title @s actionbar {color:"aqua",text:"Rifter already obtained."}
execute if score $give_item var matches 1 if score $final_batch_size var matches 0 if score $item_limit var matches 2.. run title @s actionbar {color:"aqua",text:"Maximum Rifters already obtained."}
execute if score $give_item var matches 1 if score $final_batch_size var matches 0 run scoreboard players set $give_item var 0

## Delay actionbar
function custom:player/delay_actionbar

## Fail
execute if score $give_item var matches 0 if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(items:give/missile/juggerbuster) Failed to give Auxiliary to ",{selector:"@s"}]}
execute if score $give_item var matches 0 at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score $give_item var matches 0 run return 0

## Success
execute if score $final_batch_size var matches 1 run title @s actionbar {color:"aqua",text:"Rifter obtained."}
execute if score $final_batch_size var matches 2.. run title @s actionbar {color:"aqua",text:"Rifters obtained."}
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(items:give/missile/juggerbuster) Gave Rifter x",{score:{name:"$final_batch_size",objective:"var"}}," to ",{selector:"@s"}]}
execute store result storage rocketriders:main items.count int 1 run scoreboard players get $final_batch_size var
function items:give_count/missile/rifter with storage rocketriders:main items
return run scoreboard players get $final_batch_size var
