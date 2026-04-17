# Process new bees
execute as @e[x=0,type=bee,tag=!beeChecked,tag=BlueBee] run function custom:entity/set_team/blue
execute as @e[x=0,type=bee,tag=!beeChecked,tag=YellowBee] run function custom:entity/set_team/yellow
execute as @e[x=0,type=bee,tag=!beeChecked] run attribute @s minecraft:follow_range base set 100
execute as @e[x=0,type=bee,tag=!beeChecked] run data modify entity @s anger_end_time set value 0
execute as @e[x=0,type=bee,tag=!beeChecked] run data modify entity @s CannotEnterHiveTicks set value 2147483647
tag @e[x=0,type=bee,tag=!beeChecked] add beeChecked

# kill bees that have stung
kill @e[x=0,type=bee,predicate=custom:in_arena,nbt={HasStung:1b}]

# force their anger towards the nearest enemy player if they aren't already angry
execute as @e[x=0,type=bee,tag=BlueBee,predicate=!custom:entity/is_angry_at_yellow_team_entity,predicate=custom:in_arena] run function custom:entity/set_bee_anger_target
execute as @e[x=0,type=bee,tag=YellowBee,predicate=!custom:entity/is_angry_at_blue_team_entity,predicate=custom:in_arena] run function custom:entity/set_bee_anger_target

# kill bees that are in the void
execute as @e[x=0,type=bee,predicate=custom:in_void] run function custom:entity/kill_mob_discretely

# limit the number of bees in the arena (sandbox precaution)
execute store result score $bee_count var if entity @e[x=0,type=bee,predicate=custom:in_arena]
execute if score $bee_count var matches 31.. run tag @e[limit=30,sort=random,x=0,type=bee,predicate=custom:in_arena] add safe
execute if score $bee_count var matches 31.. as @e[x=0,type=bee,predicate=custom:in_arena,tag=!safe] run function custom:entity/kill_mob_discretely
execute if score $bee_count var matches 31.. run tag @e[x=0,type=bee,predicate=custom:in_arena,tag=safe] remove safe
