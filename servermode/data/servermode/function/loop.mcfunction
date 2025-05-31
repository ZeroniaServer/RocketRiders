scoreboard players add @s VoteServerMode 1
scoreboard players add @e[x=0,type=marker,tag=ServerMode,tag=Set] VoteServerMode 0
execute unless entity @e[x=0,tag=ServerMode,tag=ChaseMode] as @a[x=0,scores={VoteServerMode=6}] run tellraw @s {"text":"Invalid vote! Please try again.","color":"red"}
execute unless entity @e[x=0,tag=ServerMode,tag=ChaseMode] as @a[x=0,scores={VoteServerMode=6}] run scoreboard players set @s VoteServerMode 0
execute as @a[x=0,scores={VoteServerMode=7..}] run tellraw @s {"text":"Invalid vote! Please try again.","color":"red"}
execute as @a[x=0,scores={VoteServerMode=7..}] run scoreboard players set @s VoteServerMode 0
execute as @a[x=0,scores={VoteServerMode=..-1}] run tellraw @s {"text":"Invalid vote! Please try again.","color":"red"}
execute as @a[x=0,scores={VoteServerMode=..-1}] run scoreboard players set @s VoteServerMode 0
execute as @a[x=0] run scoreboard players enable @s VoteServerMode

execute as @a[x=0,scores={VoteServerMode=1..6}] unless score @s VoteNum = @s VoteServerMode at @s run playsound minecraft:entity.villager.work_librarian master @s ~ ~ ~ 0.4 1.5
execute as @a[x=0,scores={VoteServerMode=1..6}] unless score @s VoteNum = @s VoteServerMode run tellraw @s [{"text":"You've voted for option ","color":"dark_aqua"},{"score":{"name":"@s","objective":"VoteServerMode"},"color":"gold","bold":true},{"text":"! You may change your vote if you wish, or wait for voting to end.\n","color":"dark_aqua"}]
execute as @a[x=0,scores={VoteServerMode=1..6}] if score @s VoteNum = @s VoteServerMode run tellraw @s [{"text":"You've already voted for option ","color":"dark_aqua"},{"score":{"name":"@s","objective":"VoteServerMode"},"color":"gold","bold":true},{"text":".\n","color":"dark_aqua"}]
execute as @a[x=0,scores={VoteServerMode=1..6}] run scoreboard players operation @s VoteNum = @s VoteServerMode
execute as @a[x=0,scores={VoteServerMode=1..6}] run scoreboard players set @s VoteServerMode 0

#Countdown bossbar
execute if score @s VoteServerMode matches 1..599 run scoreboard players set $seconds VoteServerMode 619
execute if score @s VoteServerMode matches 1..599 run scoreboard players operation $seconds VoteServerMode -= @s VoteServerMode
execute if score @s VoteServerMode matches 1..599 store result bossbar rr:startgame value run scoreboard players operation $seconds VoteServerMode /= $ticks_per_second Constant
execute if score @s VoteServerMode matches 1..579 run bossbar set rr:startgame name [{color:"dark_purple",text:"Vote for game settings in chat! Voting ends in "},{bold:true,color:"light_purple",score:{name:"$seconds",objective:"VoteServerMode"}}," seconds."]
execute if score @s VoteServerMode matches 580..599 run bossbar set rr:startgame name [{color:"dark_purple",text:"Vote for game settings in chat! Voting ends in "},{bold:true,color:"light_purple",text:"1"}," second."]

#Countdown dings (10 to 1)
execute if score @s VoteServerMode matches 400 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s VoteServerMode matches 420 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s VoteServerMode matches 440 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s VoteServerMode matches 460 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s VoteServerMode matches 480 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s VoteServerMode matches 500 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score @s VoteServerMode matches 520 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.6
execute if score @s VoteServerMode matches 540 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.7
execute if score @s VoteServerMode matches 560 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.8
execute if score @s VoteServerMode matches 580 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.9

#Countdown finish
execute if score @s VoteServerMode matches 600.. run function servermode:finishvote
