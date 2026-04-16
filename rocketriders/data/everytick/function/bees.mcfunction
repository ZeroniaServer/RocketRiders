# Bees teams/angry
execute as @e[x=0,type=bee,tag=!beeChecked,tag=BlueBee] run function custom:player/team/join_blue
execute as @e[x=0,type=bee,tag=!beeChecked,tag=YellowBee] run function custom:player/team/join_yellow
execute as @e[x=0,type=bee,tag=!beeChecked] run attribute @s minecraft:follow_range base set 100
execute as @e[x=0,type=bee,tag=!beeChecked] run data modify entity @s anger_end_time set value 0
execute as @e[x=0,type=bee,tag=!beeChecked] run data modify entity @s CannotEnterHiveTicks set value 2147483647
tag @e[x=0,type=bee,tag=!beeChecked] add beeChecked

execute as @e[x=0,type=bee,predicate=custom:in_arena,predicate=custom:team/blue,predicate=!custom:angry_at_yellow_team] if entity @e[limit=1,type=player,gamemode=survival,predicate=custom:team/yellow,predicate=custom:in_arena] at @s run damage @s 0.00001 minecraft:player_attack by @e[limit=1,sort=nearest,type=player,gamemode=survival,predicate=custom:team/yellow,predicate=custom:in_arena]
execute as @e[x=0,type=bee,predicate=custom:in_arena,predicate=custom:team/yellow,predicate=!custom:angry_at_blue_team] if entity @e[limit=1,type=player,gamemode=survival,predicate=custom:team/blue,predicate=custom:in_arena] at @s run damage @s 0.00001 minecraft:player_attack by @e[limit=1,sort=nearest,type=player,gamemode=survival,predicate=custom:team/blue,predicate=custom:in_arena]
execute as @e[x=0,type=bee,predicate=custom:in_arena,predicate=custom:team/blue,predicate=custom:angry_at_blue_team] run data modify entity @s anger_end_time set value 0
execute as @e[x=0,type=bee,predicate=custom:in_arena,predicate=custom:team/yellow,predicate=custom:angry_at_yellow_team] run data modify entity @s anger_end_time set value 0

execute as @e[x=0,type=bee,predicate=custom:in_arena,predicate=custom:bee_anger_periodic_tick] run data modify entity @s anger_end_time set value 9223372036854775807L

# kill bees that have stung
kill @e[x=0,type=bee,predicate=custom:in_arena,nbt={HasStung:1b}]

# kill bees that are in the void
execute as @e[x=0,type=bee,predicate=custom:in_void] run function custom:entity/kill_mob_discretely

# limit the number of bees in the arena (sandbox precaution)
execute store result score $bee_count var if entity @e[x=0,type=bee,predicate=custom:in_arena]
execute if score $bee_count var matches 31.. run tag @e[limit=30,sort=random,x=0,type=bee,predicate=custom:in_arena] add safe
execute if score $bee_count var matches 31.. as @e[x=0,type=bee,predicate=custom:in_arena,tag=!safe] run function custom:entity/kill_mob_discretely
execute if score $bee_count var matches 31.. run tag @e[x=0,type=bee,predicate=custom:in_arena,tag=safe] remove safe