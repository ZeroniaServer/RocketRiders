# arguments: read_from, merge

## Get
$data modify storage rocketriders:main "config/load".config set from $(read_from)
$scoreboard players set $merge var $(merge)
execute unless score $merge var matches 1 run function game:config/reset

## Write
execute store result score $disable_cannoning config run data get storage rocketriders:main "config/load".config.disable_cannoning
execute unless score $disable_cannoning config matches 1..1 run scoreboard players reset $disable_cannoning config

execute store result score $impact_projectiles config run data get storage rocketriders:main "config/load".config.impact_projectiles
execute unless score $impact_projectiles config matches 1..1 run scoreboard players reset $impact_projectiles config

## Clean Up
data remove storage rocketriders:main "config/load"
