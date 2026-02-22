###################################################
## GAMESTART: Commands that allow games to start ##
## and make the Lobby Join/Leave Pads functional ##
###################################################

execute if predicate game:phase/staging/queue if predicate rr:has_voting if score $players_online global matches ..1 run tag @a[predicate=custom:team/any_arena_team] add LeaveTeams
execute if predicate game:phase/staging/queue if predicate rr:has_voting if score $players_online global matches ..1 run return run function game:forcestop

##Game Bossbar
execute if predicate game:phase/match unless predicate game:phase/match/over unless predicate game:phase/match/play/tie_breaker if entity @s[tag=!bossbarOverride] unless entity @s[tag=YellowFull,tag=BlueFull] run bossbar set rr:startgame name ["",{"text":"A match is currently in progress. Feel free to join in!","color":"dark_green"}]
execute if predicate game:phase/match unless predicate game:phase/match/over unless predicate game:phase/match/play/tie_breaker if entity @s[tag=!bossbarOverride,tag=YellowFull,tag=BlueFull] run bossbar set rr:startgame name ["",{"text":"The match is full, but feel free to spectate!","color":"dark_green"}]
execute if predicate game:phase/match/play/tie_breaker if entity @s[tag=!bossbarOverride] unless entity @s[tag=YellowFull,tag=BlueFull] run bossbar set rr:startgame name ["",{"text":"A tiebreaker is currently progress. Feel free to join in!","color":"dark_red"}]
execute if predicate game:phase/match/play/tie_breaker if entity @s[tag=!bossbarOverride,tag=YellowFull,tag=BlueFull] run bossbar set rr:startgame name ["",{"text":"The match is full, but feel free to spectate!","color":"dark_red"}]
execute if predicate game:phase/match/over run bossbar set rr:startgame color red
execute if predicate game:phase/match/over run bossbar set rr:startgame name ["",{"text":"A match is currently ending.","color":"red"}]
execute if predicate game:phase/match run bossbar set rr:startgame players @a[x=0,predicate=custom:team/lobby]

execute if predicate game:phase/staging/queue/waiting unless predicate game:gamemode_components/custom_staging_bossbars run bossbar set rr:startgame max 30
execute if predicate game:phase/staging/queue/waiting unless predicate game:gamemode_components/custom_staging_bossbars if predicate rr:wait_for_sufficient_players if entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"players...","color":"white"}]
execute if predicate game:phase/staging/queue/waiting unless predicate game:gamemode_components/custom_staging_bossbars if predicate rr:wait_for_sufficient_players if entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame color blue
execute if predicate game:phase/staging/queue/waiting unless predicate game:gamemode_components/custom_staging_bossbars if predicate rr:wait_for_sufficient_players if entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame value 15
execute if predicate game:phase/staging/queue/waiting unless predicate game:gamemode_components/custom_staging_bossbars if predicate rr:wait_for_sufficient_players if entity @a[x=0,predicate=custom:team/yellow] unless entity @a[x=0,predicate=custom:team/blue] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players...","color":"white"}]
execute if predicate game:phase/staging/queue/waiting unless predicate game:gamemode_components/custom_staging_bossbars if predicate rr:wait_for_sufficient_players if entity @a[x=0,predicate=custom:team/yellow] unless entity @a[x=0,predicate=custom:team/blue] run bossbar set rr:startgame color yellow
execute if predicate game:phase/staging/queue/waiting unless predicate game:gamemode_components/custom_staging_bossbars if predicate rr:wait_for_sufficient_players if entity @a[x=0,predicate=custom:team/yellow] unless entity @a[x=0,predicate=custom:team/blue] run bossbar set rr:startgame value 15
execute if predicate game:phase/staging/queue/waiting unless predicate game:gamemode_components/custom_staging_bossbars if predicate rr:wait_for_sufficient_players unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"and ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players...","color":"white"}]
execute if predicate game:phase/staging/queue/waiting unless predicate game:gamemode_components/custom_staging_bossbars unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame value 0
execute if predicate game:phase/staging/queue/waiting unless predicate game:gamemode_components/custom_staging_bossbars unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame color white
execute if predicate game:phase/staging/queue/waiting unless predicate game:gamemode_components/custom_staging_bossbars unless predicate rr:wait_for_sufficient_players unless entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute if predicate game:phase/staging/configuration if predicate rr:has_voting run bossbar set rr:startgame color purple
execute if predicate game:phase/staging/configuration if predicate rr:has_modification_room run bossbar set rr:startgame color purple
execute if predicate game:phase/staging/configuration if predicate rr:has_modification_room unless predicate game:game_rules/lock_modification_room/on run bossbar set rr:startgame name ["",{"text":"Please confirm game settings in the Modification Room!","color":"dark_purple"}]
execute if predicate game:phase/staging/configuration if predicate rr:has_modification_room if predicate game:game_rules/lock_modification_room/on run bossbar set rr:startgame name ["",{"text":"Waiting for game settings to be confirmed...","color":"dark_purple"}]
execute if predicate game:phase/staging/configuration if predicate rr:has_modification_room run bossbar set rr:startgame value 30
execute if predicate game:phase/staging run bossbar set rr:startgame players @a[x=0]

##Blue Join Pad
execute as @a[x=0] if score @s joinBlue matches 1 if predicate rr:is_cubekrowd run function servermode:joinblue
execute if entity @s[tag=JustCleared] run tag @a[x=0] remove JoinBlue
execute unless predicate game:joinable_match_phase run tag @a[x=0] remove JoinBlue
execute if entity @s[tag=BlueFull] run tag @a[x=0] remove JoinBlue
execute if predicate custom:periodic_tick/3 unless predicate game:gamemode_components/red_for_blue if predicate game:joinable_match_phase if entity @s[predicate=!game:team_count/blue_is_larger,tag=!BlueFull] as @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] at @s run particle minecraft:falling_dust{block_state:"minecraft:blue_concrete"} ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:gamemode_components/red_for_blue if predicate game:joinable_match_phase if entity @s[predicate=!game:team_count/blue_is_larger,tag=!BlueFull] as @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] at @s run particle minecraft:falling_dust{block_state:"minecraft:red_concrete"} ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:gamemode_components/neutral_items if predicate game:joinable_match_phase if entity @s[predicate=!game:team_count/blue_is_larger,tag=!BlueFull] as @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] at @s run particle minecraft:falling_dust{block_state:"minecraft:white_concrete"} ~ ~1 ~ 0.5 1 0.5 0.1 2 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute unless predicate game:game_rules/disable_team_balancing/on unless entity @s[predicate=!game:team_count/blue_is_larger,tag=!BlueFull,predicate=game:joinable_match_phase] run tag @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] add join_pad.show_barrier
execute as @e[x=0,type=marker,tag=join_pad.blue] at @s as @a[distance=..1,predicate=custom:team/lobby,sort=random] run function game:joinblue
execute as @a[x=0,tag=tryJoinBlue] at @s unless entity @e[distance=..2,type=marker,tag=join_pad.blue] run tag @s remove tryJoinBlue
execute as @a[x=0,tag=JoinBlue] run function custom:team/join_blue
execute if entity @a[limit=1,x=0,tag=JoinBlue] run function everytick:team_count
clear @a[x=0,tag=JoinBlue] *
execute if predicate game:gamemode_components/custom_team_colors as @a[x=0,tag=JoinBlue] run function game:assign_custom_team_color
execute if predicate game:modifiers/hardcore/on as @a[x=0,tag=JoinBlue] run function modifiers:hardcoreset
execute if predicate game:modifiers/hobbits/on as @a[x=0,tag=JoinBlue] run function modifiers:hobbit/set
execute if predicate game:modifiers/long_arms/on as @a[x=0,tag=JoinBlue] run function modifiers:long_arms/set
execute as @a[x=0,tag=JoinBlue] run function custom:update_armor
execute as @a[x=0,tag=JoinBlue] run function custom:reset_inventory
execute if predicate game:phase/staging run tp @a[x=0,tag=JoinBlue] -95 202 60 0 0
execute if predicate game:phase/staging unless predicate game:gamemode_components/one_team unless predicate game:gamemode_components/red_for_blue as @a[x=0,tag=JoinBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"blue"},{"text":" joined the blue team!","color":"dark_aqua"}]
# TODO this is kinda weird, no? why would you say you joined the blue team if it's red
execute if predicate game:phase/staging unless predicate game:gamemode_components/one_team if predicate game:gamemode_components/red_for_blue as @a[x=0,tag=JoinBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"dark_red"},{"text":" joined the blue team!","color":"red"}]
execute if predicate game:phase/staging if predicate game:gamemode_components/one_team unless predicate game:gamemode_components/red_for_blue as @a[x=0,tag=JoinBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"blue"},{"text":" joined the match!","color":"dark_aqua"}]
execute if predicate game:phase/staging if predicate game:gamemode_components/one_team if predicate game:gamemode_components/red_for_blue as @a[x=0,tag=JoinBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"dark_red"},{"text":" joined the match!","color":"red"}]
execute if predicate game:phase/staging unless predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,tag=JoinBlue] {"text":"Fall off the base to return to the Lobby.","color":"blue","italic":true}
execute if predicate game:phase/staging if predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,tag=JoinBlue] {"text":"Fall off the base to return to the Lobby.","color":"red","italic":true}
execute if predicate game:phase/staging run effect give @a[x=0,tag=JoinBlue] resistance infinite 100 true
execute if predicate game:phase/match run tp @a[x=0,tag=JoinBlue] 12 64 -66 0 0
execute if predicate game:phase/match unless predicate game:gamemode_components/one_team unless predicate game:gamemode_components/red_for_blue as @a[x=0,tag=JoinBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"blue"},{"text":" joined the blue team! A late arrival, unfortunately.","color":"dark_aqua"}]
execute if predicate game:phase/match unless predicate game:gamemode_components/one_team if predicate game:gamemode_components/red_for_blue as @a[x=0,tag=JoinBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"dark_red"},{"text":" joined the blue team! A late arrival, unfortunately.","color":"red"}]
execute if predicate game:phase/match if predicate game:gamemode_components/one_team unless predicate game:gamemode_components/red_for_blue as @a[x=0,tag=JoinBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"blue"},{"text":" joined the match! A late arrival, unfortunately.","color":"dark_aqua"}]
execute if predicate game:phase/match if predicate game:gamemode_components/one_team if predicate game:gamemode_components/red_for_blue as @a[x=0,tag=JoinBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"dark_red"},{"text":" joined the match! A late arrival, unfortunately.","color":"red"}]
execute if predicate game:phase/match as @a[x=0,tag=JoinBlue] run function game:notify_join
execute if predicate game:phase/match unless predicate game:phase/match/paused run gamemode survival @a[x=0,predicate=custom:team/blue,gamemode=adventure]
execute if predicate game:phase/staging run gamemode adventure @a[x=0,tag=JoinBlue]
execute if predicate game:phase/match/paused run gamemode adventure @a[x=0,tag=JoinBlue]
execute if predicate game:phase/match unless predicate game:phase/match/paused run gamemode survival @a[x=0,tag=JoinBlue]
execute if predicate game:phase/match run effect clear @a[x=0,tag=JoinBlue] resistance
effect clear @a[x=0,tag=JoinBlue] invisibility
execute as @a[x=0,tag=JoinBlue] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
execute as @a[x=0,tag=JoinBlue] run title @s actionbar ""
#Achievement keybind tutorial
execute if predicate rr:has_achievements as @a[x=0,tag=JoinBlue] run advancement grant @s only achievements:inform
execute if entity @a[x=0,tag=JoinBlue] run function lobby:cancelsettings/reset

##Yellow Join Pad
execute as @a[x=0] if score @s joinYellow matches 1 if predicate rr:is_cubekrowd run function servermode:joinyellow
execute if entity @s[tag=JustCleared] run tag @a[x=0] remove JoinYellow
execute unless predicate game:joinable_match_phase run tag @a[x=0] remove JoinYellow
execute if entity @s[tag=YellowFull] run tag @a[x=0] remove JoinYellow
execute if predicate custom:periodic_tick/3 if predicate game:joinable_match_phase if entity @s[predicate=!game:team_count/yellow_is_larger,tag=!YellowFull] as @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] at @s run particle minecraft:falling_dust{block_state:"minecraft:yellow_concrete"} ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:gamemode_components/neutral_items if predicate game:joinable_match_phase if entity @s[predicate=!game:team_count/yellow_is_larger,tag=!YellowFull] as @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] at @s run particle minecraft:falling_dust{block_state:"minecraft:white_concrete"} ~ ~1 ~ 0.5 1 0.5 0.1 2 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute unless predicate game:game_rules/disable_team_balancing/on unless entity @s[predicate=!game:team_count/yellow_is_larger,tag=!YellowFull,predicate=game:joinable_match_phase] run tag @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] add join_pad.show_barrier
execute as @e[x=0,type=marker,tag=join_pad.yellow] at @s as @a[distance=..1,predicate=custom:team/lobby,sort=random] run function game:joinyellow
execute as @a[x=0,tag=tryJoinYellow] at @s unless entity @e[distance=..2,type=marker,tag=join_pad.yellow] run tag @s remove tryJoinYellow
execute as @a[x=0,tag=JoinYellow] run function custom:team/join_yellow
clear @a[x=0,tag=JoinYellow] *
execute if predicate game:gamemode_components/custom_team_colors as @a[x=0,tag=JoinYellow] run function game:assign_custom_team_color
execute if predicate game:modifiers/hardcore/on as @a[x=0,tag=JoinYellow] run function modifiers:hardcoreset
execute if predicate game:modifiers/hobbits/on as @a[x=0,tag=JoinYellow] run function modifiers:hobbit/set
execute if predicate game:modifiers/long_arms/on as @a[x=0,tag=JoinYellow] run function modifiers:long_arms/set
execute as @a[x=0,tag=JoinYellow] run function custom:update_armor
execute as @a[x=0,tag=JoinYellow] run function custom:reset_inventory
execute if predicate game:phase/staging run tp @a[x=0,tag=JoinYellow] -95 202 96 180 0
execute if predicate game:phase/staging as @a[x=0,tag=JoinYellow] run tellraw @a[x=0] ["",{"selector":"@s","color":"gold"},{"text":" joined the yellow team!","color":"yellow"}]
execute if predicate game:phase/staging run tellraw @a[x=0,tag=JoinYellow] {"text":"Fall off the base to return to the Lobby.","color":"gold","italic":true}
execute if predicate game:phase/staging run effect give @a[x=0,tag=JoinYellow] resistance infinite 100 true
execute if predicate game:phase/match run tp @a[x=0,tag=JoinYellow] 12 64 66 180 0
execute if predicate game:phase/match as @a[x=0,tag=JoinYellow] run tellraw @a[x=0] ["",{"selector":"@s","color":"gold"},{"text":" joined the yellow team! A late arrival, unfortunately.","color":"yellow"}]
execute if predicate game:phase/match as @a[x=0,tag=JoinYellow] run function game:notify_join
execute if predicate game:phase/match unless predicate game:phase/match/paused run gamemode survival @a[x=0,predicate=custom:team/yellow,gamemode=adventure]
execute if predicate game:phase/staging run gamemode adventure @a[x=0,tag=JoinYellow]
execute if predicate game:phase/match/paused run gamemode adventure @a[x=0,tag=JoinYellow]
execute if predicate game:phase/match unless predicate game:phase/match/paused run gamemode survival @a[x=0,tag=JoinYellow]
execute if predicate game:phase/match run effect clear @a[x=0,tag=JoinYellow] resistance
effect clear @a[x=0,tag=JoinYellow] invisibility
execute as @a[x=0,tag=JoinYellow] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
execute as @a[x=0,tag=JoinYellow] run title @s actionbar ""
#Achievement keybind tutorial
execute if predicate rr:has_achievements as @a[x=0,tag=JoinYellow] run advancement grant @s only achievements:inform
execute if entity @a[x=0,tag=JoinYellow] run function lobby:cancelsettings/reset

##Join pad + Leave pad Spectator
execute as @a[x=0] if score @s spectate matches 1 if predicate rr:is_cubekrowd run function servermode:spectate
execute if entity @s[tag=JustCleared] run tag @a[x=0] remove JoinSpec
execute unless predicate game:joinable_match_phase run tag @a[x=0] remove JoinSpec
execute if predicate rr:is_cubekrowd if entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] as @a[x=0,tag=JoinSpec] run tellraw @s ["",{"text":"You cannot use /spectate when there is no game to play yet.","color":"red"},{"text":"\n"},{"text":"Please wait for the voting time to end.","italic":true,"color":"red"}]
tag @a[x=0,gamemode=spectator] remove JoinSpec
execute if predicate custom:periodic_tick/3 as @e[x=0,type=marker,tag=join_pad.spectator,tag=!CancelJoin] at @s run particle minecraft:falling_dust{block_state:"minecraft:gray_concrete"} ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]
execute as @e[x=0,type=marker,tag=join_pad.spectator] at @s as @a[distance=..1,predicate=custom:team/lobby,sort=random] run function game:joinspec
execute as @a[x=0,tag=tryJoinSpec] at @s unless entity @e[distance=..2,type=marker,tag=join_pad.spectator] run tag @s remove tryJoinSpec
execute as @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run tag @a[x=0] remove JoinSpec
execute as @e[x=0,type=marker,tag=join_pad.spectator] at @s run tag @a[predicate=custom:team/spectator,distance=..1] add AlreadySpec
execute as @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run tag @a[x=0] remove AlreadySpec
execute as @a[x=0,tag=JoinSpec] run function custom:team/join_spectator
clear @a[x=0,tag=JoinSpec] *
scoreboard players enable @a[x=0,predicate=custom:team/spectator] leaveSpec
tag @a[x=0,scores={leaveSpec=1..}] add LeaveTeams
scoreboard players reset @a[x=0,predicate=!custom:team/spectator] leaveSpec
execute if predicate rr:enable_spectator_leave_cloud run tellraw @a[x=0,tag=JoinSpec,gamemode=!spectator] ["",{"text":"Click ","color":"dark_green","italic":true},{"text":"[HERE]","color":"green","click_event":{"action":"run_command","command":"/trigger leaveSpec set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to stop spectating"}}},{"text":" or enter the green particle cluster to stop spectating!","color":"dark_green","italic":true}]
execute unless predicate rr:enable_spectator_leave_cloud if predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinSpec,gamemode=!spectator] ["",{"text":"Click ","color":"dark_green","italic":true},{"text":"[HERE]","color":"green","click_event":{"action":"run_command","command":"/trigger leaveSpec set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to stop spectating"}}},{"text":" or use ","color":"dark_green"},{"text":"/leave","color":"green"},{"text":" to stop spectating!","color":"dark_green","italic":true}]
execute unless predicate rr:enable_spectator_leave_cloud unless predicate rr:is_cubekrowd run tellraw @a[x=0,tag=JoinSpec,gamemode=!spectator] ["",{"text":"Click ","color":"dark_green","italic":true},{"text":"[HERE]","color":"green","click_event":{"action":"run_command","command":"/trigger leaveSpec set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to stop spectating"}}},{"text":" to stop spectating!","color":"dark_green","italic":true}]
execute if predicate game:phase/match run tp @a[x=0,tag=JoinSpec] 12 100 0.5 90 90
execute if predicate game:phase/staging run tp @a[x=0,tag=JoinSpec] -95 213 78 90 90
execute as @a[x=0,tag=JoinSpec] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
execute as @a[x=0,tag=JoinSpec] run title @s actionbar ""
execute as @a[x=0,tag=JoinSpec] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" is now spectating the match!","color":"gray"}]
execute if predicate game:phase/match if predicate game:modifiers/sonar/on as @a[x=0,tag=JoinSpec] run tellraw @s [{color:"gray",text:""},{color:"yellow",text:"⚠"}," The Sonar modifier is enabled! Non-spectating players cannot see the whole arena."]
execute if predicate rr:enable_spectator_leave_cloud run title @a[x=0,predicate=custom:team/spectator] actionbar {"text":"Enter the green particle cluster to stop spectating!","color":"green","bold":true}
execute unless predicate rr:enable_spectator_leave_cloud if predicate rr:is_cubekrowd run title @a[x=0,predicate=custom:team/spectator] actionbar [{"text":"Use ","color":"green","bold":true},{"text":"/leave","color":"dark_green"},{"text":" to stop spectating!","color":"green"}]
execute unless predicate rr:enable_spectator_leave_cloud unless predicate rr:is_cubekrowd run title @a[x=0,predicate=custom:team/spectator] actionbar [{"text":"Use ","color":"green","bold":true},{"text":"/trigger leaveSpec","color":"dark_green"},{"text":" to stop spectating!","color":"green"}]
execute if predicate game:phase/match run gamemode spectator @a[x=0,tag=JoinSpec]
execute if predicate game:phase/staging run gamemode adventure @a[x=0,tag=JoinSpec]
tag @a[x=0] remove JoinSpec
tp @a[x=0,tag=AlreadySpec] 12 100 0.5 90 90
execute as @a[x=0,tag=AlreadySpec] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
tag @a[x=0] remove AlreadySpec
execute if predicate rr:enable_spectator_leave_cloud if predicate game:phase/match if predicate custom:periodic_tick/3 positioned 12.5 95.0 0.5 run particle minecraft:dust{color:[0,1,0],scale:4} ~ ~ ~ 0.7 0.7 0.7 0.3 5 force @a[x=0,predicate=custom:team/spectator,predicate=custom:in_arena]
execute if predicate rr:enable_spectator_leave_cloud if predicate game:phase/match if predicate custom:periodic_tick/3 positioned 12.5 95.0 0.5 run particle minecraft:dust{color:[0,1,0],scale:3} ~ ~ ~ 0.8 0.8 0.8 0.3 5 force @a[x=0,predicate=custom:team/spectator,predicate=custom:in_arena]
execute if predicate rr:enable_spectator_leave_cloud if predicate game:phase/match if predicate custom:periodic_tick/3 positioned 12.5 95.0 0.5 run particle minecraft:dust{color:[0,1,0],scale:2} ~ ~ ~ 1 1 1 0.3 10 force @a[x=0,predicate=custom:team/spectator,predicate=custom:in_arena]
execute if predicate rr:enable_spectator_leave_cloud if predicate game:phase/match positioned 12.5 95.0 0.5 run tag @a[predicate=custom:team/spectator,distance=..4] add LeaveTeams

execute if predicate rr:enable_spectator_leave_cloud if predicate game:phase/staging if predicate custom:periodic_tick/3 positioned -89 213.5 78 run particle minecraft:dust{color:[0,1,0],scale:2} ~ ~ ~ 0.35 0.35 0.35 0.3 2 force @a[x=0,predicate=custom:team/spectator,predicate=!custom:in_arena]
execute if predicate rr:enable_spectator_leave_cloud if predicate game:phase/staging if predicate custom:periodic_tick/3 positioned -89 213.5 78 run particle minecraft:dust{color:[0,1,0],scale:1.5} ~ ~ ~ 0.4 0.4 0.4 0.3 2 force @a[x=0,predicate=custom:team/spectator,predicate=!custom:in_arena]
execute if predicate rr:enable_spectator_leave_cloud if predicate game:phase/staging if predicate custom:periodic_tick/3 positioned -89 213.5 78 run particle minecraft:dust{color:[0,1,0],scale:0.5} ~ ~ ~ 0.5 0.5 0.5 0.3 5 force @a[x=0,predicate=custom:team/spectator,predicate=!custom:in_arena]
execute if predicate rr:enable_spectator_leave_cloud if predicate game:phase/staging positioned -89 213.5 78 run tag @a[predicate=custom:team/spectator,distance=..1] add LeaveTeams

execute if predicate game:phase/staging as @a[x=0,predicate=custom:team/spectator] unless entity @s[x=-89,y=213,z=97,dx=-12,dy=10,dz=-38] run tp @s -95 213 78 90 90
execute if predicate game:phase/match as @a[x=0,predicate=custom:team/spectator] if entity @s[x=-89,y=213,z=97,dx=-12,dy=10,dz=-38] run tp @s 12 100 0.5 90 90

effect give @a[x=0,predicate=custom:team/spectator] invisibility infinite 0 true

##Disable knockback in pre-game queue
execute if predicate game:phase/staging as @a[x=0,predicate=custom:team/any_arena_team] run attribute @s minecraft:knockback_resistance modifier add rocketriders:pre_game_queue 10000 add_value
execute if predicate game:phase/match as @a[x=0,predicate=custom:team/any_arena_team] run attribute @s minecraft:knockback_resistance modifier remove rocketriders:pre_game_queue
execute as @a[x=0,predicate=!custom:team/any_arena_team] run attribute @s minecraft:knockback_resistance modifier remove rocketriders:pre_game_queue

##Keep spectators inside arena
execute as @a[x=0,predicate=custom:team/spectator] at @s unless predicate custom:insideborder_lenient run tag @s add leftBorder
tp @a[x=0,predicate=custom:team/spectator,tag=leftBorder] 12 100 0.5 90 90
tellraw @a[x=0,predicate=custom:team/spectator,tag=leftBorder] {"text":"You cannot leave world border!","color":"red"}
tag @a[x=0] remove leftBorder

##Leave Pad
execute as @a[x=0,gamemode=!spectator,predicate=custom:team/any_playing_team,tag=!doing_facade_parkour] at @s if entity @s[x=-84,y=186,z=45,dx=-111,dy=0,dz=110] run tag @s add LeaveTeams
execute unless predicate game:gamemode_components/custom_leave_handling run function game:leaveteams

##Facade Parkour
execute if predicate game:phase/staging as @a[x=-101,y=197,z=68,dx=12,dy=8,dz=19,gamemode=!spectator,predicate=custom:team/any_playing_team,tag=!doing_facade_parkour,predicate=custom:stepping_on_player_head] run tag @s add doing_facade_parkour
execute if predicate game:phase/staging as @a[x=0,gamemode=!spectator,predicate=custom:team/any_playing_team,tag=doing_facade_parkour] run title @s actionbar {color:"green",text:"Jump off to return to the base"}
execute if predicate game:phase/staging as @a[x=0,gamemode=!spectator,predicate=custom:team/any_playing_team,tag=doing_facade_parkour] at @s if entity @s[x=-84,y=186,z=45,dx=-111,dy=0,dz=110] run function game:end_facade_parkour
execute if predicate game:phase/staging as @a[x=-101,y=202,z=60,dx=12,dy=1,dz=5,gamemode=!spectator,predicate=custom:team/any_playing_team,tag=doing_facade_parkour] run function game:end_facade_parkour
execute if predicate game:phase/match run tag @a[x=0] remove doing_facade_parkour
tag @a[x=0,predicate=!custom:team/any_playing_team] remove doing_facade_parkour

##Countdown
execute if predicate game:phase/staging/queue/countdown run function game:countdown

##Team Balancing
execute unless predicate game:game_rules/disable_team_balancing/on run function everytick:team_balance

##Display CancelJoin join pad barriers
tag @e[x=0,type=marker,tag=CancelJoin] add join_pad.show_barrier
