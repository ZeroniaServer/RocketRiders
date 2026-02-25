#######################################################
## GENERAL SETTINGS OR HOTFIXES: Where miscellaneous ##
## things happen that don't really fit anywhere else ##
#######################################################

#Player UUID storage
execute as @a[x=0] store result score @s playerUUID run data get entity @s UUID[0]

#Missile Display Area
function lobby:missiledisplay/placedisp

#Tutorial advancements
execute if predicate rr:has_tutorial run function 2811iaj1:advantriggers

#Toggle particles
scoreboard players enable @a[x=0] toggle_particles
tellraw @a[x=0,scores={toggle_particles=1..},tag=!hideParticles] [{"text":"Disabled particles from Rocket Riders gameplay elements.","color":"red"}]
tellraw @a[x=0,scores={toggle_particles=1..},tag=hideParticles] [{"text":"Enabled particles from Rocket Riders gameplay elements.","color":"green"}]
tag @a[x=0,scores={toggle_particles=1..},tag=hideParticles] add hidParticles
tag @a[x=0,scores={toggle_particles=1..},tag=hideParticles] remove hideParticles
tag @a[x=0,scores={toggle_particles=1..},tag=!hideParticles,tag=!hidParticles] add hideParticles
tag @a[x=0,scores={toggle_particles=1..},tag=hidParticles] remove hidParticles
execute as @a[x=0,scores={toggle_particles=1..}] run function custom:player_action/playerdata/save
scoreboard players set @a[x=0] toggle_particles 0

#Toggle hotbar auto-fill
scoreboard players enable @a[x=0] toggle_auto_fill_hotbar
tag @a[x=0,scores={toggle_auto_fill_hotbar=1..},tag=do_hotbar_auto_fill] add disabled_do_hotbar_auto_fill
tag @a[x=0,scores={toggle_auto_fill_hotbar=1..},tag=do_hotbar_auto_fill] remove do_hotbar_auto_fill
tag @a[x=0,scores={toggle_auto_fill_hotbar=1..},tag=!do_hotbar_auto_fill,tag=!disabled_do_hotbar_auto_fill] add do_hotbar_auto_fill
tag @a[x=0,scores={toggle_auto_fill_hotbar=1..},tag=disabled_do_hotbar_auto_fill] remove disabled_do_hotbar_auto_fill
tellraw @a[x=0,scores={toggle_auto_fill_hotbar=1..},tag=!do_hotbar_auto_fill] [{"text":"Disabled automatic hotbar filling.","color":"red"}]
tellraw @a[x=0,scores={toggle_auto_fill_hotbar=1..},tag=do_hotbar_auto_fill] [{"text":"Enabled automatic hotbar filling.","color":"green"}]
execute as @a[x=0,scores={toggle_auto_fill_hotbar=1..}] run function custom:player_action/playerdata/save
scoreboard players set @a[x=0] toggle_auto_fill_hotbar 0

#Toggle ingame tips
scoreboard players add @a[x=0] GamesPlayed 0
scoreboard players enable @a[x=0] toggle_ingame_tips
tellraw @a[x=0,scores={toggle_ingame_tips=1..},tag=!hideTips] [{"text":"You will no longer see ingame tips.","color":"red"}]
tellraw @a[x=0,scores={toggle_ingame_tips=1..},tag=hideTips] [{"text":"You will now see ingame tips.","color":"green"}]
tag @a[x=0,scores={toggle_ingame_tips=1..},tag=hideTips] add hidTips
tag @a[x=0,scores={toggle_ingame_tips=1..},tag=hideTips] remove hideTips
tag @a[x=0,scores={toggle_ingame_tips=1..},tag=!hideTips,tag=!hidTips] add hideTips
tag @a[x=0,scores={toggle_ingame_tips=1..},tag=hidTips] remove hidTips
execute as @a[x=0,scores={toggle_ingame_tips=1..}] run function custom:player_action/playerdata/save
scoreboard players set @a[x=0] toggle_ingame_tips 0

# change_default_spell trigger
dialog show @a[x=0,scores={change_default_spell=1..}] {type:"minecraft:multi_action",title:"Default Spell Book",exit_action:{label:{translate:"gui.cancel"}},columns:1,body:[{type:"minecraft:plain_message",contents:"Hover each option to see what that spell does.",width:400}],actions:[\
  {action:{type:"minecraft:run_command",command:"trigger change_default_spell set -1"},label:{bold:true,color:"gold",text:"Fire"},tooltip:"Shoots 3 small fireballs that burn enemies and ignite nearby TNT blocks on impact."},\
  {action:{type:"minecraft:run_command",command:"trigger change_default_spell set -2"},label:{bold:true,color:"green",text:"Health"},tooltip:"Creates a large cloud around you that heals yourself and any player in your team. The cloud shrinks over time, lasting for 10 seconds."},\
  {action:{type:"minecraft:run_command",command:"trigger change_default_spell set -3"},label:{bold:true,color:"dark_gray",text:"Damage"},tooltip:"Shoots a spell cloud that veers towards the nearest enemy and gives them the Wither effect. If it hits an enemy, it will ricochet towards another nearby enemy.\n\nUse this to apply 3-4 hearts of damage to enemies in hard to reach places."},\
  {action:{type:"minecraft:run_command",command:"trigger change_default_spell set -4"},label:{bold:true,color:"aqua",text:"Wind"},tooltip:"Shoots 3 wind charges that blast away players (with prejudice against enemies) and primed TNT on impact, and deflect projectiles.\n\nUse this to boost yourself upwards, knock enemies into the void, deflect enemies' projectiles, and stop missiles from exploding by pushing away the TNT before it explodes."},\
]}
tellraw @a[x=0,scores={change_default_spell=-1}] {color:"green",text:"You will now receive Fire spells in Crusade mode."}
scoreboard players reset @a[x=0,scores={change_default_spell=-1}] default_spell
tellraw @a[x=0,scores={change_default_spell=-2}] {color:"green",text:"You will now receive Health spells in Crusade mode."}
scoreboard players set @a[x=0,scores={change_default_spell=-2}] default_spell 1
tellraw @a[x=0,scores={change_default_spell=-3}] {color:"green",text:"You will now receive Damage spells in Crusade mode."}
scoreboard players set @a[x=0,scores={change_default_spell=-3}] default_spell 2
tellraw @a[x=0,scores={change_default_spell=-4}] {color:"green",text:"You will now receive Wind spells in Crusade mode."}
scoreboard players set @a[x=0,scores={change_default_spell=-4}] default_spell 3
execute as @a[x=0,scores={change_default_spell=-4..-1}] run function custom:player_action/playerdata/save
tellraw @a[x=0,scores={change_default_spell=..-5}] {color:"red",text:"That is not a valid option"}
scoreboard players reset @a change_default_spell
execute if entity @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_crusade] run scoreboard players enable @a[x=0] change_default_spell

# change_starting_crusade_kit trigger
dialog show @a[x=0,scores={change_starting_crusade_kit=1..}] {type:"minecraft:multi_action",title:"Starting Crusade Kit",exit_action:{label:{translate:"gui.cancel"}},columns:1,body:[{type:"minecraft:plain_message",contents:"Hover each option to see that kit's items.",width:400}],actions:[\
  {action:{type:"minecraft:run_command",command:"trigger change_starting_crusade_kit set -1"},label:{bold:true,color:"dark_green",text:"Knight"},tooltip:["",{color:"dark_aqua",text:"Main Weapon: "},{color:"aqua",text:"Sword & Shield"},[{color:"dark_purple",text:"\nUtilities:\n- "},{color:"light_purple",text:"Shield"},"\n- ",{color:"light_purple",text:"Obsidian Shield"},"\n- ",{color:"light_purple",text:"ICBM"}],[{color:"dark_green",text:"\nNormal Missiles:\n- "},{color:"green",text:"Blade"},"\n- ",{color:"green",text:"Gemini"}],[{color:"dark_red",text:"\nHeavy Missiles:\n- "},{color:"red",text:"Auxiliary"},"\n- ",{color:"red",text:"Warhead"},"\n- ",{color:"red",text:"Juggerbuster"}]]},\
  {action:{type:"minecraft:run_command",command:"trigger change_starting_crusade_kit set -2"},label:{bold:true,color:"red",text:"Archer"},tooltip:["",{color:"dark_aqua",text:"Main Weapon: "},{color:"aqua",text:"Shooting Saber"},[{color:"dark_purple",text:"\nUtilities:\n- "},{color:"light_purple",text:"Arrows"},"\n- ",{color:"light_purple",text:"Canopy"},"\n- ",{color:"light_purple",text:"Splash"}],[{color:"dark_green",text:"\nNormal Missiles:\n- "},{color:"green",text:"Citadel"},"\n- ",{color:"green",text:"Slasher"}],[{color:"gold",text:"\nLightning Missiles:\n- "},{color:"yellow",text:"Thunderbolt"},"\n- ",{color:"yellow",text:"Hurricane"}],[{color:"dark_purple",text:"\nSpecial Missiles:\n- "},{color:"dark_purple",text:"Broadsword"}]]},\
  {action:{type:"minecraft:run_command",command:"trigger change_starting_crusade_kit set -3"},label:{bold:true,color:"dark_purple",text:"Mage"},tooltip:["",{color:"dark_aqua",text:"Main Weapon: "},{color:"aqua",text:"Spell Wand"},[{color:"dark_purple",text:"\nUtilities:\n- "},{color:"light_purple",text:"Spell Book"},"\n- ",{color:"light_purple",text:"Nova Rocket"},"\n- ",{color:"light_purple",text:"Vortex"}],[{color:"dark_green",text:"\nNormal Missiles:\n- "},{color:"green",text:"A.N.T."},"\n- ",{color:"green",text:"TomaTwo"},"\n- ",{color:"green",text:"Catapult"},"\n- ",{color:"green",text:"Lifter"},"\n- ",{color:"green",text:"Chronullifier"}]]},\
  {action:{type:"minecraft:run_command",command:"trigger change_starting_crusade_kit set -4"},label:{italic:true,text:"Random"}},\
]}
tellraw @a[x=0,scores={change_starting_crusade_kit=-1}] {color:"green",text:"You will now start as a Knight in Crusade mode."}
scoreboard players set @a[x=0,scores={change_starting_crusade_kit=-1}] start_as_crusade_kit 1
tellraw @a[x=0,scores={change_starting_crusade_kit=-2}] {color:"green",text:"You will now start as an Archer in Crusade mode."}
scoreboard players set @a[x=0,scores={change_starting_crusade_kit=-2}] start_as_crusade_kit 2
tellraw @a[x=0,scores={change_starting_crusade_kit=-3}] {color:"green",text:"You will now start as a Mage in Crusade mode."}
scoreboard players set @a[x=0,scores={change_starting_crusade_kit=-3}] start_as_crusade_kit 3
tellraw @a[x=0,scores={change_starting_crusade_kit=-4}] {color:"green",text:"You will now start as a Random Kit in Crusade mode."}
scoreboard players reset @a[x=0,scores={change_starting_crusade_kit=-4}] start_as_crusade_kit
execute as @a[x=0,scores={change_starting_crusade_kit=-4..-1}] run function custom:player_action/playerdata/save
tellraw @a[x=0,scores={change_starting_crusade_kit=..-5}] {color:"red",text:"That is not a valid option"}
scoreboard players reset @a change_starting_crusade_kit
execute if entity @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_crusade] run scoreboard players enable @a[x=0] change_starting_crusade_kit

# Fix for players joining with legacy canopyTP tag
execute as @a[x=0,tag=canopyTP] run attribute @s minecraft:safe_fall_distance base reset
execute as @a[x=0,tag=canopyTP] run attribute @s minecraft:jump_strength base reset
execute as @a[x=0,tag=canopyTP] run attribute @s minecraft:movement_speed base reset
tag @a[x=0,tag=canopyTP] remove canopyTP

#Disable trigger objectives when appropriate
scoreboard players reset @a[x=0,predicate=!custom:team/any_playing_team] LeaveMidgame
scoreboard players reset @a[x=0,predicate=!custom:team/lobby] set_item_delay
execute unless predicate game:phase/staging/configuration run scoreboard players reset @a[x=0] set_item_delay
execute unless predicate rr:has_modification_room run scoreboard players reset @a[x=0] set_item_delay
execute unless predicate game:phase/staging/configuration run scoreboard players reset @a[x=0] VoteServerMode
scoreboard players reset @a[x=0,predicate=!custom:team/lobby] set_time_of_day
execute unless predicate game:phase/staging/configuration run scoreboard players reset @a[x=0] set_time_of_day
execute unless predicate rr:has_modification_room run scoreboard players reset @a[x=0] set_time_of_day
scoreboard players reset @a[x=0,predicate=!custom:team/spectator] leaveSpec
scoreboard players reset @a[x=0,predicate=!custom:team/lobby,predicate=!custom:team/developer] displayinfo
execute unless predicate rr:has_parkour run scoreboard players reset @a[x=0] toggle_parkour_instructions

#Launch pad in Modification Room
execute if predicate rr:has_modification_room if predicate game:phase/staging as @a[x=-63.5,y=190.5,z=78.5,distance=..1] unless entity @s[predicate=!custom:team/lobby,predicate=!custom:team/developer] run effect give @s jump_boost 1 20 true
execute if predicate rr:has_modification_room if predicate game:phase/staging as @a[x=-63.5,y=190.5,z=78.5,distance=1..10] unless entity @s[predicate=!custom:team/lobby,predicate=!custom:team/developer] run effect clear @s jump_boost

#Lobby easter eggs
function lobby:secrets/main

#Lobby players can't enter arena (security)
execute as @a[x=0,predicate=custom:team/lobby] at @s if predicate custom:in_arena run tellraw @s [{"text":"You shouldn't be here!","color":"red"}]
execute as @a[x=0,predicate=custom:team/lobby] at @s if predicate custom:in_arena run scoreboard players set @s LeaveGame 1

#Locked Modification Room
execute if predicate game:game_rules/lock_modification_room/on as @a[x=0,predicate=custom:team/lobby,predicate=2811iaj1:in_modification] at @s run function game:kickout

#Players can't switch out of their gamemode while in the lobby or spectating (security, disabled in servermodes)
execute if predicate rr:force_gamemodes run gamemode adventure @a[x=0,predicate=custom:team/lobby]
execute if predicate rr:force_gamemodes if predicate game:phase/staging run gamemode adventure @a[x=0,predicate=custom:team/any_arena_team]
execute if predicate rr:force_gamemodes if predicate game:phase/match unless predicate game:phase/match/pause run gamemode spectator @a[x=0,predicate=custom:team/spectator]
execute if predicate rr:force_gamemodes if predicate game:phase/match/pause run gamemode adventure @a[x=0,predicate=custom:team/spectator]

#Spectator void
execute as @a[x=0,gamemode=spectator,predicate=custom:in_void] at @s run function game:void

#Full offhand check
tag @a[x=0] remove fullOffhand
execute as @a[x=0] if items entity @s weapon.offhand * run tag @s add fullOffhand

#Remove some tags for Lobby players. Just a failsave
tag @a[x=0,predicate=!custom:team/any_playing_team] remove Winner
tag @a[x=0,predicate=!custom:team/any_playing_team] remove Loser
tag @a[x=0,predicate=!custom:team/any_playing_team] remove getItem

#For Canopies to continue operating (necessary for void falling)
scoreboard players add @a[x=0] ThrowPlat 0
scoreboard players add @a[x=0,scores={ThrowPlat=1..30}] ThrowPlat 1
scoreboard players set @a[x=0,scores={ThrowPlat=31..}] ThrowPlat 0

#Part of hotfix for item deduction/drop dupes
tag @a[x=0,tag=itemDeducted] remove itemDeducted
tag @a[x=0,tag=wasFullHotbar] remove wasFullHotbar

#Remove dragon breath
kill @e[x=0,type=area_effect_cloud,predicate=custom:is_dragon_breath_area_effect_cloud]

#Fill portals before game starts
execute if predicate game:phase/staging/queue unless predicate game:gamemode_components/portal_crystal_protection run function game:place_portal/all

#Disable damage gamerules if no game has started
execute unless entity @s[predicate=game:phase/match,predicate=!game:phase/match/closing] run function custom:game_rules/fall_damage/off
execute unless entity @s[predicate=game:phase/match,predicate=!game:phase/match/closing] run function custom:game_rules/drowning_damage/off
execute unless entity @s[predicate=game:phase/match,predicate=!game:phase/match/closing] run function custom:game_rules/fire_damage/off

#Lobby players have no items besides a book (and boots, if Duel is present or if noYZELO is active)
#If servermode is not active
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby] hotbar.0 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby] hotbar.1 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby] hotbar.2 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour] hotbar.3 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour] hotbar.5 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby] hotbar.6 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby] hotbar.7 with air
execute unless predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour] hotbar.8 with air

#If servermode is active
execute if predicate rr:is_cubekrowd unless entity @s[tag=ServerModeVoting] run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.0 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.1 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.2 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.3 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.5 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.6 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.7 with air
execute if predicate rr:is_cubekrowd run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!keepInventory] hotbar.8 with air

item replace entity @a[x=0,predicate=custom:team/lobby] armor.head with air
item replace entity @a[x=0,predicate=custom:team/lobby] armor.chest with air
item replace entity @a[x=0,predicate=custom:team/lobby] armor.legs with air
execute if function game:norankboots run item replace entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour] armor.feet with air

#Servermode teleport out of modification room
execute unless predicate rr:has_modification_room run tellraw @a[x=0,predicate=2811iaj1:in_modification] ["",{"text":"You shouldn't be here!","color":"red"}]
execute unless predicate rr:has_modification_room as @a[x=0,predicate=!custom:team/spectator,predicate=2811iaj1:in_modification] at @s run function custom:leave
execute unless predicate rr:has_modification_room as @a[x=0,predicate=custom:team/spectator,predicate=2811iaj1:in_modification] run tp @s 12 100 0.5 90 90

#Servermode quick fix for Duel Mode
execute if predicate rr:server_mode/cubekrowd_duels run tag @s add duelLast

# Fix for players not being able to jump up onto the slab from the modification room pool
execute as @a[x=-70,y=200,z=77,dz=2,gamemode=!spectator] run attribute @s minecraft:gravity modifier add rocketriders:learning_to_swim -0.75 add_multiplied_base
execute as @a[x=0] unless entity @s[x=-70,y=200,z=77,dy=0.5,dz=2] run attribute @s minecraft:gravity modifier remove rocketriders:learning_to_swim

#Make armour visible again after invisibility wears off
execute as @a[x=0,tag=was_invisible,predicate=!custom:invisible] run function custom:event/player_becomes_visible/main
tag @a[x=0,tag=was_invisible,predicate=!custom:invisible] remove was_invisible

# Remove custom team colour from those not playing
execute as @a[x=0,scores={custom_team_color=1..}] unless entity @s[predicate=custom:team/any_playing_team,predicate=game:gamemode_components/custom_team_colors] run scoreboard players reset @s custom_team_color

# Clear the XP bar in the lobby if YZELO is disabled
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=noYZELO] as @a[x=0,predicate=!custom:team/any_playing_team] run function custom:set_xp_bar {level:0,progress:0}

# Set item timer in xp bar in-game
execute unless predicate game:phase/match/play run xp add @a[x=0,predicate=custom:team/any_playing_team] -2147483648 levels
execute if predicate game:phase/match/play if predicate game:gamemode_components/no_item_timer run xp add @a[x=0,predicate=custom:team/any_playing_team] -2147483648 levels
execute if predicate game:phase/match/play unless predicate game:gamemode_components/no_item_timer if score $match_play_time global matches ..2 as @a[x=0,predicate=custom:team/any_playing_team] run xp add @a[x=0,predicate=custom:team/any_playing_team] -2147483648 levels
execute if predicate game:phase/match/play unless predicate game:gamemode_components/no_item_timer if score $match_play_time global matches 3.. run data modify storage rocketriders:main item_time_progress set value {level:0}
execute if predicate game:phase/match/play unless predicate game:gamemode_components/no_item_timer if score $match_play_time global matches 3.. run scoreboard players operation $item_time_progress var = @e[limit=1,x=0,type=armor_stand,tag=Selection] RandomItem
execute if predicate game:phase/match/play unless predicate game:gamemode_components/no_item_timer if score $match_play_time global matches 3.. run scoreboard players operation $item_time_progress var *= $1000 constant
execute if predicate game:phase/match/play unless predicate game:gamemode_components/no_item_timer if score $match_play_time global matches 3.. if predicate game:modifiers/minute_mix/on store result storage rocketriders:main item_time_progress.progress float 0.001 run scoreboard players operation $item_time_progress var /= $1200 constant
execute if predicate game:phase/match/play unless predicate game:gamemode_components/no_item_timer if score $match_play_time global matches 3.. unless predicate game:modifiers/minute_mix/on store result storage rocketriders:main item_time_progress.progress float 0.001 run scoreboard players operation $item_time_progress var /= @e[limit=1,x=0,type=armor_stand,tag=Selection] MaxItemTime
execute if predicate game:phase/match/play unless predicate game:gamemode_components/no_item_timer if score $match_play_time global matches 3.. as @a[x=0,predicate=custom:team/any_playing_team] run function custom:set_xp_bar with storage rocketriders:main item_time_progress

# Remove flowing water sounds from the lobby
stopsound @a[x=0,predicate=!custom:in_arena] ambient minecraft:block.water.ambient
