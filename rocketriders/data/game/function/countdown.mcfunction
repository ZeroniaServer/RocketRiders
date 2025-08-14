#####################################
## COUNTDOWN: What events occur in ##
## the time before the game starts ##
#####################################

##Timer, bossbar, sound effects
execute unless predicate game:game_started run scoreboard players add @s[tag=Countdown] count 1
#Automatically go to 10 if no (non-parkour/non-vanished) lobby players are on
execute if entity @s[scores={count=1..399}] unless entity @a[x=0,team=Lobby,tag=!inParkour,tag=!vanished] run bossbar set rr:startgame max 10
execute if entity @s[scores={count=1..399}] unless entity @a[x=0,team=Lobby,tag=!inParkour,tag=!vanished] run scoreboard players set @s count 400
execute if entity @s[scores={count=1..600}] run scoreboard players set @a[x=0] dropBow 0
execute if entity @s[scores={count=1..599}] run bossbar set rr:startgame color green

#Countdown bossbar
execute if score @s count matches 1..599 run scoreboard players set $seconds count 619
execute if score @s count matches 1..599 run scoreboard players operation $seconds count -= @s count
execute if score @s count matches 1..599 store result bossbar rr:startgame value run scoreboard players operation $seconds count /= $ticks_per_second constant
execute if score @s count matches 1..579 run bossbar set rr:startgame name [{color:"green",text:"The game will begin in ",color:"green"},{bold:true,color:"dark_green",score:{name:"$seconds",objective:"count"}}," seconds."]
execute if score @s count matches 580..599 run bossbar set rr:startgame name [{color:"green",text:"The game will begin in ",color:"green"},{bold:true,color:"dark_green",text:"1"}," second."]

#Countdown dings (10 to 1)
execute if score @s count matches 400 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s count matches 420 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s count matches 440 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s count matches 460 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s count matches 480 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s count matches 500 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s count matches 520 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.6
execute if score @s count matches 540 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.7
execute if score @s count matches 560 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.8
execute if score @s count matches 580 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.9

##As the game starts, add a UUIDTracker score
execute if predicate game:game_started run scoreboard objectives add UUIDTracker dummy
execute if predicate game:game_started run scoreboard objectives add KillerUUID dummy

##Right as game begins
execute if predicate game:game_started run bossbar set rr:startgame value 30
execute if predicate game:game_started run bossbar set rr:startgame max 30
execute if predicate game:game_started run function game:randomsplash
execute if predicate game:game_started as @a[x=0] at @s run playsound entity.generic.explode master @s ~ ~ ~ 100 1.2
execute if predicate game:game_started run tp @a[x=0,team=Yellow] 12 64 66 -180 0
execute if predicate game:game_started run tp @a[x=0,team=Blue] 12 64 -66 0 0
execute if predicate game:game_started run effect clear @a[x=0,team=Blue] resistance
execute if predicate game:game_started run effect clear @a[x=0,team=Yellow] resistance
execute if predicate game:game_started run effect give @a[x=0,team=Blue] fire_resistance 10 100 true
execute if predicate game:game_started run effect give @a[x=0,team=Yellow] fire_resistance 10 100 true
execute if predicate game:game_started run gamemode survival @a[x=0,team=Yellow]
execute if predicate game:game_started run gamemode survival @a[x=0,team=Blue]
#Hotfix for being able to keep charging bow from queue
execute if predicate game:game_started if entity @s[tag=!noSabers] run clear @a[x=0,team=Blue] bow
execute if predicate game:game_started if entity @s[tag=!noSabers] run clear @a[x=0,team=Yellow] bow
execute if predicate game:game_started if entity @s[tag=!noSabers] as @a[x=0,team=Blue] unless entity @e[x=0,type=armor_stand,tag=chaseEnabled] run function game:saberblue
execute if predicate game:game_started if entity @s[tag=!noSabers] as @a[x=0,team=Blue] if entity @e[x=0,type=armor_stand,tag=chaseEnabled] run function rr_chase:chasegear/givegear
execute if predicate game:game_started if entity @s[tag=!noSabers] as @a[x=0,team=Yellow] run function game:saberyellow
execute if predicate game:game_started if entity @s[tag=!customSaberMsg,tag=!SMActive] run tellraw @a[x=0,team=Blue] [{"text":"Drop your ","color":"dark_aqua","italic":true},{"text":"Shooting Saber ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:game_started if entity @s[tag=!customSaberMsg,tag=!SMActive] run tellraw @a[x=0,team=Yellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Shooting Saber ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if predicate game:game_started if entity @s[tag=!customSaberMsg,tag=SMActive] run tellraw @a[x=0,team=Blue] [{"text":"Use ","color":"dark_aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"dark_aqua","italic":true}]
execute if predicate game:game_started if entity @s[tag=!customSaberMsg,tag=SMActive] run tellraw @a[x=0,team=Yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if predicate game:game_started if entity @s[tag=!GameEnd] run tag @a[x=0] remove CalculateWin
execute if predicate game:game_started if entity @s[tag=!GameEnd] run tag @a[x=0] remove CalculateLoss
#Hotfix for bug where jumping in queue rooms disqualifies you from Ground Bound achievement
execute if predicate game:game_started run scoreboard players set @a[x=0,team=Yellow] jumps 0
execute if predicate game:game_started run scoreboard players set @a[x=0,team=Blue] jumps 0
#Enabling damage gamerules
execute if predicate game:game_started run gamerule drowningDamage true
execute if predicate game:game_started run gamerule fireDamage true
execute if predicate game:game_started run scoreboard players operation @s origBCount = @s bluesCount
execute if predicate game:game_started run scoreboard players operation @s origYCount = @s yellowsCount
execute if predicate game:game_started run function lobby:credits/restart
execute if predicate game:game_started run gamerule mobGriefing true
execute if predicate game:game_started run kill @e[x=0,type=arrow]
execute if predicate game:game_started run clear @a[x=0,predicate=custom:on_blue_or_yellow_team] arrow[custom_data~{Lobby:1b}]
execute if predicate game:game_started run scoreboard players set @s count 0
execute if predicate game:game_started run tag @s remove bossbarOverride
#The forceCountdown tag is used to override conditions that would otherwise cancel a countdown
execute if predicate game:game_started run tag @s remove forceCountdown
execute if predicate game:game_started run tag @s remove Countdown