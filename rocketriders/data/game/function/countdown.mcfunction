#####################################
## COUNTDOWN: What events occur in ##
## the time before the game starts ##
#####################################

##Timer, bossbar, sound effects
execute unless predicate game:match_in_play run scoreboard players add @s[tag=Countdown] count 1

#Automatically go to 10 if no (non-parkour/non-vanished) lobby players are on
execute if entity @s[scores={count=1..399}] unless entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!vanished] run bossbar set rr:startgame max 10
execute if entity @s[scores={count=1..399}] unless entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!vanished] run scoreboard players set @s count 400
execute if entity @s[scores={count=1..600}] run scoreboard players set @a[x=0] dropBow 0
execute if entity @s[scores={count=1..598}] run bossbar set rr:startgame color green
execute if entity @s[scores={count=599}] if score $chunk_clear_progress global matches 50.. run bossbar set rr:startgame color green

#Wait for arena to clear
execute unless predicate game:match_in_play if score @s count matches 599..600 unless score $chunk_clear_progress global matches 50.. run scoreboard players set @s count 598
scoreboard players set $waiting_for_arena_to_clear var 0
execute unless predicate game:match_in_play if score @s count matches 598 unless score $chunk_clear_progress global matches 50.. run scoreboard players set $waiting_for_arena_to_clear var 1
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
execute if predicate game:match_in_play run scoreboard objectives add UUIDTracker dummy
execute if predicate game:match_in_play run scoreboard objectives add KillerUUID dummy

##Right as game begins
execute if predicate game:match_in_play run bossbar set rr:startgame value 30
execute if predicate game:match_in_play run bossbar set rr:startgame max 30
execute if predicate game:match_in_play run function game:randomsplash
execute if predicate game:match_in_play as @a[x=0] at @s run playsound entity.generic.explode master @s ~ ~ ~ 100 1.2
execute if predicate game:match_in_play run tp @a[x=0,predicate=custom:team/yellow] 12 64 66 -180 0
execute if predicate game:match_in_play run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute if predicate game:match_in_play run gamemode spectator @a[x=0,predicate=custom:team/spectator]
execute if predicate game:match_in_play if entity @s[tag=Sonar] run tellraw @a[x=0,predicate=custom:team/spectator,tag=!JoinSpec] [{color:"gray",text:""},{color:"yellow",text:"⚠"}," The Sonar modifier is enabled! Non-spectating players cannot see the whole arena."]
execute if predicate game:match_in_play run tp @a[x=0,predicate=custom:team/spectator] 12 100 0.5 90 90
execute if predicate game:match_in_play run tag @a[x=0] remove doing_facade_parkour
execute if predicate game:match_in_play run effect clear @a[x=0,predicate=custom:team/blue] resistance
execute if predicate game:match_in_play run effect clear @a[x=0,predicate=custom:team/yellow] resistance
execute if predicate game:match_in_play run effect give @a[x=0,predicate=custom:team/blue] fire_resistance 10 100 true
execute if predicate game:match_in_play run effect give @a[x=0,predicate=custom:team/yellow] fire_resistance 10 100 true
execute if predicate game:match_in_play run gamemode survival @a[x=0,predicate=custom:team/yellow]
execute if predicate game:match_in_play run gamemode survival @a[x=0,predicate=custom:team/blue]
#Hotfix for being able to keep charging bow from queue
execute if predicate game:match_in_play if entity @s[tag=!noSabers] run clear @a[x=0,predicate=custom:team/any_playing_team] bow
execute if predicate game:match_in_play if entity @s[tag=!noSabers] as @a[x=0,predicate=custom:team/blue] run function game:saberblue
execute if predicate game:match_in_play if entity @s[tag=!noSabers] as @a[x=0,predicate=custom:team/yellow] run function game:saberyellow
execute if predicate game:match_in_play if entity @s[tag=!customSaberMsg] unless predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/blue] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Shooting Saber ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:match_in_play if entity @s[tag=!customSaberMsg] unless predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/yellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Shooting Saber ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if predicate game:match_in_play if entity @s[tag=!customSaberMsg] if predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/blue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:match_in_play if entity @s[tag=!customSaberMsg] if predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if predicate game:match_in_play unless predicate game:match_over run tag @a[x=0] remove CalculateWin
execute if predicate game:match_in_play unless predicate game:match_over run tag @a[x=0] remove CalculateLoss
#Hotfix for bug where jumping in queue rooms disqualifies you from Ground Bound achievement
execute if predicate game:match_in_play run scoreboard players set @a[x=0,predicate=custom:team/yellow] jumps 0
execute if predicate game:match_in_play run scoreboard players set @a[x=0,predicate=custom:team/blue] jumps 0
#Enabling damage gamerules
execute if predicate game:match_in_play run gamerule drowningDamage true
execute if predicate game:match_in_play run gamerule fireDamage true
execute if predicate game:match_in_play run scoreboard players operation $initial_blue_team_count global = $blue_team_count global
execute if predicate game:match_in_play run scoreboard players operation $initial_yellow_team_count global = $yellow_team_count global
execute if predicate game:match_in_play run function lobby:credits/restart
execute if predicate game:match_in_play run gamerule mobGriefing true
execute if predicate game:match_in_play run kill @e[x=0,type=#arrows]
execute if predicate game:match_in_play run clear @a[x=0,predicate=custom:team/any_playing_team] *[custom_data~{lobby:true}]
execute if predicate game:match_in_play run scoreboard players set @s count 0
execute if predicate game:match_in_play run tag @s remove bossbarOverride
#The forceCountdown tag is used to override conditions that would otherwise cancel a countdown
execute if predicate game:match_in_play run tag @s remove forceCountdown
execute if predicate game:match_in_play run tag @s remove Countdown