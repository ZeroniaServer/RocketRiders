tag @s add missile
tag @s add surprising

execute store success score $team var if entity @a[limit=1,tag=placer,predicate=!custom:team/blue]

execute if score $team var matches 0 run scoreboard players add @a[limit=1,tag=placer] BSurpriseSpawned 1
execute if score $team var matches 1 run scoreboard players add @a[limit=1,tag=placer] YSurpriseSpawned 1

execute if data storage rocketriders:main spawn_egg{category:"all"} if score $team var matches 0 run tag @s add BlueSurprise
execute if data storage rocketriders:main spawn_egg{category:"all"} if score $team var matches 1 run tag @s add YellowSurprise

execute if data storage rocketriders:main spawn_egg{category:"heavy"} if score $team var matches 0 run tag @s add BlueSurpriseHeavy
execute if data storage rocketriders:main spawn_egg{category:"heavy"} if score $team var matches 1 run tag @s add YellowSurpriseHeavy

execute if data storage rocketriders:main spawn_egg{category:"lightning"} if score $team var matches 0 run tag @s add BlueSurpriseLightning
execute if data storage rocketriders:main spawn_egg{category:"lightning"} if score $team var matches 1 run tag @s add YellowSurpriseLightning

execute if data storage rocketriders:main spawn_egg{category:"normal"} if score $team var matches 0 run tag @s add BlueSurpriseNormal
execute if data storage rocketriders:main spawn_egg{category:"normal"} if score $team var matches 1 run tag @s add YellowSurpriseNormal

execute if data storage rocketriders:main spawn_egg{category:"special"} if score $team var matches 0 run tag @s add BlueSurpriseSpecial
execute if data storage rocketriders:main spawn_egg{category:"special"} if score $team var matches 1 run tag @s add YellowSurpriseSpecial

function items:spawnmissiles
