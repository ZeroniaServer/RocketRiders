##Utility function for handling item dropping

# If it does not have a thrower, remove item entity
scoreboard players set $thrower_exists var 0
execute on origin run scoreboard players set $thrower_exists var 1
execute if score $thrower_exists var matches 0 run return run kill @s

# Kill lobby items
execute if items entity @s contents written_book[custom_data~{navbook:1b}] run return run kill @s
execute if items entity @s contents *[custom_data~{id:"voting_ballot"}] run return run kill @s
# Kill parkour control items
execute if items entity @s contents barrier run return run kill @s
execute if items entity @s contents clock run return run kill @s
execute if items entity @s contents compass run return run kill @s

# Return non-droppable items to their thrower
execute unless items entity @s contents *[custom_data~{Droppable:1b}] run return run function everytick:return_item_entity_to_thrower
