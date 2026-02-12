scoreboard players add @e[x=0,type=marker,tag=ServerMode,tag=Set] VoteServerMode 0

# Timer
execute if score $players_online global matches ..1 run scoreboard players set @s VoteServerMode 0
execute if score $players_online global matches ..1 run bossbar set rr:startgame name [{color:"dark_purple",text:"Vote for game settings using your "},{bold:true,color:"#D586D5",text:"Voting Ballot!"},{color:"dark_purple",text:" Waiting for another player..."}]
execute if score $players_online global matches ..1 run bossbar set rr:startgame value 30

execute if score $players_online global matches 2.. run scoreboard players add @s VoteServerMode 1

# Voting trigger
execute as @a[x=0,scores={VoteServerMode=-2147483648..2147483647}] unless score @s VoteServerMode matches 0 run function servermode:voting/use_vote_trigger
scoreboard players set @a[x=0] VoteServerMode 0
scoreboard players enable @a[x=0] VoteServerMode

#Voting ballot
#execute if entity @s[tag=ServerModeVoting] as @a[x=0,predicate=custom:team/lobby] unless items entity @s hotbar.0 *[custom_data~{id:"voting_ballot"}] run function custom:reset_inventory
#execute unless entity @s[tag=ServerModeVoting] as @a[x=0,predicate=custom:team/lobby] if items entity @s hotbar.0 *[custom_data~{id:"voting_ballot"}] run function custom:reset_inventory

#Countdown bossbar
execute if score @s VoteServerMode matches 1..599 run scoreboard players set $seconds VoteServerMode 619
execute if score @s VoteServerMode matches 1..599 run scoreboard players operation $seconds VoteServerMode -= @s VoteServerMode
execute if score @s VoteServerMode matches 1..599 store result bossbar rr:startgame value run scoreboard players operation $seconds VoteServerMode /= $ticks_per_second constant
execute if score @s VoteServerMode matches 1..599 unless score $seconds VoteServerMode matches 1 run bossbar set rr:startgame name [{color:"dark_purple",text:"Vote for game settings using your "},{bold:true,color:"#D586D5",text:"Voting Ballot!"}," Voting ends in ",{bold:true,color:"light_purple",score:{name:"$seconds",objective:"VoteServerMode"}}," seconds."]
execute if score @s VoteServerMode matches 1..599 if score $seconds VoteServerMode matches 1 run bossbar set rr:startgame name [{color:"dark_purple",text:"Vote for game settings using your "},{bold:true,color:"#D586D5",text:"Voting Ballot!"}," Voting ends in ",{bold:true,color:"light_purple",text:"1"}," second."]

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
