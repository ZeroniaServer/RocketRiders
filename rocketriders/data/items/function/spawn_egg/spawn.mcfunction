data modify storage rocketriders:main spawn_egg set value {}
data modify storage rocketriders:main spawn_egg set from entity @s data.spawn_egg

# Target the placer
execute unless data storage rocketriders:main spawn_egg.owner run return run kill @s

tag @a[tag=placer] remove placer
function custom:target_uuid {read_from:"storage rocketriders:main spawn_egg.owner",run:"tag @s[type=player,predicate=custom:team/any_playing_team] add placer"}
execute unless entity @a[limit=1,tag=placer] run return run kill @s

# Get type (currently just converts to the legacy tagged marker system.)
execute unless data storage rocketriders:main spawn_egg.type run return run function items:spawn_egg/fail_to_spawn

## TODO: Refactor spawning system to use updated names. Until then, just convert the marker into the legacy format. 
execute if data storage rocketriders:main spawn_egg{type:"fireball"} at @s run function items:spawn_egg/convert_to_legacy_fireball
execute if data storage rocketriders:main spawn_egg{type:"cluster_fireball"} at @s run function items:spawn_egg/convert_to_legacy_cluster_fireball
execute if data storage rocketriders:main spawn_egg{type:"obsidian_shield"} at @s run function items:spawn_egg/convert_to_legacy_obsidian_shield
execute if data storage rocketriders:main spawn_egg{type:"missile"} at @s run function items:spawn_egg/convert_to_legacy_missile
execute if data storage rocketriders:main spawn_egg{type:"surprise_missile"} at @s run function items:spawn_egg/convert_to_legacy_surprise_missile

tag @a[tag=placer] remove placer
kill @s
