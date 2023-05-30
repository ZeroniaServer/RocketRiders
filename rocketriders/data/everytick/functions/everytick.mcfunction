####################################
## EVERYTICK: Where everything in ##
## the core RR Datapack runs from ##
####################################

#Server mode
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={servermode=0},tag=!SMCustom] remove SMActive
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={servermode=1..}] add SMActive
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=ServerModeVoting] if entity @a[predicate=custom:indimension] run function servermode:loop
scoreboard players reset @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!ServerModeVoting] VoteServerMode
execute unless entity @a[predicate=custom:indimension,team=Lobby] run scoreboard players reset @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=ServerModeVoting] VoteServerMode
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={servermode=1..}] unless entity @a[predicate=custom:indimension] run function game:forcestop
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={servermode=0},tag=SMCustom] unless entity @a[predicate=custom:indimension] run scoreboard players set @s RepeatSettings 0
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={servermode=0},tag=SMCustom] unless entity @a[predicate=custom:indimension] run function game:forcestop
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={servermode=0},tag=SMCustom] unless entity @a[predicate=custom:indimension] run function arenaclear:globaldefaults
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=ServerModeVoting] run scoreboard players reset @a[predicate=custom:indimension] VoteServerMode
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=ServerModeVoting] run kill @e[predicate=custom:indimension,type=marker,tag=ServerMode]
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=SMSwitch] run scoreboard players add $smswitch CmdData 1
execute if score $smswitch CmdData matches 5.. run tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=SMSwitch] remove SMSwitch
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] unless entity @s[tag=SMSwitch] run scoreboard players reset $smswitch CmdData

#Player tags for plugin interaction
tag @a[predicate=custom:indimension,team=Yellow] add OnTeam
tag @a[predicate=custom:indimension,team=Blue] add OnTeam
tag @a[predicate=custom:indimension,team=Spectator] add OnTeam
tag @a[predicate=custom:indimension,team=Lobby] remove OnTeam

#Handling new/lobby players and miscellaneous stuff
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function everytick:new_player
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function everytick:leave_game
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] in minecraft:overworld run function everytick:general_settings_or_hotfixes

#Team/inventory counting and game-related effects
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function everytick:team_count
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled] run function game:gamestart
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=GameStarted,tag=!NoModesInstalled,tag=!NoModesEnabled] at @s run function game:ingame
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SMActive] run function everytick:regen_system
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=SMActive] run gamerule naturalRegeneration true

#Night vision/saturation and more lobby functionality
effect give @a[predicate=custom:indimension,team=Lobby] night_vision infinite 100 true
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!Sonar] run effect give @a[predicate=custom:indimension,team=Spectator] night_vision infinite 100 true
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SMActive] run effect give @a[predicate=custom:indimension] saturation infinite 0 true
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=SMActive] run effect clear @a[predicate=custom:indimension] saturation
execute as @a[predicate=custom:indimension,team=Lobby,scores={nnhealth_max=6}] run function modifiers:hardcorereset
function lobby:bookwarp
scoreboard players enable @a[predicate=custom:indimension,team=Lobby] displayinfo
scoreboard players enable @a[predicate=custom:indimension,team=Developer] displayinfo
execute as @a[predicate=custom:indimension,scores={displayinfo=1..}] at @s run function lobby:displayinfo
execute as @a[predicate=custom:indimension,team=Lobby] run function everytick:score_reset
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=GameStarted] run function lobby:credits/cycle
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SMActive] run function lobby:parkour/parkour
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=SMActive] run function lobby:parkour/parkourserver
stopsound @a[predicate=custom:indimension] ambient minecraft:ambient.cave

#NNHealth (credit: NOPEname)
execute if entity @a[predicate=custom:indimension,tag=!nnhealth_init] run gamerule showDeathMessages false
execute as @a[predicate=custom:indimension,tag=!nnhealth_init] run scoreboard players set @s nnhealth_max 20
execute as @a[predicate=custom:indimension,tag=!nnhealth_init] run scoreboard players set @s nnhealth_mod 20
execute as @a[predicate=custom:indimension,tag=!nnhealth_init] run scoreboard players set @s nnhealth 20
execute as @a[predicate=custom:indimension,tag=!nnhealth_init] run kill @s
execute if entity @a[predicate=custom:indimension,tag=!nnhealth_init] run gamerule showDeathMessages true
tag @a[predicate=custom:indimension,tag=!nnhealth_init] add nnhealth_init
function nnhealth:tick

#hotfix for players with 0 max health
scoreboard players add @a[predicate=custom:indimension] nnhealth_max 0
tag @a[predicate=custom:indimension,tag=nnhealth_init,scores={nnhealth_max=0}] remove nnhealth_init

#Handling portals/roof with players/utilities
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function everytick:cancel_utility
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={servermode=0},tag=!SMCustom] run function everytick:player_portal
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={servermode=0,PortalDeco=4},tag=SMCustom] run function everytick:player_portal

#Player void
execute as @a[predicate=custom:indimension] unless entity @s[team=!Yellow,team=!Blue,team=!Spectator] at @s if entity @s[y=-2000,dy=1980] unless entity @s[scores={ThrowPlat=1..}] run function game:void
effect give @s[scores={voidNoFallCount=0}] slow_falling 1 1 true
scoreboard players add @s[scores={voidNoFallCount=0..1}] voidNoFallCount 1
effect clear @s[scores={voidNoFallCount=2}] slow_falling
scoreboard players reset @s[scores={voidNoFallCount=2}] voidNoFallCount

#Arrow pickup
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!GameEnd,tag=!customArrowPickup] if entity @e[predicate=custom:indimension,type=arrow] run function everytick:arrow_pickup

#Game ending and arena clearing
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=GameEnd,tag=!NoModesInstalled] run function game:gameend
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=SuddenDeath,tag=!SuddenDeathCustom,tag=!NoModesInstalled,tag=!NoModesEnabled] run function game:suddendeath
# execute if entity @e[predicate=custom:indimension,type=marker,tag=ArenaClearChecker] as @a[predicate=custom:indimension] run function everytick:stopsounds
execute if entity @e[predicate=custom:indimension,type=marker,tag=ArenaClearChecker,tag=!Cleared,tag=!BasePlaced] run scoreboard players add $acdelay CmdData 1
execute if score $acdelay CmdData matches 7.. run tellraw @a[predicate=custom:indimension] {"text":"Warning: Force clearing arena since previous gamemode is unknown.","color":"red"}
execute if score $acdelay CmdData matches 7.. run tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] add normalLast
execute if score $acdelay CmdData matches 7.. run scoreboard players reset $acdelay CmdData
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared,tag=BasePlaced] run scoreboard players reset $acdelay CmdData
kill @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared,tag=BasePlaced]
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!GameEnd,tag=!EditedSettings,tag=!NoModesInstalled,tag=!NoModesEnabled] run function arenaclear:customizer
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshsignsquery
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=JustCleared] run scoreboard players add $justcleared CmdData 1
execute if score $justcleared CmdData matches 4.. run tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=JustCleared] remove JustCleared
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] unless entity @s[tag=JustCleared] run scoreboard players reset $justcleared CmdData

#Gamemode/reload handling
execute if loaded -43 210 78 run function gamemodes:disableerror
execute if score $reloaded CmdData matches 1..100 run scoreboard players add $reloaded CmdData 1
execute if score $reloaded CmdData matches 101 run scoreboard players reset $reloaded