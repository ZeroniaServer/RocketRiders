## Repositioning
execute at @s unless block ~ ~ ~ #custom:nonsolid if block ~ ~1 ~ #custom:nonsolid run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #custom:nonsolid if block ~ ~-1 ~ #custom:nonsolid run tp @s ~ ~-1 ~
execute at @s if block ~ ~ ~ #custom:nonsolid unless block ~ ~1 ~ #custom:nonsolid run tp @s ~ ~-1 ~
execute at @s run tp @s ~ ~1.2 ~

## Checks
execute at @s if predicate custom:near_void if function items:spawn_egg/give_back/fireball run return run title @a[limit=1,tag=spawn_egg.placer] actionbar {color:"red",text:"You cannot spawn fireballs at this height"}

execute at @s if predicate custom:near_or_above_roof if function items:spawn_egg/give_back/fireball run return run title @a[limit=1,tag=spawn_egg.placer] actionbar {color:"red",text:"You cannot spawn fireballs at this height"}

execute if score $spawn_egg.placer_team var matches -1 at @s if predicate custom:near_blue_spawn_zone if function items:spawn_egg/give_back/fireball run return run tellraw @a[limit=1,tag=spawn_egg.placer] {color:"red",text:"You cannot spawn fireballs near an enemy's spawnpoint"}
execute if score $spawn_egg.placer_team var matches 0 at @s if predicate custom:near_yellow_spawn_zone if function items:spawn_egg/give_back/fireball run return run tellraw @a[limit=1,tag=spawn_egg.placer] {color:"red",text:"You cannot spawn fireballs near an enemy's spawnpoint"}
execute if score $spawn_egg.placer_team var matches 1 at @s if predicate custom:near_blue_spawn_zone if function items:spawn_egg/give_back/fireball run return run tellraw @a[limit=1,tag=spawn_egg.placer] {color:"red",text:"You cannot spawn fireballs near an enemy's spawnpoint"}

## Summon
execute if predicate game:achievements_can_be_awarded run advancement grant @a[limit=1,tag=spawn_egg.placer] only achievements:rr_challenges/veteran FireballSpawned

execute at @s run playsound minecraft:item.flintandsteel.use master @a[distance=..6] ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.blaze.shoot master @a[distance=..6] ~ ~ ~ 0.5 1.25

execute if score $spawn_egg.placer_team var matches -1 at @s run summon minecraft:fireball ~ ~ ~ {data:{origin_team:"none"},ExplosionPower:1,acceleration_power:0}
execute if score $spawn_egg.placer_team var matches 0 at @s run summon minecraft:fireball ~ ~ ~ {data:{origin_team:"blue"},ExplosionPower:1,acceleration_power:0}
execute if score $spawn_egg.placer_team var matches 1 at @s run summon minecraft:fireball ~ ~ ~ {data:{origin_team:"yellow"},ExplosionPower:1,acceleration_power:0}
