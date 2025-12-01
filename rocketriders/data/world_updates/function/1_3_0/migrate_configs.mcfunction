## GAME RULES

# noTeamBalance tag -> disable_team_balancing config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=noTeamBalance] run scoreboard players set $disable_team_balancing config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noTeamBalance
execute if data storage rocketriders:storage {Tags:["noTeamBalance"]} run data modify storage rocketriders:storage config.disable_team_balancing set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"noTeamBalance"}

# doFireballPortals tag -> snipe_portals config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doFireballPortals] run scoreboard players set $snipe_portals config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove doFireballPortals
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove fbPortalsOff
execute if data storage rocketriders:storage {Tags:["doFireballPortals"]} run data modify storage rocketriders:storage config.snipe_portals set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"doFireballPortals"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"fbPortalsOff"}

# doTying tag -> disable_tying config (inverted)
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] unless entity @s[tag=doTying,tag=!tyingOff] run scoreboard players set $disable_tying config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove doTying
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove tyingOff
execute unless data storage rocketriders:storage {Tags:["doTying"]} run data modify storage rocketriders:storage config.disable_tying set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"doTying"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"tyingOff"}

# doPrevention tag -> disable_pierce_prevention config (inverted)
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doPrevention] run scoreboard players set $disable_pierce_prevention config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove doPrevention
execute unless data storage rocketriders:storage {Tags:["doPrevention"]} run data modify storage rocketriders:storage config.disable_pierce_prevention set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"doPrevention"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"preventionOff"}

# doHotbarLimit tag -> disable_hotbar_limit config (inverted)
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doHotbarLimit] run scoreboard players set $disable_hotbar_limit config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove doHotbarLimit
execute unless data storage rocketriders:storage {Tags:["doHotbarLimit"]} run data modify storage rocketriders:storage config.disable_hotbar_limit set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"doHotbarLimit"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"hotbarLimitOff"}

# MaxItemSec tag -> item_delay config
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] MaxItemSec matches 5..30 run scoreboard players operation $item_delay config = @e[x=0,type=armor_stand,tag=Selection,limit=1] MaxItemSec

## MODIFIERS
# Explosive tag -> explosive config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Explosive] run scoreboard players set $explosive config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Explosive
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ExplosiveWasOn
execute if data storage rocketriders:storage {Tags:["Explosive"]} run data modify storage rocketriders:storage config.explosive set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"Explosive"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"ExplosiveWasOn"}

# Residers tag -> rocket_residers config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Residers] run scoreboard players set $rocket_residers config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Residers
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ResidersWasOn
execute if data storage rocketriders:storage {Tags:["Residers"]} run data modify storage rocketriders:storage config.rocket_residers set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"Residers"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"ResidersWasOn"}

# Molerat tag -> molerat config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Molerat] run scoreboard players set $molerat config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Molerat
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove MoleratWasOn
execute if data storage rocketriders:storage {Tags:["Molerat"]} run data modify storage rocketriders:storage config.molerat set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"Molerat"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"MoleratWasOn"}

# ClutterCollector tag -> clutter_collector config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ClutterCollector] run scoreboard players set $clutter_collector config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ClutterCollector
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ClutterCollectorWasOn
execute if data storage rocketriders:storage {Tags:["ClutterCollector"]} run data modify storage rocketriders:storage config.clutter_collector set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"ClutterCollector"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"ClutterCollectorWasOn"}

# CollisionControl tag -> collision_control config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CollisionControl] run scoreboard players set $collision_control config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CollisionControl
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CollisionControlWasOn
execute if data storage rocketriders:storage {Tags:["CollisionControl"]} run data modify storage rocketriders:storage config.collision_control set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"CollisionControl"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"CollisionControlWasOn"}

# Hardcore tag -> hardcore config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Hardcore] run scoreboard players set $hardcore config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Hardcore
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove HardcoreWasOn
execute if data storage rocketriders:storage {Tags:["Hardcore"]} run data modify storage rocketriders:storage config.hardcore set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"Hardcore"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"HardcoreWasOn"}

# DoublePortal tag -> double_portal config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=DoublePortal] run scoreboard players set $double_portal config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove DoublePortal
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove DoublePortalWasOn
execute if data storage rocketriders:storage {Tags:["DoublePortal"]} run data modify storage rocketriders:storage config.double_portal set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"DoublePortal"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"DoublePortalWasOn"}

# Chaos tag -> special_treatment config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Chaos] run scoreboard players set $special_treatment config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Chaos
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ChaosWasOn
execute if data storage rocketriders:storage {Tags:["Chaos"]} run data modify storage rocketriders:storage config.special_treatment set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"Chaos"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"ChaosWasOn"}

# NinjaJump tag -> ninja_jump config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=NinjaJump] run scoreboard players set $ninja_jump config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NinjaJump
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NinjaJumpWasOn
execute if data storage rocketriders:storage {Tags:["NinjaJump"]} run data modify storage rocketriders:storage config.ninja_jump set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"NinjaJump"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"NinjaJumpWasOn"}

# SpamClick tag -> spam_click config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SpamClick] run scoreboard players set $spam_click config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SpamClick
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SpamClickWasOn
execute if data storage rocketriders:storage {Tags:["SpamClick"]} run data modify storage rocketriders:storage config.spam_click set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"SpamClick"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"SpamClickWasOn"}

# SplashStreams tag -> splash_streams config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SplashStreams] run scoreboard players set $splash_streams config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SplashStreams
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SplashStreamsWasOn
execute if data storage rocketriders:storage {Tags:["SplashStreams"]} run data modify storage rocketriders:storage config.splash_streams set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"SplashStreams"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"SplashStreamsWasOn"}

# SurpriseEgg tag -> surprise_eggs config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SurpriseEgg] run scoreboard players set $surprise_eggs config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SurpriseEgg
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SurpriseEggWasOn
execute if data storage rocketriders:storage {Tags:["SurpriseEgg"]} run data modify storage rocketriders:storage config.surprise_eggs set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"SurpriseEgg"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"SurpriseEggWasOn"}

# Minute tag -> minute_mix config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Minute] run scoreboard players set $minute_mix config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Minute
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove MinuteWasOn
execute if data storage rocketriders:storage {Tags:["Minute"]} run data modify storage rocketriders:storage config.minute_mix set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"Minute"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"MinuteWasOn"}

# Sonar tag -> sonar config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Sonar] run scoreboard players set $sonar config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Sonar
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SonarWasOn
execute if data storage rocketriders:storage {Tags:["Sonar"]} run data modify storage rocketriders:storage config.sonar set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"Sonar"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"SonarWasOn"}

# NoFall tag -> no_fall_damage config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=NoFall] run scoreboard players set $no_fall_damage config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NoFall
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NoFallWasOn
execute if data storage rocketriders:storage {Tags:["NoFall"]} run data modify storage rocketriders:storage config.no_fall_damage set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"NoFall"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"NoFallWasOn"}

# Instamine tag -> instamine config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Instamine] run scoreboard players set $instamine config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Instamine
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove InstamineWasOn
execute if data storage rocketriders:storage {Tags:["Instamine"]} run data modify storage rocketriders:storage config.instamine set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"Instamine"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"InstamineWasOn"}

# WindDown tag -> wind_down config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=WindDown] run scoreboard players set $wind_down config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove WindDown
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove WindDownWasOn
execute if data storage rocketriders:storage {Tags:["WindDown"]} run data modify storage rocketriders:storage config.wind_down set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"WindDown"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"WindDownWasOn"}

## WORLD OPTIONS
# noPlayerCredits -> show_extra_player_credits config (inverted)
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=noPlayerCredits] run scoreboard players set $show_extra_player_credits config 1
execute if predicate game:world_options/show_extra_player_credits/on run function lobby:credits/initialize
execute unless predicate game:world_options/show_extra_player_credits/on run function lobby:credits/stop
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noPlayerCredits
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"noPlayerCredits"}
