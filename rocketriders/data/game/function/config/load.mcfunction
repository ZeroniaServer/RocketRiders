# arguments: read_from, merge

## Get
$data modify storage rocketriders:main "config/load".config set from $(read_from)
$scoreboard players set $merge var $(merge)
execute unless score $merge var matches 1 run function game:config/reset

## Write
scoreboard players set #write var 0
execute if predicate game:game_rules/disable_cannoning/forced_off run scoreboard players set #write var 1
execute if predicate game:game_rules/disable_cannoning/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $disable_cannoning config run data get storage rocketriders:main "config/load".config.disable_cannoning
execute if score #write var matches 1 unless score $disable_cannoning config matches 0..1 run scoreboard players reset $disable_cannoning config
execute if score #write var matches 1 if score $disable_cannoning config matches 0 run scoreboard players reset $disable_cannoning config

scoreboard players set #write var 0
execute if predicate game:game_rules/impact_utilities/forced_off run scoreboard players set #write var 1
execute if predicate game:game_rules/impact_utilities/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $impact_utilities config run data get storage rocketriders:main "config/load".config.impact_utilities
execute if score #write var matches 1 unless score $impact_utilities config matches 0..1 run scoreboard players reset $impact_utilities config
execute if score #write var matches 1 if score $impact_utilities config matches 0 run scoreboard players reset $impact_utilities config

scoreboard players set #write var 0
execute if predicate game:game_rules/disable_team_balancing/forced_off run scoreboard players set #write var 1
execute if predicate game:game_rules/disable_team_balancing/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $disable_team_balancing config run data get storage rocketriders:main "config/load".config.disable_team_balancing
execute if score #write var matches 1 unless score $disable_team_balancing config matches 0..1 run scoreboard players reset $disable_team_balancing config
execute if score #write var matches 1 if score $disable_team_balancing config matches 0 run scoreboard players reset $disable_team_balancing config

scoreboard players set #write var 0
execute if predicate game:game_rules/snipe_portals/forced_off run scoreboard players set #write var 1
execute if predicate game:game_rules/snipe_portals/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $snipe_portals config run data get storage rocketriders:main "config/load".config.snipe_portals
execute if score #write var matches 1 unless score $snipe_portals config matches 0..1 run scoreboard players reset $snipe_portals config
execute if score #write var matches 1 if score $snipe_portals config matches 0 run scoreboard players reset $snipe_portals config

scoreboard players set #write var 0
execute if predicate game:game_rules/friendly_tnt_damage/forced_off run scoreboard players set #write var 1
execute if predicate game:game_rules/friendly_tnt_damage/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $friendly_tnt_damage config run data get storage rocketriders:main "config/load".config.friendly_tnt_damage
execute if score #write var matches 1 unless score $friendly_tnt_damage config matches 0..1 run scoreboard players reset $friendly_tnt_damage config
execute if score #write var matches 1 if score $friendly_tnt_damage config matches 0 run scoreboard players reset $friendly_tnt_damage config

scoreboard players set #write var 0
execute if predicate game:game_rules/disable_tying/forced_off run scoreboard players set #write var 1
execute if predicate game:game_rules/disable_tying/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $disable_tying config run data get storage rocketriders:main "config/load".config.disable_tying
execute if score #write var matches 1 unless score $disable_tying config matches 0..1 run scoreboard players reset $disable_tying config
execute if score #write var matches 1 if score $disable_tying config matches 0 run scoreboard players reset $disable_tying config

scoreboard players set #write var 0
execute if predicate game:game_rules/item_stacking/forced_off run scoreboard players set #write var 1
execute if predicate game:game_rules/item_stacking/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $item_stacking config run data get storage rocketriders:main "config/load".config.item_stacking
execute if score #write var matches 1 unless score $item_stacking config matches 0..1 run scoreboard players reset $item_stacking config
execute if score #write var matches 1 if score $item_stacking config matches 0 run scoreboard players reset $item_stacking config


scoreboard players set #write var 0
execute if predicate game:modifiers/instamine/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/instamine/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $instamine config run data get storage rocketriders:main "config/load".config.instamine
execute if score #write var matches 1 unless score $instamine config matches 0..1 run scoreboard players reset $instamine config
execute if score #write var matches 1 if score $instamine config matches 0 run scoreboard players reset $instamine config

scoreboard players set #write var 0
execute if predicate game:modifiers/no_fall_damage/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/no_fall_damage/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $no_fall_damage config run data get storage rocketriders:main "config/load".config.no_fall_damage
execute if score #write var matches 1 unless score $no_fall_damage config matches 0..1 run scoreboard players reset $no_fall_damage config
execute if score #write var matches 1 if score $no_fall_damage config matches 0 run scoreboard players reset $no_fall_damage config

scoreboard players set #write var 0
execute if predicate game:modifiers/explosive/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/explosive/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $explosive config run data get storage rocketriders:main "config/load".config.explosive
execute if score #write var matches 1 unless score $explosive config matches 0..1 run scoreboard players reset $explosive config
execute if score #write var matches 1 if score $explosive config matches 0 run scoreboard players reset $explosive config

scoreboard players set #write var 0
execute if predicate game:modifiers/rocket_residers/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/rocket_residers/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $rocket_residers config run data get storage rocketriders:main "config/load".config.rocket_residers
execute if score #write var matches 1 unless score $rocket_residers config matches 0..1 run scoreboard players reset $rocket_residers config
execute if score #write var matches 1 if score $rocket_residers config matches 0 run scoreboard players reset $rocket_residers config

scoreboard players set #write var 0
execute if predicate game:modifiers/sonar/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/sonar/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $sonar config run data get storage rocketriders:main "config/load".config.sonar
execute if score #write var matches 1 unless score $sonar config matches 0..1 run scoreboard players reset $sonar config
execute if score #write var matches 1 if score $sonar config matches 0 run scoreboard players reset $sonar config

scoreboard players set #write var 0
execute if predicate game:modifiers/molerat/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/molerat/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $molerat config run data get storage rocketriders:main "config/load".config.molerat
execute if score #write var matches 1 unless score $molerat config matches 0..1 run scoreboard players reset $molerat config
execute if score #write var matches 1 if score $molerat config matches 0 run scoreboard players reset $molerat config

scoreboard players set #write var 0
execute if predicate game:modifiers/minute_mix/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/minute_mix/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $minute_mix config run data get storage rocketriders:main "config/load".config.minute_mix
execute if score #write var matches 1 unless score $minute_mix config matches 0..1 run scoreboard players reset $minute_mix config
execute if score #write var matches 1 if score $minute_mix config matches 0 run scoreboard players reset $minute_mix config

scoreboard players set #write var 0
execute if predicate game:modifiers/surprise_eggs/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/surprise_eggs/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $surprise_eggs config run data get storage rocketriders:main "config/load".config.surprise_eggs
execute if score #write var matches 1 unless score $surprise_eggs config matches 0..1 run scoreboard players reset $surprise_eggs config
execute if score #write var matches 1 if score $surprise_eggs config matches 0 run scoreboard players reset $surprise_eggs config

scoreboard players set #write var 0
execute if predicate game:modifiers/wind_down/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/wind_down/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $wind_down config run data get storage rocketriders:main "config/load".config.wind_down
execute if score #write var matches 1 unless score $wind_down config matches 0..1 run scoreboard players reset $wind_down config
execute if score #write var matches 1 if score $wind_down config matches 0 run scoreboard players reset $wind_down config

scoreboard players set #write var 0
execute if predicate game:modifiers/splash_streams/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/splash_streams/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $splash_streams config run data get storage rocketriders:main "config/load".config.splash_streams
execute if score #write var matches 1 unless score $splash_streams config matches 0..1 run scoreboard players reset $splash_streams config
execute if score #write var matches 1 if score $splash_streams config matches 0 run scoreboard players reset $splash_streams config

scoreboard players set #write var 0
execute if predicate game:modifiers/spam_click/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/spam_click/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $spam_click config run data get storage rocketriders:main "config/load".config.spam_click
execute if score #write var matches 1 unless score $spam_click config matches 0..1 run scoreboard players reset $spam_click config
execute if score #write var matches 1 if score $spam_click config matches 0 run scoreboard players reset $spam_click config

scoreboard players set #write var 0
execute if predicate game:modifiers/ninja_jump/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/ninja_jump/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $ninja_jump config run data get storage rocketriders:main "config/load".config.ninja_jump
execute if score #write var matches 1 unless score $ninja_jump config matches 0..1 run scoreboard players reset $ninja_jump config
execute if score #write var matches 1 if score $ninja_jump config matches 0 run scoreboard players reset $ninja_jump config

scoreboard players set #write var 0
execute if predicate game:modifiers/hardcore/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/hardcore/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $hardcore config run data get storage rocketriders:main "config/load".config.hardcore
execute if score #write var matches 1 unless score $hardcore config matches 0..1 run scoreboard players reset $hardcore config
execute if score #write var matches 1 if score $hardcore config matches 0 run scoreboard players reset $hardcore config

scoreboard players set #write var 0
execute if predicate game:modifiers/double_portal/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/double_portal/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $double_portal config run data get storage rocketriders:main "config/load".config.double_portal
execute if score #write var matches 1 unless score $double_portal config matches 0..1 run scoreboard players reset $double_portal config
execute if score #write var matches 1 if score $double_portal config matches 0 run scoreboard players reset $double_portal config

scoreboard players set #write var 0
execute if predicate game:modifiers/clutter_collector/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/clutter_collector/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $clutter_collector config run data get storage rocketriders:main "config/load".config.clutter_collector
execute if score #write var matches 1 unless score $clutter_collector config matches 0..1 run scoreboard players reset $clutter_collector config
execute if score #write var matches 1 if score $clutter_collector config matches 0 run scoreboard players reset $clutter_collector config

scoreboard players set #write var 0
execute if predicate game:modifiers/special_treatment/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/special_treatment/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $special_treatment config run data get storage rocketriders:main "config/load".config.special_treatment
execute if score #write var matches 1 unless score $special_treatment config matches 0..1 run scoreboard players reset $special_treatment config
execute if score #write var matches 1 if score $special_treatment config matches 0 run scoreboard players reset $special_treatment config

scoreboard players set #write var 0
execute if predicate game:modifiers/collision_control/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/collision_control/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $collision_control config run data get storage rocketriders:main "config/load".config.collision_control
execute if score #write var matches 1 unless score $collision_control config matches 0..1 run scoreboard players reset $collision_control config
execute if score #write var matches 1 if score $collision_control config matches 0 run scoreboard players reset $collision_control config

scoreboard players set #write var 0
execute if predicate game:modifiers/punchable_tnt/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/punchable_tnt/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $punchable_tnt config run data get storage rocketriders:main "config/load".config.punchable_tnt
execute if score #write var matches 1 unless score $punchable_tnt config matches 0..1 run scoreboard players reset $punchable_tnt config
execute if score #write var matches 1 if score $punchable_tnt config matches 0 run scoreboard players reset $punchable_tnt config

scoreboard players set #write var 0
execute if predicate game:modifiers/unstable_tnt/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/unstable_tnt/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $unstable_tnt config run data get storage rocketriders:main "config/load".config.unstable_tnt
execute if score #write var matches 1 unless score $unstable_tnt config matches 0..1 run scoreboard players reset $unstable_tnt config
execute if score #write var matches 1 if score $unstable_tnt config matches 0 run scoreboard players reset $unstable_tnt config

scoreboard players set #write var 0
execute if predicate game:modifiers/hobbits/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/hobbits/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $hobbits config run data get storage rocketriders:main "config/load".config.hobbits
execute if score #write var matches 1 unless score $hobbits config matches 0..1 run scoreboard players reset $hobbits config
execute if score #write var matches 1 if score $hobbits config matches 0 run scoreboard players reset $hobbits config

scoreboard players set #write var 0
execute if predicate game:modifiers/instant_tnt_explosions/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/instant_tnt_explosions/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $instant_tnt_explosions config run data get storage rocketriders:main "config/load".config.instant_tnt_explosions
execute if score #write var matches 1 unless score $instant_tnt_explosions config matches 0..1 run scoreboard players reset $instant_tnt_explosions config
execute if score #write var matches 1 if score $instant_tnt_explosions config matches 0 run scoreboard players reset $instant_tnt_explosions config

scoreboard players set #write var 0
execute if predicate game:modifiers/long_arms/forced_off run scoreboard players set #write var 1
execute if predicate game:modifiers/long_arms/forced_on run scoreboard players set #write var 1
execute if score #write var matches 1 store result score $long_arms config run data get storage rocketriders:main "config/load".config.long_arms
execute if score #write var matches 1 unless score $long_arms config matches 0..1 run scoreboard players reset $long_arms config
execute if score #write var matches 1 if score $long_arms config matches 0 run scoreboard players reset $long_arms config

## Clean Up
data remove storage rocketriders:main "config/load"
