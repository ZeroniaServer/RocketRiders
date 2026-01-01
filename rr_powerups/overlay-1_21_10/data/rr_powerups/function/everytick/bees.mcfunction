# Bees teams/angry
execute as @e[x=0,type=bee,tag=!beeChecked,tag=BlueBee] run function custom:team/join_blue
execute as @e[x=0,type=bee,tag=!beeChecked,tag=YellowBee] run function custom:team/join_yellow
execute as @e[x=0,type=bee,tag=!beeChecked] run attribute @s minecraft:follow_range base set 100
execute as @e[x=0,type=bee,tag=!beeChecked] run data remove entity @s AngryAt
tag @e[x=0,type=bee,tag=!beeChecked] add beeChecked

execute as @e[x=0,type=bee,predicate=custom:in_arena,predicate=custom:team/blue,predicate=!custom:angry_at_yellow_team] at @s run damage @s 0.00001 minecraft:player_attack by @p[predicate=custom:in_arena,predicate=custom:team/yellow]
execute as @e[x=0,type=bee,predicate=custom:in_arena,predicate=custom:team/yellow,predicate=!custom:angry_at_blue_team] at @s run damage @s 0.00001 minecraft:player_attack by @p[predicate=custom:in_arena,predicate=custom:team/blue]
execute as @e[x=0,type=bee,predicate=custom:in_arena,predicate=custom:team/blue,predicate=custom:angry_at_blue_team] run data remove entity @s AngryAt
execute as @e[x=0,type=bee,predicate=custom:in_arena,predicate=custom:team/yellow,predicate=custom:angry_at_yellow_team] run data remove entity @s AngryAt

execute as @e[x=0,type=bee,predicate=custom:in_arena,predicate=custom:bee_anger_periodic_tick] run data merge entity @s {AngerTime:1000}

# kill bees that have stung
kill @e[x=0,type=bee,predicate=custom:in_arena,nbt={HasStung:1b}]

# kill bees that are in the void
execute as @e[x=0,type=bee,predicate=custom:in_void] run function custom:kill_mob_discretely

# limit the number of bees in the arena (sandbox precaution)
execute store result score $bee_count var if entity @e[x=0,type=bee,predicate=custom:in_arena]
execute if score $bee_count var matches 31.. as @e[limit=1,sort=random,x=0,type=bee,predicate=custom:in_arena] run function custom:kill_mob_discretely
