# arguments: read_from, merge

## Get
$data modify storage rocketriders:main "config/load".config set from $(read_from)
$scoreboard players set $merge var $(merge)
execute unless score $merge var matches 1 run function game:config/reset

## Write
execute store result score $disable_cannoning config run data get storage rocketriders:main "config/load".config.disable_cannoning
execute unless score $disable_cannoning config matches 0..1 run scoreboard players reset $disable_cannoning config
execute if score $disable_cannoning config matches 0 run scoreboard players reset $disable_cannoning config

execute store result score $impact_utilities config run data get storage rocketriders:main "config/load".config.impact_utilities
execute unless score $impact_utilities config matches 0..1 run scoreboard players reset $impact_utilities config
execute if score $impact_utilities config matches 0 run scoreboard players reset $impact_utilities config

execute store result score $disable_team_balancing config run data get storage rocketriders:main "config/load".config.disable_team_balancing
execute unless score $disable_team_balancing config matches 0..1 run scoreboard players reset $disable_team_balancing config
execute if score $disable_team_balancing config matches 0 run scoreboard players reset $disable_team_balancing config

execute store result score $snipe_portals config run data get storage rocketriders:main "config/load".config.snipe_portals
execute unless score $snipe_portals config matches 0..1 run scoreboard players reset $snipe_portals config
execute if score $snipe_portals config matches 0 run scoreboard players reset $snipe_portals config

execute store result score $friendly_tnt_damage config run data get storage rocketriders:main "config/load".config.friendly_tnt_damage
execute unless score $friendly_tnt_damage config matches 0..1 run scoreboard players reset $friendly_tnt_damage config
execute if score $friendly_tnt_damage config matches 0 run scoreboard players reset $friendly_tnt_damage config


execute store result score $explosive config run data get storage rocketriders:main "config/load".config.explosive
execute unless score $explosive config matches 0..1 run scoreboard players reset $explosive config
execute if score $explosive config matches 0 run scoreboard players reset $explosive config

execute store result score $rocket_residers config run data get storage rocketriders:main "config/load".config.rocket_residers
execute unless score $rocket_residers config matches 0..1 run scoreboard players reset $rocket_residers config
execute if score $rocket_residers config matches 0 run scoreboard players reset $rocket_residers config

execute store result score $molerat config run data get storage rocketriders:main "config/load".config.molerat
execute unless score $molerat config matches 0..1 run scoreboard players reset $molerat config
execute if score $molerat config matches 0 run scoreboard players reset $molerat config

execute store result score $spam_click config run data get storage rocketriders:main "config/load".config.spam_click
execute unless score $spam_click config matches 0..1 run scoreboard players reset $spam_click config
execute if score $spam_click config matches 0 run scoreboard players reset $spam_click config

execute store result score $ninja_jump config run data get storage rocketriders:main "config/load".config.ninja_jump
execute unless score $ninja_jump config matches 0..1 run scoreboard players reset $ninja_jump config
execute if score $ninja_jump config matches 0 run scoreboard players reset $ninja_jump config

execute store result score $hardcore config run data get storage rocketriders:main "config/load".config.hardcore
execute unless score $hardcore config matches 0..1 run scoreboard players reset $hardcore config
execute if score $hardcore config matches 0 run scoreboard players reset $hardcore config

execute store result score $double_portal config run data get storage rocketriders:main "config/load".config.double_portal
execute unless score $double_portal config matches 0..1 run scoreboard players reset $double_portal config
execute if score $double_portal config matches 0 run scoreboard players reset $double_portal config

execute store result score $clutter_collector config run data get storage rocketriders:main "config/load".config.clutter_collector
execute unless score $clutter_collector config matches 0..1 run scoreboard players reset $clutter_collector config
execute if score $clutter_collector config matches 0 run scoreboard players reset $clutter_collector config

execute store result score $special_treatment config run data get storage rocketriders:main "config/load".config.special_treatment
execute unless score $special_treatment config matches 0..1 run scoreboard players reset $special_treatment config
execute if score $special_treatment config matches 0 run scoreboard players reset $special_treatment config

execute store result score $collision_control config run data get storage rocketriders:main "config/load".config.collision_control
execute unless score $collision_control config matches 0..1 run scoreboard players reset $collision_control config
execute if score $collision_control config matches 0 run scoreboard players reset $collision_control config

execute store result score $punchable_tnt config run data get storage rocketriders:main "config/load".config.punchable_tnt
execute unless score $punchable_tnt config matches 0..1 run scoreboard players reset $punchable_tnt config
execute if score $punchable_tnt config matches 0 run scoreboard players reset $punchable_tnt config

execute store result score $unstable_tnt config run data get storage rocketriders:main "config/load".config.unstable_tnt
execute unless score $unstable_tnt config matches 0..1 run scoreboard players reset $unstable_tnt config
execute if score $unstable_tnt config matches 0 run scoreboard players reset $unstable_tnt config

execute store result score $hobbits config run data get storage rocketriders:main "config/load".config.hobbits
execute unless score $hobbits config matches 0..1 run scoreboard players reset $hobbits config
execute if score $hobbits config matches 0 run scoreboard players reset $hobbits config

execute store result score $instant_tnt_explosions config run data get storage rocketriders:main "config/load".config.instant_tnt_explosions
execute unless score $instant_tnt_explosions config matches 0..1 run scoreboard players reset $instant_tnt_explosions config
execute if score $instant_tnt_explosions config matches 0 run scoreboard players reset $instant_tnt_explosions config

execute store result score $long_arms config run data get storage rocketriders:main "config/load".config.long_arms
execute unless score $long_arms config matches 0..1 run scoreboard players reset $long_arms config
execute if score $long_arms config matches 0 run scoreboard players reset $long_arms config

## Clean Up
data remove storage rocketriders:main "config/load"
