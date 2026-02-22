## Checks
#Void spawn prevention
execute unless entity @s[tag=UnableSpawn] if predicate custom:nearvoid run tag @s add void
execute unless entity @s[tag=UnableSpawn] if predicate custom:nearvoid run tag @s add UnableSpawn

#Roof spawn prevention
execute unless entity @s[tag=UnableSpawn] if predicate custom:near_or_above_roof run tag @s add roof
execute unless entity @s[tag=UnableSpawn] if predicate custom:near_or_above_roof run tag @s add UnableSpawn

#Enemy spawn zone prevention
execute unless predicate game:gamemode_components/neutral_items if entity @a[limit=1,tag=placer,predicate=custom:team/blue] positioned ~ ~1.2 ~ if predicate custom:near_yellow_spawn_zone run tag @s add prevention_reason.near_spawn_zone
execute unless predicate game:gamemode_components/neutral_items if entity @a[limit=1,tag=placer,predicate=custom:team/yellow] positioned ~ ~1.2 ~ if predicate custom:near_blue_spawn_zone run tag @s add prevention_reason.near_spawn_zone
execute if predicate game:gamemode_components/neutral_items positioned ~ ~1.2 ~ if predicate custom:near_blue_spawn_zone run tag @s add prevention_reason.near_spawn_zone
execute if entity @s[tag=prevention_reason.near_spawn_zone] run tag @s add UnableSpawn

#Give back if prevented
execute if data storage rocketriders:main spawn_egg{type:"cluster_fireball"} if entity @s[tag=UnableSpawn] run tag @s add Cluster
execute if entity @s[tag=UnableSpawn] if entity @a[limit=1,tag=placer,predicate=!custom:team/yellow] run tag @s add BlueFireball
execute if entity @s[tag=UnableSpawn] if entity @a[limit=1,tag=placer,predicate=custom:team/yellow] run tag @s add YellowFireball
execute at @s[tag=UnableSpawn] run function items:prevention/unablefx
execute at @s[tag=UnableSpawn] run return run function items:prevention/giveback

## Summon
execute if predicate game:achievements_can_be_awarded run advancement grant @a[limit=1,tag=placer,tag=!had_veteran_achievement] only achievements:rr_challenges/veteran FireballSpawned

scoreboard players set $team var -1
execute unless predicate game:gamemode_components/neutral_items as @a[limit=1,x=0,tag=placer] if predicate custom:team/any_playing_team store success score $team var unless predicate custom:team/blue

execute at @s unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute at @s run playsound minecraft:item.flintandsteel.use master @a[distance=..6] ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.blaze.shoot master @a[distance=..6] ~ ~ ~ 0.5 1.25

execute if data storage rocketriders:main spawn_egg{type:"fireball"} if score $team var matches -1 run summon fireball ~ ~1.2 ~ {data:{origin_team:"none"},ExplosionPower:1}
execute if data storage rocketriders:main spawn_egg{type:"fireball"} if score $team var matches 0 run summon fireball ~ ~1.2 ~ {data:{origin_team:"blue"},ExplosionPower:1}
execute if data storage rocketriders:main spawn_egg{type:"fireball"} if score $team var matches 1 run summon fireball ~ ~1.2 ~ {data:{origin_team:"yellow"},ExplosionPower:1}
execute if data storage rocketriders:main spawn_egg{type:"cluster_fireball"} if score $team var matches -1 run summon fireball ~ ~1.2 ~ {data:{origin_team:"none","fireball/split_after_use":{}},ExplosionPower:1,Item:{id:"minecraft:blaze_powder"}}
execute if data storage rocketriders:main spawn_egg{type:"cluster_fireball"} if score $team var matches 0 run summon fireball ~ ~1.2 ~ {data:{origin_team:"blue","fireball/split_after_use":{}},ExplosionPower:1,Item:{id:"minecraft:blaze_powder"}}
execute if data storage rocketriders:main spawn_egg{type:"cluster_fireball"} if score $team var matches 1 run summon fireball ~ ~1.2 ~ {data:{origin_team:"yellow","fireball/split_after_use":{}},ExplosionPower:1,Item:{id:"minecraft:blaze_powder"}}
