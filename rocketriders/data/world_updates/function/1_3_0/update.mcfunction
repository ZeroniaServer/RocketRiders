gamerule commandModificationBlockLimit 1000000

# Force stop the game
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=GameStarted] run function world_updates:1_3_0/instant_legacy_force_stop

# Ensure that old game entities are killed
kill @e[x=0,type=marker,tag=BluePlatform]
kill @e[x=0,type=marker,tag=YellowPlatform]
kill @e[x=0,type=ender_pearl,tag=BluePlat]
kill @e[x=0,type=ender_pearl,tag=YellowPlat]
kill @e[x=0,type=snowball,tag=BlueShield]
kill @e[x=0,type=snowball,tag=YellowShield]
kill @e[x=0,type=marker,tag=PlaceBlueShield]
kill @e[x=0,type=marker,tag=PlaceYellowShield]
kill @e[x=0,type=egg,tag=BlueVortex]
kill @e[x=0,type=egg,tag=YellowVortex]
kill @e[x=0,type=armor_stand,tag=VortexItemBlue]
kill @e[x=0,type=armor_stand,tag=VortexItemYellow]
kill @e[x=0,type=marker,tag=VortexBlue]
kill @e[x=0,type=marker,tag=VortexYellow]
kill @e[x=0,type=egg,tag=ICBM]
kill @e[x=0,type=marker,tag=ICBMtracker]
kill @e[x=0,type=snowball,tag=BeeShieldDisplay]
kill @e[x=0,type=marker,tag=animBshield]
kill @e[x=0,type=marker,tag=BBeeShieldDisplay]
kill @e[x=0,type=marker,tag=YBeeShieldDisplay]

# For item copy operations
setblock 0 184 -16 yellow_shulker_box{lock:{count:-1}} strict

scoreboard objectives add constant dummy
scoreboard players reset 0 FlagScore
scoreboard players reset 2 MaxItemSec
scoreboard players reset $2 parkourDeci
scoreboard players reset $10 finalParkourTime
scoreboard players reset $10 XP
scoreboard players reset 16 CmdData
scoreboard players reset 20 FlagScore
scoreboard players reset 20 MaxItemSec
scoreboard players reset 29 FlagScore
scoreboard players reset 40 FlagScore
scoreboard players reset $50 XP
scoreboard players reset $60 finalParkourTime
scoreboard players reset 64 CmdData
scoreboard players reset $100 finalParkourTime
scoreboard players reset $100 XP
scoreboard players reset $600 XP
scoreboard players reset $1000 Unable
scoreboard players reset $1300 XP
scoreboard players reset 24000 daytime

scoreboard objectives add global dummy
scoreboard objectives add var dummy
scoreboard objectives add config dummy
scoreboard objectives add gamemode_components dummy
scoreboard objectives add custom_team_color dummy

team add rocketriders.sort_000.blue "Blue"
team add rocketriders.sort_001.yellow "Yellow"
team add rocketriders.sort_100.spectator "Spectator"
team add rocketriders.sort_200.lobby "Lobby"
team add rocketriders.sort_999.developer "Developer"
team join rocketriders.sort_000.blue @e[x=0,team=Blue]
team join rocketriders.sort_001.yellow @e[x=0,team=Yellow]
team join rocketriders.sort_100.spectator @e[x=0,team=Spectator]
team join rocketriders.sort_200.lobby @e[x=0,team=Lobby]
team remove Lobby
team remove Blue
team remove Yellow
team remove Spectator
team remove Developer

## early stages of nuking Selection armour stand...
execute unless score $realms global matches 1 store success score $realms global if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=realms]
tag @e[limit=1,x=0,type=armor_stand,tag=Selection] remove realms

execute unless score $server_mode global matches 0.. run scoreboard players operation $server_mode global = @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=realms] servermode
execute unless score $match_in_play global matches 0..1 store success score $match_in_play global if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=GameStarted]
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove GameStarted
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove runvortex
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove vortexOverride
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove runbeeshields
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove MoleratStop
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove moleratConfirm
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove WasMolerat
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=WasHardcore] run scoreboard players set $was_hardcore_facade global 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove WasHardcore
execute store result score $best_parkour_time global run scoreboard players get @e[x=0,type=area_effect_cloud,tag=ParkourTime,limit=1] bestParkourTime
execute if score $best_parkour_time global matches 0 run scoreboard players set $best_parkour_time global 2147483647
scoreboard players reset $dust CmdData
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] bluesCount matches 1.. store result score $blue_team_count global run scoreboard players get @e[x=0,type=armor_stand,tag=Selection,limit=1] bluesCount
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] yellowsCount matches 1.. store result score $yellow_team_count global run scoreboard players get @e[x=0,type=armor_stand,tag=Selection,limit=1] yellowsCount
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] origBCount matches 1.. store result score $initial_blue_team_count global run scoreboard players get @e[x=0,type=armor_stand,tag=Selection,limit=1] origBCount
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] origYCount matches 1.. store result score $initial_yellow_team_count global run scoreboard players get @e[x=0,type=armor_stand,tag=Selection,limit=1] origYCount

tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove decosLocked
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove portalDecosOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove tyingOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove customNova
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove customShield
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove custVortParticle
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noPortal
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove settingsLocked
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove customVoid
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove onlyBlue
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ChaosOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NinjaJumpOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SpamClickOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SplashStreamsOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SurpriseEggOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove MinuteOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SonarOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove NoFallOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove InstamineOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove WindDownOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove featheredOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngAnt
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngArrows
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngAux
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngBlade
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngCanopy
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngCata
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngCitadel
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngEguard
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngFireball
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngGemi
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngHeavy
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngHur
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngJbuster
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngLift
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngLightning
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngNormal
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngNova
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngNull
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngObshield
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngRift
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngShield
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngSlash
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngSplash
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngThun
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngToma
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngUtil
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngVortex
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove rngWar
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove respawnFlag
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove portalOverride
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove leaveBSpawn
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove leaveYSpawn
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove customBaseFrames

# Updating game rules, modifiers, and world options
function world_updates:1_3_0/migrate_configs
data remove storage rocketriders:storage Tags
data remove storage rocketriders:storage config

# Make sure new gamemode components system is set correctly for the currently enabled game mode
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run function rr_chase:enable
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=crusadeEnabled] run function rr_crusade:enable
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run function rr_ctf:enable
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=duelEnabled] run function rr_duel:enable
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=normalEnabled] run function rr_normal:enable
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=powerupEnabled] run function rr_powerup:enable
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=sandboxEnabled] run function rr_sandbox:enable
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run function rr_swap:enable

# rename confusingly named tags
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=customSpawn] add customSpawnpointBlockProtection
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=customSpawn] remove customSpawn

##
execute unless entity @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] run function rr_sandbox:install

scoreboard objectives add toggleParticles trigger
scoreboard objectives add toggleTips trigger
scoreboard objectives add toggleParkourTips trigger
scoreboard objectives add toggleHotbarAutoFill trigger

# Remove unused objectives
scoreboard objectives remove servermode
scoreboard objectives remove disableTips
scoreboard objectives remove hideParkourTips
scoreboard objectives remove splashOwnerUUID
scoreboard objectives remove HasFirework
scoreboard objectives remove death
scoreboard objectives remove PlayerKills
scoreboard objectives remove PlayerDeaths
scoreboard objectives remove canopyCount
scoreboard objectives remove canopyExtraLogs
scoreboard objectives remove pearlOwnerUUID
scoreboard objectives remove shieldCount
scoreboard objectives remove shieldtest
scoreboard objectives remove shieldtest2
scoreboard objectives remove ThrowShield
scoreboard objectives remove voidNoFallCount
scoreboard objectives remove VortexID
scoreboard objectives remove vortexBoom
scoreboard objectives remove vortexChain
scoreboard objectives remove vortextimer
scoreboard objectives remove ICBMID
scoreboard objectives remove ICBMtime
scoreboard objectives remove BeeShieldTime
scoreboard objectives remove beeShieldCount
scoreboard objectives remove NovaShot
scoreboard objectives remove NovaNear
scoreboard objectives remove novatimer
scoreboard objectives remove novattach
scoreboard objectives remove moleratConfirm
scoreboard objectives remove ArmorColor
scoreboard objectives remove Clustertime
scoreboard objectives remove infinity
scoreboard objectives remove xp_mult
scoreboard objectives remove xp_mod
scoreboard objectives remove xp_div
scoreboard objectives remove gametime
scoreboard objectives remove bluesCount
scoreboard objectives remove yellowsCount
scoreboard objectives remove origBCount
scoreboard objectives remove origYCount
scoreboard objectives remove teamDiff
scoreboard objectives remove largerTeamCount
scoreboard objectives remove smallerTeamCount
scoreboard objectives remove largerTeam
scoreboard objectives remove smallerTeam
scoreboard objectives remove LaunchCrossbow
scoreboard objectives remove respawn
scoreboard objectives remove bMissileCount
scoreboard objectives remove yMissileCount
scoreboard objectives remove splashCount
scoreboard objectives remove shieldCount
scoreboard objectives remove TopDeco
scoreboard objectives remove TopCorner
scoreboard objectives remove MiddleDeco
scoreboard objectives remove BottomDeco
scoreboard objectives remove PortalDeco
scoreboard objectives remove RepeatSettings
scoreboard objectives remove useWand
scoreboard objectives remove dropCompass
scoreboard objectives remove dropClock
scoreboard objectives remove dropBarrier
scoreboard objectives remove dropRod
scoreboard objectives remove dropBow
scoreboard objectives remove dropWand
scoreboard objectives remove dropSword
scoreboard objectives remove dropPickaxe
scoreboard objectives remove dropBook

# Remove removed-in-dev objectives
scoreboard objectives remove last_creeper_damage_origin_uuid.0
scoreboard objectives remove last_creeper_damage_origin_uuid.1
scoreboard objectives remove last_creeper_damage_origin_uuid.2
scoreboard objectives remove last_creeper_damage_origin_uuid.3

scoreboard objectives add event.player_joins_overworld.state custom:leave_game
execute as @a if score @s event.player_joins_world.state = @s event.player_joins_world.state run scoreboard players operation @s event.player_joins_overworld.state = @s event.player_joins_world.state
scoreboard objectives remove event.player_joins_world.state

# Bye bye, nnhealth o7
scoreboard objectives remove nnhealth
scoreboard objectives remove nnhealth_mod
scoreboard objectives remove nnhealth_max
scoreboard objectives remove nnhealth_real
scoreboard objectives remove nnhealth_old

# Reset offline player triggers
scoreboard players reset * LeaveMidgame
scoreboard players reset * VoteServerMode
scoreboard players reset * leaveSpec
scoreboard players reset * displayinfo
scoreboard players reset * toggleTips
scoreboard players reset * toggleParticles
scoreboard players reset * toggleParkourTips
scoreboard players reset * toggleHotbarAutoFill

scoreboard objectives remove MaxItemSec
scoreboard objectives add set_item_delay trigger
scoreboard objectives remove daytime
scoreboard objectives add set_time_of_day trigger


kill @e[x=0,type=area_effect_cloud,tag=tempobshield]

kill @e[x=0,type=marker,tag=LeaveSpec]
kill @e[x=0,type=marker,tag=BlueSpawnZone]
kill @e[x=0,type=marker,tag=YellowSpawnZone]

setblock -69 190 78 air
setblock -69 190 78 minecraft:cherry_wall_sign[facing=east,waterlogged=false]{front_text:{color:"purple",has_glowing_text:true,messages:["",{bold:true,click_event:{action:"run_command",command:"function arenaclear:testvalidclear"},color:"light_purple",text:"Start"},{bold:true,color:"light_purple",text:"Game"},""]},is_waxed:true}

setblock -47 211 81 air
setblock -47 211 81 minecraft:player_head[powered=false,rotation=3]{profile:{id:[I;1909544700,370756089,-1576344790,1695827449]}}
setblock -47 211 75 air
setblock -47 211 75 minecraft:player_head[powered=false,rotation=5]{profile:{id:[I;1909544700,370756089,-1576344790,1695827449]}}
kill @e[x=0,type=interaction,tag=ZeroniaCredit]
summon interaction -47 211 81 {width:0.75,height:0.75,response:1b,Tags:["ZeroniaCredit1"]}
summon interaction -47 211 75 {width:0.75,height:0.75,response:1b,Tags:["ZeroniaCredit2"]}
data modify entity 49548abb-1add-4dc9-bef0-a23101ae54d1 CustomName set value {"text":"Game Rules","color":"yellow"}
data modify entity cdf45025-712b-428c-99d5-5b9ffe760c26 CustomName set value {"text":"Item Categories","color":"aqua"}
data modify entity 518e79cf-2fd6-4b68-8fdf-02967838e7e5 CustomName set value {"text":"Jump to go back!","color":"gray"}
fill -76 200 92 -70 203 86 bamboo_fence replace birch_fence
fill -76 201 92 -70 203 86 bamboo_slab[type=double] replace birch_slab[type=double]
fill -76 201 92 -70 203 86 bamboo_slab[type=top] replace birch_slab[type=top]
fill -76 201 92 -70 203 86 bamboo_slab[type=bottom] replace birch_slab[type=bottom]
fill -109 229 106 -109 241 50 bamboo_planks replace birch_planks
fill -109 229 106 -109 241 50 bamboo_slab[type=bottom] replace birch_slab[type=bottom]
fill -109 229 106 -109 241 50 bamboo_slab[type=top] replace birch_slab[type=top]
fill -109 229 106 -109 241 50 bamboo_stairs[facing=south,half=top] replace birch_stairs[facing=south,half=top]
fill -109 229 106 -109 241 50 bamboo_stairs[facing=south,half=bottom] replace birch_stairs[facing=south,half=bottom]
fill -109 229 106 -109 241 50 bamboo_stairs[facing=north,half=top] replace birch_stairs[facing=north,half=top]
fill -109 229 106 -109 241 50 bamboo_stairs[facing=north,half=bottom] replace birch_stairs[facing=north,half=bottom]

item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.chest with leather_chestplate[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.legs with leather_leggings[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.feet with leather_boots[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]

kill @e[x=0,type=marker,tag=VortexDummy]
kill @e[x=0,type=armor_stand,tag=VortexItemDummy]
kill @e[x=0,predicate=entities:type/vortex_decoy]
execute positioned -69.5 206.5 48.5 run function entities:vortex_decoy/summon

tag @e[x=0,type=marker,tag=bluejoinpad] add join_pad
tag @e[x=0,type=marker,tag=bluejoinpad] add join_pad.blue
tag @e[x=0,type=marker,tag=bluejoinpad] remove bluejoinpad
tag @e[x=0,type=marker,tag=specjoinpad] add join_pad
tag @e[x=0,type=marker,tag=specjoinpad] add join_pad.spectator
tag @e[x=0,type=marker,tag=specjoinpad] remove specjoinpad
tag @e[x=0,type=marker,tag=yellowjoinpad] add join_pad
tag @e[x=0,type=marker,tag=yellowjoinpad] add join_pad.yellow
tag @e[x=0,type=marker,tag=yellowjoinpad] remove yellowjoinpad
tag @e[x=-79.47,y=205.00,z=94.46,distance=..1,type=marker,tag=join_pad] add join_pad.left
tag @e[x=-82.50,y=202.00,z=78.50,distance=..1,type=marker,tag=join_pad] add join_pad.middle
tag @e[x=-79.49,y=205.00,z=62.44,distance=..1,type=marker,tag=join_pad] add join_pad.right
tp @e[x=0,type=marker,tag=join_pad.left] -79.5 205.0 94.5
tp @e[x=0,type=marker,tag=join_pad.right] -79.5 205.0 62.5
kill @e[x=0,tag=join_pad_display]
execute at @e[x=0,type=marker,tag=join_pad.left] run summon text_display ~ ~1 ~ {Tags:["join_pad_display","join_pad_display.left"],text:{sprite:"minecraft:item/barrier",color:"#EFEFEF"},width:1,height:1,transformation:{left_rotation:[0,0,0,1],translation:[-0.1875,-1.125,0],right_rotation:[0,0,0,1],scale:[7.5,7.5,0]},billboard:"center",background:0}
execute at @e[x=0,type=marker,tag=join_pad.middle] run summon text_display ~ ~1 ~ {Tags:["join_pad_display","join_pad_display.middle"],text:{sprite:"minecraft:item/barrier",color:"#EFEFEF"},width:1,height:1,transformation:{left_rotation:[0,0,0,1],translation:[-0.1875,-1.125,0],right_rotation:[0,0,0,1],scale:[7.5,7.5,0]},billboard:"center",background:0}
execute at @e[x=0,type=marker,tag=join_pad.right] run summon text_display ~ ~1 ~ {Tags:["join_pad_display","join_pad_display.right"],text:{sprite:"minecraft:item/barrier",color:"#EFEFEF"},width:1,height:1,transformation:{left_rotation:[0,0,0,1],translation:[-0.1875,-1.125,0],right_rotation:[0,0,0,1],scale:[7.5,7.5,0]},billboard:"center",background:0}
tag @e[x=0,type=marker,tag=join_pad] remove join_pad.show_barrier
tag @e[x=0,type=marker,tag=join_pad] remove join_pad.was_showing_barrier

kill @e[x=0,type=block_display,tag=LobbyArrowDisplay]

fill -70 201 72 -57 201 84 air replace minecraft:barrier strict
function lobby:close_modification_room
execute if predicate rr:has_modification_room unless predicate game:game_running unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=EditedSettings] run function lobby:open_modification_room

# Modification Room redesign
setblock -70 190 80 netherite_block strict
setblock -70 190 76 netherite_block strict
setblock -69 190 80 jungle_wall_sign[facing=east]{front_text:{color:"black",has_glowing_text:0b,messages:["",{bold:1b,click_event:{action:"run_command",command:"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:globaldefaults"},color:"#FF0044",text:"Restore Global"},{bold:1b,click_event:{action:"run_command",command:"playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"},color:"#FF0044",text:"Defaults"},""]},is_waxed:0b} strict
setblock -69 190 76 birch_wall_sign[facing=east] strict
setblock -71 192 78 yellow_stained_glass strict
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1

# Relocate parkour area, and light up all of the lobby
execute store success score $post_lighting_fix var if block 36 184 -6 bedrock
execute if score $post_lighting_fix var matches 0 run function world_updates:1_3_0/move_parkour_area
execute if score $post_lighting_fix var matches 0 run fill -111 185 -5 24 247 80 light[level=15] replace air strict
execute if score $post_lighting_fix var matches 0 run fill -111 185 81 24 247 161 light[level=15] replace air strict
fill -57 200 84 -70 201 72 air replace light strict

# Spectator pregame area
fill -101 212 59 -89 212 97 minecraft:barrier strict

# Join pad lighting blocks
setblock -83 208 78 minecraft:pearlescent_froglight[axis=y]
execute unless predicate game:gamemode_components/red_for_blue run setblock -80 211 62 minecraft:sea_lantern
execute if predicate game:gamemode_components/red_for_blue run setblock -80 211 62 minecraft:shroomlight
execute unless predicate game:gamemode_components/one_team run setblock -80 211 94 minecraft:ochre_froglight[axis=y]
execute if predicate game:gamemode_components/one_team unless predicate game:gamemode_components/red_for_blue run setblock -80 211 94 minecraft:sea_lantern
execute if predicate game:gamemode_components/one_team if predicate game:gamemode_components/red_for_blue run setblock -80 211 94 minecraft:shroomlight

# Remove Marker tag from credit armour stands
execute as @e[x=0,type=armor_stand,tag=creditsAS] run data merge entity @s {Marker:false,DisabledSlots:4144959,Invulnerable:true,NoGravity:true}

# Update developer credits
function lobby:credits/devinitialize

# Clear out arenaclear storages
data remove storage rocketriders:bmissilepos x
data remove storage rocketriders:bmissilepos y
data remove storage rocketriders:bmissilepos z
data remove storage rocketriders:ymissilepos x
data remove storage rocketriders:ymissilepos y
data remove storage rocketriders:ymissilepos z
data remove storage rocketriders:splashpos x
data remove storage rocketriders:splashpos y
data remove storage rocketriders:splashpos z
data remove storage rocketriders:shieldpos x
data remove storage rocketriders:shieldpos y
data remove storage rocketriders:shieldpos z
data remove storage rocketriders:canopypos x
data remove storage rocketriders:canopypos y
data remove storage rocketriders:canopypos z
data remove storage rr_powerups:beeshieldpos x
data remove storage rr_powerups:beeshieldpos y
data remove storage rr_powerups:beeshieldpos z
data remove storage rocketriders:arena_clear building_block_subchunks

tellraw @a[x=0] {"text":"Successfully applied updates from Rocket Riders 1.3.0","color":"green"}
scoreboard players set $WorldVersion CmdData 1304
