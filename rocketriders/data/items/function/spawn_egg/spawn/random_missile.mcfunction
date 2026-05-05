# Converts to legacy random missile spawner entity

tag @s add missile
tag @s add surprising

execute unless score $spawn_egg.placer_team var matches 1 run tag @s add BlueSurprise
execute unless score $spawn_egg.placer_team var matches 1 run scoreboard players add @a[limit=1,tag=spawn_egg.placer] BSurpriseSpawned 1

execute if score $spawn_egg.placer_team var matches 1 run scoreboard players add @a[limit=1,tag=spawn_egg.placer] YSurpriseSpawned 1
execute if score $spawn_egg.placer_team var matches 1 run tag @s add YellowSurprise

function items:spawnmissiles
