scoreboard players set $force var 1
execute on origin if predicate custom:can_pick_up_any_item run scoreboard players set $force var 0
execute if predicate items:can_destroy_item/contents run scoreboard players set $force var 0

loot replace block 0 184 -16 container.0 27 loot custom:empty
execute if score $force var matches 0 run function custom:__impl__/return_thrown_items/dump
execute if score $force var matches 1 run function custom:__impl__/return_thrown_items/force

kill @s
