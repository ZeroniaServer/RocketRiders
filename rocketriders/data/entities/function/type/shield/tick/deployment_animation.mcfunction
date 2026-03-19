execute if score @s entity.age matches 0 positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~-1 ~0 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~0 ~-1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~0 ~0 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~0 ~1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~1 ~0 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:bee_nest run function custom:destroy_bee_block
execute if score @s entity.age matches 0 if predicate entities:origin_team/blue positioned ~-1 ~-1 ~ run function custom:place_utility_structure {template:"game:asset/shield/stage_1/blue",x_length:3,y_length:3,z_length:3,rules:{}}
execute if score @s entity.age matches 0 if predicate entities:origin_team/yellow positioned ~-1 ~-1 ~ run function custom:place_utility_structure {template:"game:asset/shield/stage_1/yellow",x_length:3,y_length:3,z_length:3,rules:{}}
execute if score @s entity.age matches 0 if predicate entities:origin_team/none positioned ~-1 ~-1 ~ run function custom:place_utility_structure {template:"game:asset/shield/stage_1/white",x_length:3,y_length:3,z_length:3,rules:{}}
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
execute if score @s entity.age matches 1 if predicate entities:origin_team/blue positioned ~-2 ~-2 ~ run function custom:place_utility_structure {template:"game:asset/shield/stage_2/blue",x_length:5,y_length:5,z_length:5,rules:{}}
execute if score @s entity.age matches 1 if predicate entities:origin_team/yellow positioned ~-2 ~-2 ~ run function custom:place_utility_structure {template:"game:asset/shield/stage_2/yellow",x_length:5,y_length:5,z_length:5,rules:{}}
execute if score @s entity.age matches 1 if predicate entities:origin_team/none positioned ~-2 ~-2 ~ run function custom:place_utility_structure {template:"game:asset/shield/stage_2/white",x_length:5,y_length:5,z_length:5,rules:{}}
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
execute if score @s entity.age matches 2 if predicate entities:origin_team/blue positioned ~-3 ~-3 ~ run function custom:place_utility_structure {template:"game:asset/shield/stage_3/blue",x_length:6,y_length:6,z_length:6,rules:{}}
execute if score @s entity.age matches 2 if predicate entities:origin_team/yellow positioned ~-3 ~-3 ~ run function custom:place_utility_structure {template:"game:asset/shield/stage_3/yellow",x_length:6,y_length:6,z_length:6,rules:{}}
execute if score @s entity.age matches 2 if predicate entities:origin_team/none positioned ~-3 ~-3 ~ run function custom:place_utility_structure {template:"game:asset/shield/stage_3/white",x_length:6,y_length:6,z_length:6,rules:{}}
execute if score @s entity.age matches 2 run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0
execute if score @s entity.age matches 2 run playsound item.shield.break master @a[x=0] ~ ~ ~ 2 0
execute if score @s entity.age matches 2 if predicate entities:origin_team/blue if predicate game:blue_team_skin/blue run particle minecraft:block{block_state:"minecraft:blue_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
execute if score @s entity.age matches 2 if predicate entities:origin_team/blue if predicate game:blue_team_skin/any_red_skin run particle minecraft:block{block_state:"minecraft:red_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
execute if score @s entity.age matches 2 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow run particle minecraft:block{block_state:"minecraft:yellow_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
execute if score @s entity.age matches 2 if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green run particle minecraft:block{block_state:"minecraft:green_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
execute if score @s entity.age matches 2 if predicate entities:origin_team/none run particle minecraft:block{block_state:"minecraft:white_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
