execute if score @s entity.age matches 0 positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~-1 ~0 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~0 ~-1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~0 ~0 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~0 ~1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~1 ~0 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 if predicate entities:origin_team/yellow positioned ~-1 ~-1 ~ run function custom:place_utility_structure {template:"game:shield/yellow/stage_1",x_length:3,y_length:3,z_length:3}
execute if score @s entity.age matches 0 if predicate entities:origin_team/blue unless predicate game:gamemode_components/red_for_blue positioned ~-1 ~-1 ~ run function custom:place_utility_structure {template:"game:shield/blue/stage_1",x_length:3,y_length:3,z_length:3}
execute if score @s entity.age matches 0 if predicate entities:origin_team/blue if predicate game:gamemode_components/red_for_blue positioned ~-1 ~-1 ~ run function custom:place_utility_structure {template:"game:shield/red/stage_1",x_length:3,y_length:3,z_length:3}
execute if score @s entity.age matches 0 if predicate entities:origin_team/none positioned ~-1 ~-1 ~ run function custom:place_utility_structure {template:"game:shield/white/stage_1",x_length:3,y_length:3,z_length:3}
execute if score @s entity.age matches 0 run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0.6
execute if score @s entity.age matches 0 run playsound item.shield.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 1 positioned ~-1 ~-2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 1 positioned ~0 ~-2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 1 positioned ~1 ~-2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 1 positioned ~-2 ~-1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 1 positioned ~2 ~-1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 1 positioned ~-2 ~0 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 1 positioned ~2 ~0 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 1 positioned ~-2 ~1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 1 positioned ~2 ~1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 1 positioned ~-1 ~2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 1 positioned ~0 ~2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 1 positioned ~1 ~2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 1 if predicate entities:origin_team/yellow positioned ~-2 ~-2 ~ run function custom:place_utility_structure {template:"game:shield/yellow/stage_2",x_length:5,y_length:5,z_length:5}
execute if score @s entity.age matches 1 if predicate entities:origin_team/blue unless predicate game:gamemode_components/red_for_blue positioned ~-2 ~-2 ~ run function custom:place_utility_structure {template:"game:shield/blue/stage_2",x_length:5,y_length:5,z_length:5}
execute if score @s entity.age matches 1 if predicate entities:origin_team/blue if predicate game:gamemode_components/red_for_blue positioned ~-2 ~-2 ~ run function custom:place_utility_structure {template:"game:shield/red/stage_2",x_length:5,y_length:5,z_length:5}
execute if score @s entity.age matches 1 if predicate entities:origin_team/none positioned ~-2 ~-2 ~ run function custom:place_utility_structure {template:"game:shield/white/stage_2",x_length:5,y_length:5,z_length:5}
execute if score @s entity.age matches 1 run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0.6
execute if score @s entity.age matches 1 run playsound item.shield.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 2 positioned ~-2 ~-3 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~-1 ~-3 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~0 ~-3 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~1 ~-3 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~2 ~-3 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~-3 ~-2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~-2 ~-2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~2 ~-2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~3 ~-2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~-3 ~-1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~3 ~-1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~-3 ~0 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~3 ~0 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~-3 ~1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~3 ~1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~-3 ~2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~-2 ~2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~2 ~2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~3 ~2 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~-2 ~3 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~-1 ~3 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~0 ~3 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~1 ~3 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 positioned ~2 ~3 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 2 if predicate entities:origin_team/yellow positioned ~-3 ~-3 ~ run function custom:place_utility_structure {template:"game:shield/yellow/stage_3",x_length:6,y_length:6,z_length:6}
execute if score @s entity.age matches 2 if predicate entities:origin_team/blue unless predicate game:gamemode_components/red_for_blue positioned ~-3 ~-3 ~ run function custom:place_utility_structure {template:"game:shield/blue/stage_3",x_length:6,y_length:6,z_length:6}
execute if score @s entity.age matches 2 if predicate entities:origin_team/blue if predicate game:gamemode_components/red_for_blue positioned ~-3 ~-3 ~ run function custom:place_utility_structure {template:"game:shield/red/stage_3",x_length:6,y_length:6,z_length:6}
execute if score @s entity.age matches 2 if predicate entities:origin_team/none positioned ~-3 ~-3 ~ run function custom:place_utility_structure {template:"game:shield/white/stage_3",x_length:6,y_length:6,z_length:6}
execute if score @s entity.age matches 2 run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0
execute if score @s entity.age matches 2 run playsound item.shield.break master @a[x=0] ~ ~ ~ 2 0
execute if score @s entity.age matches 2 if predicate entities:origin_team/yellow run particle minecraft:block{block_state:"minecraft:yellow_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
execute if score @s entity.age matches 2 if predicate entities:origin_team/blue unless predicate game:gamemode_components/red_for_blue run particle minecraft:block{block_state:"minecraft:blue_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
execute if score @s entity.age matches 2 if predicate entities:origin_team/blue if predicate game:gamemode_components/red_for_blue run particle minecraft:block{block_state:"minecraft:red_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
execute if score @s entity.age matches 2 if predicate entities:origin_team/none run particle minecraft:block{block_state:"minecraft:white_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
