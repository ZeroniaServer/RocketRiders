# arguments: write_to

## Get
data modify storage rocketriders:main "config/dump" set value {config:{}}

execute store success storage rocketriders:main "config/dump".config.disable_cannoning byte 1 if score $disable_cannoning config matches 1
execute store success storage rocketriders:main "config/dump".config.impact_utilities byte 1 if score $impact_utilities config matches 1

execute store success storage rocketriders:main "config/dump".config.explosive byte 1 if score $explosive config matches 1
execute store success storage rocketriders:main "config/dump".config.rocket_residers byte 1 if score $rocket_residers config matches 1
execute store success storage rocketriders:main "config/dump".config.molerat byte 1 if score $molerat config matches 1
execute store success storage rocketriders:main "config/dump".config.clutter_collector byte 1 if score $clutter_collector config matches 1
execute store success storage rocketriders:main "config/dump".config.collision_control byte 1 if score $collision_control config matches 1
execute store success storage rocketriders:main "config/dump".config.punchable_tnt byte 1 if score $punchable_tnt config matches 1
execute store success storage rocketriders:main "config/dump".config.unstable_tnt byte 1 if score $unstable_tnt config matches 1
execute store success storage rocketriders:main "config/dump".config.hobbits byte 1 if score $hobbits config matches 1

execute store success storage rocketriders:main "config/dump".config.disable_team_balancing byte 1 if score $disable_team_balancing config matches 1

## Write
$data modify $(write_to) set from storage rocketriders:main "config/dump".config

## Clean Up
data remove storage rocketriders:main "config/dump"
