#####################################
## COUNTDOWN: What events occur in ##
## the time before the game starts ##
#####################################

##Timer, bossbar, sound effects
execute unless predicate game:phase/match/play run scoreboard players add @s[tag=Countdown] count 1

#Automatically go to 10 if no (non-parkour/non-vanished) lobby players are on
execute if entity @s[scores={count=1..399}] unless entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!vanished] run bossbar set rr:startgame max 10
execute if entity @s[scores={count=1..399}] unless entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!vanished] run scoreboard players set @s count 400
execute if entity @s[scores={count=1..598}] run bossbar set rr:startgame color green
execute if entity @s[scores={count=599}] if score $chunk_clear_progress global matches 50.. run bossbar set rr:startgame color green

#Wait for arena to clear
execute unless predicate game:phase/match/play if score @s count matches 599..600 unless score $chunk_clear_progress global matches 50.. run scoreboard players set @s count 598
scoreboard players set $waiting_for_arena_to_clear var 0
execute unless predicate game:phase/match/play if score @s count matches 598 unless score $chunk_clear_progress global matches 50.. run scoreboard players set $waiting_for_arena_to_clear var 1
execute if score $waiting_for_arena_to_clear var matches 1 run bossbar set rr:startgame color red
execute if score $waiting_for_arena_to_clear var matches 1 run bossbar set rr:startgame max 50
execute if score $waiting_for_arena_to_clear var matches 1 store result bossbar rr:startgame value run scoreboard players get $chunk_clear_progress global
execute if score $waiting_for_arena_to_clear var matches 1 run bossbar set rr:startgame name [{color:"red",text:"Resetting the arena..."}]

#Countdown bossbar
execute if score @s count matches 1..599 unless score $waiting_for_arena_to_clear var matches 1 run scoreboard players set $seconds count 619
execute if score @s count matches 1..599 unless score $waiting_for_arena_to_clear var matches 1 run scoreboard players operation $seconds count -= @s count
execute if score @s count matches 1..599 unless score $waiting_for_arena_to_clear var matches 1 store result bossbar rr:startgame value run scoreboard players operation $seconds count /= $ticks_per_second constant
execute if score @s count matches 1..579 unless score $waiting_for_arena_to_clear var matches 1 run bossbar set rr:startgame name [{color:"green",text:"The game will begin in ",color:"green"},{bold:true,color:"dark_green",score:{name:"$seconds",objective:"count"}}," seconds."]
execute if score @s count matches 580..599 unless score $waiting_for_arena_to_clear var matches 1 run bossbar set rr:startgame name [{color:"green",text:"The game will begin in ",color:"green"},{bold:true,color:"dark_green",text:"1"}," second."]

#Countdown dings (10 to 1)
execute if score @s count matches 400 unless score $waiting_for_arena_to_clear var matches 1 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s count matches 420 unless score $waiting_for_arena_to_clear var matches 1 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s count matches 440 unless score $waiting_for_arena_to_clear var matches 1 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s count matches 460 unless score $waiting_for_arena_to_clear var matches 1 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s count matches 480 unless score $waiting_for_arena_to_clear var matches 1 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s count matches 500 unless score $waiting_for_arena_to_clear var matches 1 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s count matches 520 unless score $waiting_for_arena_to_clear var matches 1 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.6
execute if score @s count matches 540 unless score $waiting_for_arena_to_clear var matches 1 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.7
execute if score @s count matches 560 unless score $waiting_for_arena_to_clear var matches 1 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.8
execute if score @s count matches 580 unless score $waiting_for_arena_to_clear var matches 1 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.9

##Just before the game starts, place the bases
execute if score @s count matches 599 unless score $waiting_for_arena_to_clear var matches 1 run function game:place_arena

##As the game starts, add a UUIDTracker score
execute if predicate game:phase/match/play run scoreboard objectives add UUIDTracker dummy
execute if predicate game:phase/match/play run scoreboard objectives add KillerUUID dummy

##Right as game begins
execute if predicate game:phase/match/play run bossbar set rr:startgame value 30
execute if predicate game:phase/match/play run bossbar set rr:startgame max 30
execute if predicate game:phase/match/play run function game:randomsplash
execute if predicate game:phase/match/play as @a[x=0] at @s run playsound entity.generic.explode master @s ~ ~ ~ 100 1.2
execute if predicate game:phase/match/play run tp @a[x=0,predicate=custom:team/yellow] 12 64 66 -180 0
execute if predicate game:phase/match/play run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute if predicate game:phase/match/play run gamemode spectator @a[x=0,predicate=custom:team/spectator]
execute if predicate game:phase/match/play if predicate game:modifiers/sonar/on run tellraw @a[x=0,predicate=custom:team/spectator,tag=!JoinSpec] [{color:"gray",text:""},{color:"yellow",text:"⚠"}," The Sonar modifier is enabled! Non-spectating players cannot see the whole arena."]
execute if predicate game:phase/match/play run tp @a[x=0,predicate=custom:team/spectator] 12 100 0.5 90 90
execute if predicate game:phase/match/play run tag @a[x=0] remove doing_facade_parkour
execute if predicate game:phase/match/play run effect clear @a[x=0,predicate=custom:team/any_playing_team] resistance
execute if predicate game:phase/match/play run effect give @a[x=0,predicate=custom:team/any_playing_team] fire_resistance 10 100 true
execute if predicate game:phase/match/play run gamemode survival @a[x=0,predicate=custom:team/any_playing_team]
execute if predicate game:phase/match/play run clear @a[x=0,predicate=custom:team/any_arena_team] *
execute if predicate game:phase/match/play as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor
execute if predicate game:phase/match/play as @a[x=0,predicate=custom:team/any_playing_team] run function items:give_main_item
#Hotfix for losing shield upon game starting
execute if predicate game:phase/match/play if predicate game:gamemode_components/main_item/crusade_kit_dependent as @a[x=0,predicate=custom:team/any_playing_team,predicate=rr_crusade:kit/knight] run loot replace entity @s weapon.offhand loot items:misc/knight_shield
execute if predicate game:phase/match/play as @a[x=0,predicate=custom:team/any_playing_team] run function game:notify_join
execute if predicate game:phase/match/play unless predicate game:phase/match/over run tag @a[x=0] remove CalculateWin
execute if predicate game:phase/match/play unless predicate game:phase/match/over run tag @a[x=0] remove CalculateLoss
#Hotfix for bug where jumping in queue rooms disqualifies you from Ground Bound achievement
execute if predicate game:phase/match/play run scoreboard players set @a[x=0,predicate=custom:team/any_playing_team] jumps 0
#Enabling damage gamerules
execute if predicate game:phase/match/play run function custom:game_rules/drowning_damage/on
execute if predicate game:phase/match/play run function custom:game_rules/fire_damage/on
execute if predicate game:phase/match/play run scoreboard players operation $initial_blue_team_count global = $blue_team_count global
execute if predicate game:phase/match/play run scoreboard players operation $initial_yellow_team_count global = $yellow_team_count global
execute if predicate game:phase/match/play run function lobby:credits/restart
execute if predicate game:phase/match/play run function custom:game_rules/mob_griefing/on
execute if predicate game:phase/match/play run kill @e[x=0,type=#arrows]
execute if predicate game:phase/match/play run scoreboard players set @s count 0
execute if predicate game:phase/match/play run tag @s remove bossbarOverride
#The forceCountdown tag is used to override conditions that would otherwise cancel a countdown
execute if predicate game:phase/match/play run tag @s remove forceCountdown
execute if predicate game:phase/match/play run tag @s remove Countdown
