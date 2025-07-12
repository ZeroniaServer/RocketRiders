execute if score @s entity.age matches 0 unless predicate entities:origin_team/yellow run place template minecraft:bees_blue_stage1 ~-2 ~-4 ~
execute if score @s entity.age matches 0 if predicate entities:origin_team/yellow run place template minecraft:bees_yellow_stage1 ~-2 ~-4 ~
execute if score @s entity.age matches 0 run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 1.3

execute if score @s entity.age matches 2 unless predicate entities:origin_team/yellow run place template minecraft:bees_blue_stage2 ~-2 ~-4 ~
execute if score @s entity.age matches 2 if predicate entities:origin_team/yellow run place template minecraft:bees_yellow_stage2 ~-2 ~-4 ~
execute if score @s entity.age matches 2 run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 1.2

execute if score @s entity.age matches 4 unless predicate entities:origin_team/yellow run place template minecraft:bees_blue_stage3 ~-2 ~-4 ~
execute if score @s entity.age matches 4 if predicate entities:origin_team/yellow run place template minecraft:bees_yellow_stage3 ~-2 ~-4 ~
execute if score @s entity.age matches 4 run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 1

execute if score @s entity.age matches 6 unless predicate entities:origin_team/yellow run place template minecraft:bees_blue_stage4 ~-2 ~-4 ~
execute if score @s entity.age matches 6 if predicate entities:origin_team/yellow run place template minecraft:bees_yellow_stage4 ~-2 ~-4 ~
execute if score @s entity.age matches 6 run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 0.9

execute if score @s entity.age matches 8 unless predicate entities:origin_team/yellow run place template minecraft:bees_blue_stage5 ~-2 ~-4 ~
execute if score @s entity.age matches 8 if predicate entities:origin_team/yellow run place template minecraft:bees_yellow_stage5 ~-2 ~-4 ~
execute if score @s entity.age matches 8 run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 0.8

execute if score @s entity.age matches 20 unless predicate entities:origin_team/yellow run place template minecraft:bees_blue_stage6 ~-2 ~-4 ~
execute if score @s entity.age matches 20 if predicate entities:origin_team/yellow run place template minecraft:bees_yellow_stage6 ~-2 ~-4 ~
execute if score @s entity.age matches 20 run playsound block.honey_block.break master @a[x=0] ~ ~ ~ 1.5 0.5
execute if score @s entity.age matches 20 run playsound block.glass.break master @a[x=0] ~ ~ ~ 1.5 1.3

execute if score @s entity.age matches 22 unless predicate entities:origin_team/yellow run place template minecraft:bees_blue_stage7 ~-2 ~-4 ~
execute if score @s entity.age matches 22 if predicate entities:origin_team/yellow run place template minecraft:bees_yellow_stage7 ~-2 ~-4 ~
execute if score @s entity.age matches 22 run playsound block.honey_block.break master @a[x=0] ~ ~ ~ 1.5 0.6
execute if score @s entity.age matches 22 run playsound block.glass.break master @a[x=0] ~ ~ ~ 1.5 1.2

execute if score @s entity.age matches 23 unless predicate entities:origin_team/yellow run place template minecraft:bees_blue_stage8 ~-2 ~-4 ~
execute if score @s entity.age matches 23 if predicate entities:origin_team/yellow run place template minecraft:bees_yellow_stage8 ~-2 ~-4 ~
execute if score @s entity.age matches 23 run playsound block.honey_block.break master @a[x=0] ~ ~ ~ 1.5 0.7

execute if score @s entity.age matches 24 unless predicate entities:origin_team/yellow run place template minecraft:bees_blue_stage9 ~-2 ~-4 ~
execute if score @s entity.age matches 25 if predicate entities:origin_team/yellow run place template minecraft:bees_yellow_stage9 ~-2 ~-4 ~
execute if score @s entity.age matches 25 run playsound block.honey_block.break master @a[x=0] ~ ~ ~ 1.5 0.8

execute if score @s entity.age matches 27 unless predicate entities:origin_team/yellow run place template minecraft:bees_blue_stage10 ~-2 ~-4 ~
execute if score @s entity.age matches 27 if predicate entities:origin_team/yellow run place template minecraft:bees_yellow_stage10 ~-2 ~-4 ~

execute if score @s entity.age matches 29 unless predicate entities:origin_team/yellow run place template minecraft:bees_blue_stage11 ~-2 ~-4 ~
execute if score @s entity.age matches 29 if predicate entities:origin_team/yellow run place template minecraft:bees_yellow_stage11 ~-2 ~-4 ~

execute if score @s entity.age matches 30 run particle minecraft:block{block_state:"minecraft:tnt"} ~ ~-2 ~ 0.2 0.2 0.2 0.2 40 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 30 run particle minecraft:block{block_state:"minecraft:honey_block"} ~ ~-2 ~ 1 1.5 0 0.1 200 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score @s entity.age matches 31.. unless predicate entities:origin_team/yellow run place template rr_powerups:bees_blue_full ~-2 ~-4 ~
execute if score @s entity.age matches 31.. if predicate entities:origin_team/yellow run place template rr_powerups:bees_yellow_full ~-2 ~-4 ~
execute if score @s entity.age matches 31.. run function entities:stinging_shield/tick/set_bee_origins
execute if score @s entity.age matches 31.. run playsound block.grass.break master @a[x=0] ~ ~ ~ 1.5 0.8
