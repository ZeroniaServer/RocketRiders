# arguments: read_from, merge

## Get
$data modify storage rocketriders:main "config/load".config set from $(read_from)
$scoreboard players set $merge var $(merge)
execute unless score $merge var matches 1 run function game:modifier/reset

## Write
execute store result score $disable_cannoning config run data get storage rocketriders:main "config/load".config.disable_cannoning
execute unless score $disable_cannoning config matches 1..1 run scoreboard players reset $disable_cannoning config

execute store result score $impact_projectiles config run data get storage rocketriders:main "config/load".config.impact_projectiles
execute unless score $impact_projectiles config matches 1..1 run scoreboard players reset $impact_projectiles config

execute store result score $punchable_tnt config run data get storage rocketriders:main "config/load".config.punchable_tnt
execute unless score $punchable_tnt config matches 1..1 run scoreboard players reset $punchable_tnt config

execute store result score $unstable_tnt config run data get storage rocketriders:main "config/load".config.unstable_tnt
execute unless score $unstable_tnt config matches 1..1 run scoreboard players reset $unstable_tnt config

execute store result score $hobbits config run data get storage rocketriders:main "config/load".config.hobbits
execute unless score $hobbits config matches 1..1 run scoreboard players reset $hobbits config

## Clean Up
data remove storage rocketriders:main "config/load"
