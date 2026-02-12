data modify storage rocketriders:main spawn_egg set value {}
data modify storage rocketriders:main spawn_egg set from entity @s data.spawn_egg

# Target the placer
execute unless data storage rocketriders:main spawn_egg.owner run return run kill @s

tag @a[x=0,tag=placer] remove placer
function custom:target_uuid {read_from:"storage rocketriders:main spawn_egg.owner",run:"tag @s[type=player,predicate=!custom:team/lobby] add placer"}
execute unless entity @a[limit=1,x=0,tag=placer] run return run kill @s

# Get type
execute unless data storage rocketriders:main spawn_egg.type run return run function items:spawn_egg/fail_to_spawn

# Summon
execute if data storage rocketriders:main spawn_egg{type:"fireball"} at @s run function items:spawnfireball
execute if data storage rocketriders:main spawn_egg{type:"cluster_fireball"} at @s run function items:spawnfireball
## TODO: Refactor spawning system to use updated format. Until then, just convert the marker into the legacy format.
execute if data storage rocketriders:main spawn_egg{type:"obsidian_shield"} at @s run function items:spawn_egg/convert_to_legacy_obsidian_shield
execute if data storage rocketriders:main spawn_egg{type:"missile"} at @s run function items:spawn_egg/convert_to_legacy_missile
execute if data storage rocketriders:main spawn_egg{type:"surprise_missile"} at @s run function items:spawn_egg/convert_to_legacy_surprise_missile

tag @a[x=0,tag=placer] remove placer
kill @s
