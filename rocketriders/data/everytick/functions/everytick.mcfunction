####################################
## EVERYTICK: Where everything in ##
## the core RR Datapack runs from ##
####################################

#Server mode
tag @e[type=armor_stand,tag=Selection,scores={servermode=0},tag=!SMCustom] remove SMActive
tag @e[type=armor_stand,tag=Selection,scores={servermode=1..}] add SMActive
execute as @e[type=armor_stand,tag=Selection,tag=ServerModeVoting] if entity @a run function servermode:loop
scoreboard players reset @e[type=armor_stand,tag=Selection,tag=!ServerModeVoting] VoteServerMode
execute unless entity @a[team=Lobby] run scoreboard players reset @e[type=armor_stand,tag=Selection,tag=ServerModeVoting] VoteServerMode
execute as @e[type=armor_stand,tag=Selection,scores={servermode=1..}] unless entity @a run function game:forcestop
execute as @e[type=armor_stand,tag=Selection,scores={servermode=0},tag=SMCustom] unless entity @a run function game:forcestop
execute as @e[type=armor_stand,tag=Selection,scores={servermode=0},tag=SMCustom] unless entity @a run function arenaclear:globaldefaults
execute unless entity @e[type=armor_stand,tag=Selection,tag=ServerModeVoting] run scoreboard players reset @a VoteServerMode
execute unless entity @e[type=armor_stand,tag=Selection,tag=ServerModeVoting] run kill @e[type=marker,tag=ServerMode]

#Handling new/lobby players and miscellaneous stuff
execute as @e[type=armor_stand,tag=Selection] run function everytick:new_player
execute as @e[type=armor_stand,tag=Selection] run function everytick:leave_game
execute as @e[type=armor_stand,tag=Selection] run function everytick:general_settings_or_hotfixes

#Team/inventory counting and game-related effects
execute as @e[type=armor_stand,tag=Selection] run function everytick:team_count
execute as @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled] run function game:gamestart
execute as @e[type=armor_stand,tag=Selection,tag=GameStarted,tag=!NoModesInstalled,tag=!NoModesEnabled] at @s run function game:ingame
execute as @e[type=armor_stand,tag=Selection,tag=!SMActive] run function everytick:regen_system
execute as @e[type=armor_stand,tag=Selection,tag=SMActive] run gamerule naturalRegeneration true

#Night vision/saturation and more lobby functionality
effect give @a[team=Lobby] night_vision 1000000 100 true
effect give @a[team=Spectator] night_vision 1000000 100 true
execute as @e[type=armor_stand,tag=Selection,tag=!SMActive] run effect give @a saturation 1000000 0 true
execute as @e[type=armor_stand,tag=Selection,tag=SMActive] run effect clear @a saturation
function lobby:bookwarp
scoreboard players enable @a[team=Lobby] displayinfo
scoreboard players enable @a[team=Developer] displayinfo
execute as @a[scores={displayinfo=1..}] at @s run function lobby:displayinfo
execute as @a[team=Lobby] run function everytick:score_reset
execute unless entity @e[type=armor_stand,tag=Selection,tag=GameStarted] run function lobby:credits/cycle
execute as @e[type=armor_stand,tag=Selection,tag=!SMActive] run function lobby:parkour/parkour
execute as @e[type=armor_stand,tag=Selection,tag=SMActive] run function lobby:parkour/parkourserver
stopsound @a ambient minecraft:ambient.cave

#Handling portals/roof with players/utilities
execute as @e[type=armor_stand,tag=Selection] run function everytick:cancel_utility
execute as @e[type=armor_stand,tag=Selection,tag=!SMActive] run function everytick:player_portal

#Player void
execute as @a unless entity @s[team=!Yellow,team=!Blue,team=!Spectator] at @s if entity @s[y=-2000,dy=1980] unless entity @s[scores={ThrowPlat=1..}] run function game:void
effect give @s[scores={voidNoFallCount=0}] slow_falling 1 1 true
scoreboard players add @s[scores={voidNoFallCount=0..1}] voidNoFallCount 1
effect clear @s[scores={voidNoFallCount=2}] slow_falling
scoreboard players reset @s[scores={voidNoFallCount=2}] voidNoFallCount

#Arrow pickup
execute as @e[type=armor_stand,tag=Selection,tag=!GameEnd,tag=!customArrowPickup] if entity @e[type=arrow] run function everytick:arrow_pickup

#Game ending and arena clearing
execute as @e[type=armor_stand,tag=Selection,tag=GameEnd,tag=!NoModesInstalled,tag=!NoModesEnabled] run function game:gameend
execute as @e[type=armor_stand,tag=Selection,tag=SuddenDeath,tag=!NoModesInstalled,tag=!NoModesEnabled] run function game:suddendeath
execute if entity @e[type=marker,tag=ArenaClearChecker] as @a run function everytick:stopsounds
kill @e[type=marker,tag=PlacerClear,tag=Cleared,tag=BasePlaced]
execute as @e[type=armor_stand,tag=Selection,tag=!GameEnd,tag=!EditedSettings,tag=!NoModesInstalled,tag=!NoModesEnabled] run function arenaclear:customizer

#Gamemode handling
function gamemodes:disableerror