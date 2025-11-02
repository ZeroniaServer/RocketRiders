tag @s add matchOrigin
execute as @e[x=0,type=item] if function custom:match_origin run function custom:__impl__/return_thrown_items/as_item
tag @s remove matchOrigin
