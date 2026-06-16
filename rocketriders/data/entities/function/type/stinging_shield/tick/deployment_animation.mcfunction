execute if score @s entity.age matches 0 positioned ~-1 ~ ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 0 positioned ~1 ~ ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 0 positioned ~-2 ~-1 ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 0 positioned ~-1 ~-1 ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 0 positioned ~1 ~-1 ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 0 positioned ~2 ~-1 ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 0 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/blue positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/blue/stage_1",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 0 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/any_red_skin positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/red/stage_1",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 0 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/yellow/stage_1",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 0 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/green/stage_1",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 0 run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 1.3

execute if score @s entity.age matches 2 positioned ~-1 ~-2 ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 2 positioned ~1 ~-2 ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 2 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/blue positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/blue/stage_2",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 2 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/any_red_skin positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/red/stage_2",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 2 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/yellow/stage_2",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 2 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/green/stage_2",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 2 run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 1.2

execute if score @s entity.age matches 4 positioned ~-1 ~-3 ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 4 positioned ~ ~-3 ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 4 positioned ~1 ~-3 ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 4 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/blue positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/blue/stage_3",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 4 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/any_red_skin positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/red/stage_3",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 4 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/yellow/stage_3",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 4 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/green/stage_3",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 4 run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 1

execute if score @s entity.age matches 6 positioned ~ ~-4 ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 6 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/blue positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/blue/stage_4",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 6 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/any_red_skin positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/red/stage_4",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 6 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/yellow/stage_4",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 6 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/green/stage_4",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 6 run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 0.9

execute if score @s entity.age matches 8 positioned ~ ~ ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 8 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/blue positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/blue/stage_5",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 8 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/any_red_skin positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/red/stage_5",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 8 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/yellow/stage_5",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 8 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/green/stage_5",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 8 run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 0.8

execute if score @s entity.age matches 20 positioned ~ ~-1 ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 20 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/blue positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/blue/stage_6",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 20 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/any_red_skin positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/red/stage_6",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 20 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/yellow/stage_6",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 20 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/green/stage_6",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 20 run playsound block.honey_block.break master @a[x=0] ~ ~ ~ 1.5 0.5
execute if score @s entity.age matches 20 run playsound block.glass.break master @a[x=0] ~ ~ ~ 1.5 1.3

execute if score @s entity.age matches 22 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/blue positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/blue/stage_7",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 22 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/any_red_skin positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/red/stage_7",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 22 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/yellow/stage_7",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 22 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/green/stage_7",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 22 run playsound block.honey_block.break master @a[x=0] ~ ~ ~ 1.5 0.6
execute if score @s entity.age matches 22 run playsound block.glass.break master @a[x=0] ~ ~ ~ 1.5 1.2

execute if score @s entity.age matches 23 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/blue positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/blue/stage_8",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 23 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/any_red_skin positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/red/stage_8",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 23 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/yellow/stage_8",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 23 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/green/stage_8",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 23 run playsound block.honey_block.break master @a[x=0] ~ ~ ~ 1.5 0.7

execute if score @s entity.age matches 24 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/blue positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/blue/stage_9",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 24 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/any_red_skin positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/red/stage_9",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 25 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/yellow/stage_9",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 25 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/green/stage_9",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 25 run playsound block.honey_block.break master @a[x=0] ~ ~ ~ 1.5 0.8

execute if score @s entity.age matches 27 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/blue positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/blue/stage_10",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 27 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/any_red_skin positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/red/stage_10",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 27 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/yellow/stage_10",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 27 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/green/stage_10",x_length:5,y_length:5,z_length:1,rules:{}}

execute if score @s entity.age matches 29 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/blue positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/blue/stage_11",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 29 unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/any_red_skin positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/red/stage_11",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 29 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/yellow/stage_11",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 29 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/green/stage_11",x_length:5,y_length:5,z_length:1,rules:{}}

execute if score @s entity.age matches 30 run particle minecraft:block{block_state:"minecraft:tnt"} ~ ~-2 ~ 0.2 0.2 0.2 0.2 40 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 30 run particle minecraft:block{block_state:"minecraft:honey_block"} ~ ~-2 ~ 1 1.5 0 0.1 200 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute if score @s entity.age matches 31 positioned ~ ~-2 ~ if block ~ ~ ~ #beehives run function custom:block/release_bees_and_destroy_hive
execute if score @s entity.age matches 31.. unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/blue positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/blue/full",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 31.. unless predicate entities:origin_team/yellow if predicate game:blue_team_skin/any_red_skin positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/red/full",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 31.. if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/yellow/full",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 31.. if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned ~-2 ~-4 ~ run function custom:place_utility_structure {template:"game:stinging_shield/green/full",x_length:5,y_length:5,z_length:1,rules:{}}
execute if score @s entity.age matches 31.. run function entities:type/stinging_shield/tick/set_bee_origins
execute if score @s entity.age matches 31.. run playsound block.grass.break master @a[x=0] ~ ~ ~ 1.5 0.8
