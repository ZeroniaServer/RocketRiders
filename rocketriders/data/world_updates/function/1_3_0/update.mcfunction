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

## early stages of nuking Selection armour stand...
execute unless score $realms global matches 1 store success score $realms global if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=realms]
tag @e[limit=1,x=0,type=armor_stand,tag=Selection] remove realms

execute unless score $server_mode global matches 0.. run scoreboard players operation $server_mode global = @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=realms] servermode
execute unless score $match_in_play global matches 0..1 store success score $match_in_play global if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=GameStarted]
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove GameStarted
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] canopyCount matches 1.. store result score $canopy_count global run scoreboard players get @e[x=0,type=armor_stand,tag=Selection,limit=1] canopyCount
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] shieldCount matches 1.. store result score $shield_count global run scoreboard players get @e[x=0,type=armor_stand,tag=Selection,limit=1] shieldCount
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] beeShieldCount matches 1.. store result score $stinging_shield_count global run scoreboard players get @e[x=0,type=armor_stand,tag=Selection,limit=1] beeShieldCount
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

# Updating game rules
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=noTeamBalance] run scoreboard players set $disable_team_balancing config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noTeamBalance
execute if data storage rocketriders:storage {Tags:["noTeamBalance"]} run data modify storage rocketriders:storage config.disable_team_balancing set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"noTeamBalance"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doFireballPortals] run scoreboard players set $snipe_portals config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove doFireballPortals
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove fbPortalsOff
execute if data storage rocketriders:storage {Tags:["doFireballPortals"]} run data modify storage rocketriders:storage config.snipe_portals set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"doFireballPortals"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"fbPortalsOff"}
# Updating modifiers
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Explosive] run scoreboard players set $explosive config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Explosive
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ExplosiveWasOn
execute if data storage rocketriders:storage {Tags:["Explosive"]} run data modify storage rocketriders:storage config.explosive set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"Explosive"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"ExplosiveWasOn"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Residers] run scoreboard players set $rocket_residers config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Residers
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ResidersWasOn
execute if data storage rocketriders:storage {Tags:["Residers"]} run data modify storage rocketriders:storage config.rocket_residers set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"Residers"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"ResidersWasOn"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Molerat] run scoreboard players set $molerat config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Molerat
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove MoleratWasOn
execute if data storage rocketriders:storage {Tags:["Molerat"]} run data modify storage rocketriders:storage config.molerat set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"Molerat"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"MoleratWasOn"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ClutterCollector] run scoreboard players set $clutter_collector config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ClutterCollector
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ClutterCollectorWasOn
execute if data storage rocketriders:storage {Tags:["ClutterCollector"]} run data modify storage rocketriders:storage config.clutter_collector set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"ClutterCollector"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"ClutterCollectorWasOn"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CollisionControl] run scoreboard players set $collision_control config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CollisionControl
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CollisionControlWasOn
execute if data storage rocketriders:storage {Tags:["CollisionControl"]} run data modify storage rocketriders:storage config.collision_control set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"CollisionControl"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"CollisionControlWasOn"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Hardcore] run scoreboard players set $hardcore config 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Hardcore
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Hardcore
execute if data storage rocketriders:storage {Tags:["Hardcore"]} run data modify storage rocketriders:storage config.hardcore set value 1b
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"Hardcore"}
function world_updates:1_3_0/remove_tag_from_storage_list {tag:"HardcoreWasOn"}
# Updating gamemode components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run scoreboard players set $neutral_items gamemode_components 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run scoreboard players set $custom_team_colors gamemode_components 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] as @a[x=0,predicate=custom:on_blue_or_yellow_team,scores={ArmorColor=1..12}] run scoreboard players operation @s custom_team_color = @s ArmorColor
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove customNova
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove customShield
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove custVortParticle
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=noPortal] run scoreboard players set $no_portals gamemode_components 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noPortal
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=settingsLocked] run scoreboard players set $settings_locked gamemode_components 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove settingsLocked
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=customVoid] run scoreboard players set $lower_void gamemode_components 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove customVoid
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=onlyBlue] run scoreboard players set $one_team gamemode_components 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove onlyBlue
# New gamemode components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=crusadeEnabled] run scoreboard players set $crusade_portals gamemode_components 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run scoreboard players set $has_flags gamemode_components 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run scoreboard players set $config_override.hobbits gamemode_components -1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!crusadeEnabled,tag=!ctfEnabled] run scoreboard players set $main_item/shooting_saber gamemode_components 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=crusadeEnabled] run scoreboard players set $main_item/crusade_kit_dependent gamemode_components 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run scoreboard players set $main_item/pickaxe gamemode_components 1

# rename confusingly named tags
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=customSpawn] add customSpawnpointBlockProtection
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=customSpawn] remove customSpawn

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=customObsidian] add customBaseFrames
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=customObsidian] remove customObsidian

##
execute unless entity @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] run function rr_sandbox:install

scoreboard objectives add toggleParticles trigger
scoreboard objectives add toggleTips trigger
scoreboard objectives add toggleParkourTips trigger

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

# Remove removed-in-dev objectives
scoreboard objectives remove last_creeper_damage_origin_uuid.0
scoreboard objectives remove last_creeper_damage_origin_uuid.1
scoreboard objectives remove last_creeper_damage_origin_uuid.2
scoreboard objectives remove last_creeper_damage_origin_uuid.3

# Bye bye, nnhealth o7
scoreboard objectives remove nnhealth
scoreboard objectives remove nnhealth_mod
scoreboard objectives remove nnhealth_max
scoreboard objectives remove nnhealth_real
scoreboard objectives remove nnhealth_old

# Crusade new objectives
scoreboard objectives remove dropRod
scoreboard objectives add dropWand minecraft.dropped:minecraft.writable_book
scoreboard objectives add useWand minecraft.used:minecraft.writable_book

# Reset offline player triggers
execute store result storage rocketriders:temp wiped_settings.MaxItemSec int 1 run scoreboard players get @e[x=0,type=armor_stand,tag=Selection,limit=1] MaxItemSec
execute store result storage rocketriders:temp wiped_settings.daytime int 1 run scoreboard players get @e[x=0,type=armor_stand,tag=Selection,limit=1] daytime
scoreboard players reset * MaxItemSec
scoreboard players reset * daytime
execute store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] MaxItemSec run data get storage rocketriders:temp wiped_settings.MaxItemSec
execute store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] daytime run data get storage rocketriders:temp wiped_settings.daytime
data remove storage rocketriders:temp wiped_settings
scoreboard players reset * LeaveMidgame
scoreboard players reset * VoteServerMode
scoreboard players reset * leaveSpec
scoreboard players reset * displayinfo
scoreboard players reset * toggleTips
scoreboard players reset * toggleParticles
scoreboard players reset * toggleParkourTips

kill @e[x=0,type=area_effect_cloud,tag=tempobshield]

setblock -69 190 78 air
setblock -69 190 78 minecraft:cherry_wall_sign[facing=east,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},front_text:{color:"purple",has_glowing_text:1b,messages:["",{"bold":true,"click_event":{"action":"run_command","command":"/function arenaclear:testvalidclear"},"color":"light_purple","text":"Start"},{"bold":true,"click_event":{"action":"run_command","command":"/execute if entity @e[tag=CancelJoin,limit=1] as @e[tag=Selection,tag=!rngNormal,tag=!rngHeavy,tag=!rngLightning] run tellraw @s {\"text\":\"You must have at least one Missile enabled to start the game\",\"color\":\"red\"}"},"color":"light_purple","text":"Game"},""]},is_waxed:0b}

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
kill @e[type=item_display,tag=join_pad_display]
execute at @e[x=0,type=marker,tag=join_pad.left] run summon item_display ~ ~1 ~ {Tags:["join_pad_display","join_pad_display.left"],billboard:"vertical",Rotation:[0,-15],item_display:"fixed",item:{id:"minecraft:barrier"},brightness:{block:15,sky:15},transformation:{left_rotation:[0,0,0,1],translation:[0,0,0],right_rotation:[0,0,0,1],scale:[0,0,0]}}
execute at @e[x=0,type=marker,tag=join_pad.middle] run summon item_display ~ ~1 ~ {Tags:["join_pad_display","join_pad_display.middle"],billboard:"vertical",Rotation:[0,-15],item_display:"fixed",item:{id:"minecraft:barrier"},brightness:{block:15,sky:15},transformation:{left_rotation:[0,0,0,1],translation:[0,0,0],right_rotation:[0,0,0,1],scale:[0,0,0]}}
execute at @e[x=0,type=marker,tag=join_pad.right] run summon item_display ~ ~1 ~ {Tags:["join_pad_display","join_pad_display.right"],billboard:"vertical",Rotation:[0,-15],item_display:"fixed",item:{id:"minecraft:barrier"},brightness:{block:15,sky:15},transformation:{left_rotation:[0,0,0,1],translation:[0,0,0],right_rotation:[0,0,0,1],scale:[0,0,0]}}
tag @e[x=0,type=marker,tag=join_pad] remove join_pad.show_barrier
tag @e[x=0,type=marker,tag=join_pad] remove join_pad.was_showing_barrier

function lobby:close_modification_room
execute if predicate rr:has_modification_room unless predicate game:game_running unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=EditedSettings] run function lobby:open_modification_room

# Modification Room redesign
setblock -70 190 80 netherite_block strict
setblock -70 190 76 netherite_block strict
setblock -69 190 80 jungle_wall_sign[facing=east]{front_text:{color:"black",has_glowing_text:0b,messages:["",{bold:1b,click_event:{action:"run_command",command:"execute as @e[type=armor_stand,tag=Selection] run function arenaclear:globaldefaults"},color:"#FF0044",text:"Restore Global"},{bold:1b,click_event:{action:"run_command",command:"playsound ui.button.click master @a ~ ~ ~ 1 1"},color:"#FF0044",text:"Defaults"},""]},is_waxed:0b} strict
setblock -69 190 76 birch_wall_sign[facing=east] strict
setblock -71 192 78 yellow_stained_glass strict
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1

# Relocate parkour area, and light up all of the lobby
execute store success score $post_lighting_fix var if block 36 184 -6 bedrock
execute if score $post_lighting_fix var matches 0 run function world_updates:1_3_0/move_parkour_area
execute if score $post_lighting_fix var matches 0 run fill -111 185 -5 24 247 80 light[level=15] replace air strict
execute if score $post_lighting_fix var matches 0 run fill -111 185 81 24 247 161 light[level=15] replace air strict
fill -57 200 84 -70 201 72 air replace light strict

# Black box
kill @e[x=0,tag=parkour.black_box]
summon text_display 37.0 187.0 -5.0 {Tags:["parkour","parkour.black_box"],text:{sprite:"minecraft:block/black_concrete",color:"#000000"},transformation:{left_rotation:[0,0,0,1],translation:[21.75,-160,0],right_rotation:[0,0,0,1],scale:[290,640,1]},Rotation:[0,-90],background:0}
summon text_display 37.0 219.0 123.0 {Tags:["parkour","parkour.black_box"],text:{sprite:"minecraft:block/black_concrete",color:"#000000"},transformation:{left_rotation:[0,0,0,1],translation:[21.75,-160,0],right_rotation:[0,0,0,1],scale:[290,640,1]},Rotation:[0,90],background:0}
summon text_display 37.0 219.0 -5.0 {Tags:["parkour","parkour.black_box"],text:{sprite:"minecraft:block/black_concrete",color:"#000000"},transformation:{left_rotation:[0,0,0,1],translation:[21.75,-40,0],right_rotation:[0,0,0,1],scale:[290,160,1]},Rotation:[0,0],background:0}
summon text_display 95.0 219.0 123.0 {Tags:["parkour","parkour.black_box"],text:{sprite:"minecraft:block/black_concrete",color:"#000000"},transformation:{left_rotation:[0,0,0,1],translation:[21.75,-40,0],right_rotation:[0,0,0,1],scale:[290,160,1]},Rotation:[180,0],background:0}
summon text_display 95.0 219.0 -5.0 {Tags:["parkour","parkour.black_box"],text:{sprite:"minecraft:block/black_concrete",color:"#000000"},transformation:{left_rotation:[0,0,0,1],translation:[48,-40,0],right_rotation:[0,0,0,1],scale:[640,160,1]},Rotation:[90,0],background:0}
summon text_display 37.0 219.0 123.0 {Tags:["parkour","parkour.black_box"],text:{sprite:"minecraft:block/black_concrete",color:"#000000"},transformation:{left_rotation:[0,0,0,1],translation:[48,-40,0],right_rotation:[0,0,0,1],scale:[640,160,1]},Rotation:[-90,0],background:0}

# Spectator pregame area
fill -101 212 59 -89 212 97 minecraft:barrier strict

tellraw @a[x=0] {"text":"Successfully applied updates from Rocket Riders 1.3.0","color":"green"}
scoreboard players set $WorldVersion CmdData 1304
