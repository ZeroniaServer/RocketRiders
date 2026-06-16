# Align to block (bottom center), and reposition out of stairs
execute positioned as @s align xyz run tp @s ~0.5 ~ ~0.5
execute positioned as @s if block ~ ~ ~ #minecraft:stairs[half=bottom] run tp @s ~ ~1 ~
execute positioned as @s if block ~ ~ ~ #minecraft:stairs[half=top] run tp @s ~ ~-1 ~

# Extract data
data modify storage rocketriders:main spawn_egg set value {}
data modify storage rocketriders:main spawn_egg set from entity @s data.spawn_egg
execute unless data storage rocketriders:main spawn_egg.type run return run function items:spawn_egg/fail_to_spawn

# Target the placer
execute unless data storage rocketriders:main spawn_egg.owner run return run kill @s
tag @a[x=0,tag=spawn_egg.placer] remove spawn_egg.placer
function custom:target_uuid {read_from:"storage rocketriders:main spawn_egg.owner",run:"tag @s[type=player,predicate=!custom:team/lobby] add spawn_egg.placer"}
execute unless entity @a[limit=1,x=0,tag=spawn_egg.placer] run return run kill @s

# Get placer team
scoreboard players set $spawn_egg.placer_team var -1
execute unless predicate game:match_components/neutral_items as @a[limit=1,x=0,tag=spawn_egg.placer] if predicate custom:team/any_playing_team store success score $spawn_egg.placer_team var unless predicate custom:team/blue

# Spawn
execute positioned as @s if data storage rocketriders:main spawn_egg{type:"cluster_fireball"} run function items:spawn_egg/spawn/cluster_fireball
execute positioned as @s if data storage rocketriders:main spawn_egg{type:"fireball"} run function items:spawn_egg/spawn/fireball
execute positioned as @s if data storage rocketriders:main spawn_egg{type:"obsidian_shield"} run function items:spawn_egg/spawn/obsidian_shield
## TODO: Refactor spawning system to use updated format. Until then, just convert the marker into the legacy format.
execute positioned as @s if data storage rocketriders:main spawn_egg{type:"missile"} run function items:spawn_egg/spawn/missile
execute positioned as @s if data storage rocketriders:main spawn_egg{type:"random_missile"} run function items:spawn_egg/spawn/random_missile

tag @a[x=0,tag=spawn_egg.placer] remove spawn_egg.placer
kill @s
