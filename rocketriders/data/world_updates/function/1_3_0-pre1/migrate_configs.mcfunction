## GAME RULES
# noTeamBalance tag -> disable_team_balancing config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=noTeamBalance] run scoreboard players set $disable_team_balancing config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noTeamBalance

# doFireballPortals tag -> snipe_portals config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doFireballPortals] run scoreboard players set $snipe_portals config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove doFireballPortals
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove fbPortalsOff

# doTying tag -> disable_tying config (inverted)
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] unless entity @s[tag=doTying,tag=!tyingOff] run scoreboard players set $disable_tying config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove doTying
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove tyingOff

# doPrevention tag -> disable_pierce_prevention config (inverted)
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doPrevention] run scoreboard players set $disable_pierce_prevention config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove doPrevention
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove preventionOff

# doHotbarLimit tag -> disable_hotbar_limit config (inverted)
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doHotbarLimit] run scoreboard players set $disable_hotbar_limit config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove doHotbarLimit
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove hotbarLimitOff

# MaxItemSec tag -> item_delay config
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] MaxItemSec matches 5..30 run scoreboard players operation $item_delay config = @e[x=0,type=armor_stand,tag=Selection,limit=1] MaxItemSec
execute if score $item_delay config matches 15 run scoreboard players reset $item_delay config

## MODIFIERS
# Explosive tag -> explosive config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Explosive] run scoreboard players set $explosive config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Explosive
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ExplosiveWasOn

# Residers tag -> rocket_residers config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Residers] run scoreboard players set $rocket_residers config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Residers
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ResidersWasOn

# Molerat tag -> molerat config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Molerat] run scoreboard players set $molerat config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Molerat
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove MoleratWasOn

# ClutterCollector tag -> clutter_collector config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ClutterCollector] run scoreboard players set $clutter_collector config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ClutterCollector
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ClutterCollectorWasOn

# CollisionControl tag -> collision_control config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CollisionControl] run scoreboard players set $collision_control config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CollisionControl
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CollisionControlWasOn

# Hardcore tag -> hardcore config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Hardcore] run scoreboard players set $hardcore config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Hardcore
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove HardcoreWasOn

# DoublePortal tag -> double_portal config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=DoublePortal] run scoreboard players set $double_portal config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove DoublePortal
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove DoublePortalWasOn

# Chaos tag -> special_treatment config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Chaos] run scoreboard players set $special_treatment config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Chaos
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ChaosWasOn

# NinjaJump tag -> ninja_jump config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=NinjaJump] run scoreboard players set $ninja_jump config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NinjaJump
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NinjaJumpWasOn

# SpamClick tag -> spam_click config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SpamClick] run scoreboard players set $spam_click config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SpamClick
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SpamClickWasOn

# SplashStreams tag -> splash_streams config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SplashStreams] run scoreboard players set $splash_streams config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SplashStreams
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SplashStreamsWasOn

# SurpriseEgg tag -> surprise_eggs config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SurpriseEgg] run scoreboard players set $surprise_eggs config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SurpriseEgg
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SurpriseEggWasOn

# Minute tag -> minute_mix config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Minute] run scoreboard players set $minute_mix config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Minute
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove MinuteWasOn

# Sonar tag -> sonar config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Sonar] run scoreboard players set $sonar config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Sonar
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SonarWasOn

# NoFall tag -> no_fall_damage config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=NoFall] run scoreboard players set $no_fall_damage config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NoFall
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NoFallWasOn

# Instamine tag -> instamine config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Instamine] run scoreboard players set $instamine config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Instamine
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove InstamineWasOn

# WindDown tag -> wind_down config
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=WindDown] run scoreboard players set $wind_down config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove WindDown
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove WindDownWasOn

## WORLD OPTIONS
# noPlayerCredits -> show_extra_player_credits config (inverted)
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=noPlayerCredits] run scoreboard players set $show_extra_player_credits config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noPlayerCredits
execute if predicate game:world_options/show_extra_player_credits/on run function lobby:credits/initialize
execute unless predicate game:world_options/show_extra_player_credits/on run function lobby:credits/stop

## BASE DETAILS
# TopDeco score -> arena_details/top config
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] TopDeco matches 1..3 run scoreboard players operation $arena_details/top config = @e[x=0,type=armor_stand,tag=Selection,limit=1] TopDeco

# TopCorner score -> arena_details/top_sides config
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] TopCorner matches 1..3 run scoreboard players operation $arena_details/top_sides config = @e[x=0,type=armor_stand,tag=Selection,limit=1] TopCorner

# MiddleDeco score -> arena_details/middle config
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] MiddleDeco matches 1..3 run scoreboard players operation $arena_details/middle config = @e[x=0,type=armor_stand,tag=Selection,limit=1] MiddleDeco

# BottomDeco score -> arena_details/bottom config
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] BottomDeco matches 1..3 run scoreboard players operation $arena_details/bottom config = @e[x=0,type=armor_stand,tag=Selection,limit=1] BottomDeco

# PortalDeco score -> arena_details/portal config
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] PortalDeco matches 1..4 run scoreboard players operation $arena_details/portal config = @e[x=0,type=armor_stand,tag=Selection,limit=1] PortalDeco

## REPEAT
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] RepeatSettings matches 1..4 run scoreboard players operation $extra_match_repetitions config = @e[x=0,type=armor_stand,tag=Selection,limit=1] RepeatSettings
scoreboard players remove $extra_match_repetitions config 1
execute if score $extra_match_repetitions config matches ..0 run scoreboard players reset $extra_match_repetitions config
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Repeat
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=RepeatForever] run scoreboard players set $extra_match_repetitions config 2147483647
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove RepeatForever
