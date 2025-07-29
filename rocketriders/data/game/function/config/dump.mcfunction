# arguments: write_to

## Get
data modify storage rocketriders:main "config/dump" set value {config:{}}

execute store success storage rocketriders:main "config/dump".config.disable_cannoning byte 1 if predicate game:config/disable_cannoning
execute store success storage rocketriders:main "config/dump".config.impact_projectiles byte 1 if predicate game:config/impact_projectiles
execute store success storage rocketriders:main "config/dump".config.punchable_tnt byte 1 if predicate game:config/punchable_tnt
execute store success storage rocketriders:main "config/dump".config.unstable_tnt byte 1 if predicate game:config/unstable_tnt
execute store success storage rocketriders:main "config/dump".config.hobbits byte 1 if predicate game:config/hobbits

## Write
$data modify $(write_to) set from storage rocketriders:main "config/dump".config

## Clean Up
data remove storage rocketriders:main "config/dump"
