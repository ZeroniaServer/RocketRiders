#####################################
## COUNTDOWN: What events occur in ##
## the time before the game starts ##
#####################################

##Timer, bossbar, sound effects
execute unless entity @s[tag=GameStarted] run scoreboard players add @s[tag=Countdown] count 1
#Automatically go to 10 if no (non-parkour) lobby players are on
execute if entity @s[scores={count=1..399}] unless entity @a[team=Lobby,tag=!inParkour] run bossbar set rr:startgame max 10
execute if entity @s[scores={count=1..399}] unless entity @a[team=Lobby,tag=!inParkour] run scoreboard players set @s count 400
execute if entity @s[scores={count=1..600}] run scoreboard players set @a dropBow 0
execute if entity @s[scores={count=1..599}] run bossbar set rr:startgame color green
execute if entity @s[scores={count=1}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"30","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=1}] run bossbar set rr:startgame value 30
execute if entity @s[scores={count=20}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"29","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=20}] run bossbar set rr:startgame value 29
execute if entity @s[scores={count=40}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"28","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=40}] run bossbar set rr:startgame value 28
execute if entity @s[scores={count=60}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"27","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=60}] run bossbar set rr:startgame value 27
execute if entity @s[scores={count=80}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"26","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=80}] run bossbar set rr:startgame value 26
execute if entity @s[scores={count=100}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"25","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=100}] run bossbar set rr:startgame value 25
execute if entity @s[scores={count=120}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"24","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=120}] run bossbar set rr:startgame value 24
execute if entity @s[scores={count=140}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"23","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=140}] run bossbar set rr:startgame value 23
execute if entity @s[scores={count=160}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"22","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=160}] run bossbar set rr:startgame value 22
execute if entity @s[scores={count=180}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"21","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=180}] run bossbar set rr:startgame value 21
execute if entity @s[scores={count=200}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"20","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=200}] run bossbar set rr:startgame value 20
execute if entity @s[scores={count=220}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"19","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=220}] run bossbar set rr:startgame value 19
execute if entity @s[scores={count=240}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"18","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=240}] run bossbar set rr:startgame value 18
execute if entity @s[scores={count=260}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"17","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=260}] run bossbar set rr:startgame value 17
execute if entity @s[scores={count=280}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"16","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=280}] run bossbar set rr:startgame value 16
execute if entity @s[scores={count=300}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"15","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=300}] run bossbar set rr:startgame value 15
execute if entity @s[scores={count=320}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"14","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=320}] run bossbar set rr:startgame value 14
execute if entity @s[scores={count=340}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"13","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=340}] run bossbar set rr:startgame value 13
execute if entity @s[scores={count=360}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"12","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=360}] run bossbar set rr:startgame value 12
execute if entity @s[scores={count=380}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"11","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=380}] run bossbar set rr:startgame value 11
execute if entity @s[scores={count=400}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"10","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=400}] run bossbar set rr:startgame value 10
execute if entity @s[scores={count=400}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if entity @s[scores={count=420}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"9","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=420}] run bossbar set rr:startgame value 9
execute if entity @s[scores={count=420}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if entity @s[scores={count=440}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"8","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=440}] run bossbar set rr:startgame value 8
execute if entity @s[scores={count=440}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if entity @s[scores={count=460}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"7","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=460}] run bossbar set rr:startgame value 7
execute if entity @s[scores={count=460}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if entity @s[scores={count=480}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"6","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=480}] run bossbar set rr:startgame value 6
execute if entity @s[scores={count=480}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if entity @s[scores={count=500}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"5","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=500}] run bossbar set rr:startgame value 5
execute if entity @s[scores={count=500}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if entity @s[scores={count=520}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"4","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=520}] run bossbar set rr:startgame value 4
execute if entity @s[scores={count=520}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.6
execute if entity @s[scores={count=540}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"3","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=540}] run bossbar set rr:startgame value 3
execute if entity @s[scores={count=540}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.7
execute if entity @s[scores={count=560}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"2","bold":true,"color":"dark_green"},{"text":" seconds.","color":"green"}]
execute if entity @s[scores={count=560}] run bossbar set rr:startgame value 2
execute if entity @s[scores={count=560}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.8
execute if entity @s[scores={count=580}] run bossbar set rr:startgame name ["",{"text":"The game will begin in ","color":"green"},{"text":"1","bold":true,"color":"dark_green"},{"text":" second.","color":"green"}]
execute if entity @s[scores={count=580}] run bossbar set rr:startgame value 1
execute if entity @s[scores={count=580}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.9

##As the game starts, add a UUIDTracker score
execute if entity @s[tag=GameStarted] run scoreboard objectives add UUIDTracker dummy
execute if entity @s[tag=GameStarted] run scoreboard objectives add KillerUUID dummy

##Right as game begins
execute if entity @s[tag=GameStarted] run bossbar set rr:startgame value 30
execute if entity @s[tag=GameStarted] run bossbar set rr:startgame max 30
execute if entity @s[tag=GameStarted] run function game:randomsplash
execute if entity @s[tag=GameStarted] as @a at @s run playsound entity.generic.explode master @s ~ ~ ~ 100 1.2
execute if entity @s[tag=GameStarted,tag=!customSpawns] run tp @a[team=Yellow] 12 64 66 -180 0
execute if entity @s[tag=GameStarted,tag=!customSpawns] run tp @a[team=Blue] 12 64 -66 0 0
execute if entity @s[tag=GameStarted] run effect clear @a[team=Blue] resistance
execute if entity @s[tag=GameStarted] run effect clear @a[team=Yellow] resistance
execute if entity @s[tag=GameStarted] run effect give @a[team=Blue] fire_resistance 10 100 true
execute if entity @s[tag=GameStarted] run effect give @a[team=Yellow] fire_resistance 10 100 true
execute if entity @s[tag=GameStarted] run gamemode survival @a[team=Yellow]
execute if entity @s[tag=GameStarted] run gamemode survival @a[team=Blue]
#Hotfix for being able to keep charging bow from queue
execute if entity @s[tag=GameStarted,tag=!noSabers] run clear @a[team=Blue] bow
execute if entity @s[tag=GameStarted,tag=!noSabers] run clear @a[team=Yellow] bow
execute if entity @s[tag=GameStarted,tag=!noSabers] as @a[team=Blue] run function game:saberblue
execute if entity @s[tag=GameStarted,tag=!noSabers] as @a[team=Yellow] run function game:saberyellow
execute if entity @s[tag=GameStarted,tag=!customSaberMsg,tag=!SMActive] run tellraw @a[team=Blue] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Shooting Saber ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[tag=GameStarted,tag=!customSaberMsg,tag=!SMActive] run tellraw @a[team=Yellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Shooting Saber ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[tag=GameStarted,tag=!customSaberMsg,tag=SMActive] run tellraw @a[team=Blue] [{"text":"Use ","color":"aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[tag=GameStarted,tag=!customSaberMsg,tag=SMActive] run tellraw @a[team=Yellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[tag=GameStarted,tag=!GameEnd] run tag @a remove CalculateWin
execute if entity @s[tag=GameStarted,tag=!GameEnd] run tag @a remove CalculateLoss
#Hotfix for bug where jumping in queue rooms disqualifies you from Ground Bound achievement
execute if entity @s[tag=GameStarted] run scoreboard players set @a[team=Yellow] jumps 0
execute if entity @s[tag=GameStarted] run scoreboard players set @a[team=Blue] jumps 0
#Enabling damage gamerules
execute if entity @s[tag=GameStarted] run gamerule drowningDamage true
execute if entity @s[tag=GameStarted] run gamerule fireDamage true
execute if entity @s[tag=GameStarted,tag=Hardcore] run gamerule showDeathMessages false
execute if entity @s[tag=GameStarted,tag=Hardcore] as @a unless entity @s[team=!Blue,team=!Yellow] run kill @s
execute if entity @s[tag=GameStarted,tag=Hardcore] as @a unless entity @s[team=!Blue,team=!Yellow] run scoreboard players remove @s deaths 1
execute if entity @s[tag=GameStarted,tag=Hardcore] run gamerule showDeathMessages true
execute if entity @s[tag=GameStarted] run scoreboard players operation @s origBCount = @s bluesCount
execute if entity @s[tag=GameStarted] run scoreboard players operation @s origYCount = @s yellowsCount
execute if entity @s[tag=GameStarted] run function lobby:credits/restart
execute if entity @s[tag=GameStarted] run gamerule mobGriefing true
execute if entity @s[tag=GameStarted] run kill @e[type=arrow]
execute if entity @s[tag=GameStarted] as @a unless entity @s[team=!Blue,team=!Yellow] run clear @s arrow{Lobby:1b}
scoreboard players set @s[tag=GameStarted] count 0
tag @s[tag=GameStarted] remove bossbarOverride
#The forceCountdown tag is used to override conditions that would otherwise cancel a countdown
tag @s[tag=GameStarted] remove forceCountdown
tag @s[tag=GameStarted] remove Countdown