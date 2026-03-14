# Timer
execute if score $players_online global matches ..1 run scoreboard players set $voting_timer global 0
execute if score $players_online global matches ..1 run bossbar set rr:startgame name [{color:"dark_purple",text:"Vote for the next game mode using your "},{bold:true,color:"#D586D5",text:"Voting Ballot!"},{color:"dark_purple",text:" Waiting for another player..."}]
execute if score $players_online global matches ..1 run bossbar set rr:startgame value 30

execute if score $players_online global matches 2.. run scoreboard players add $voting_timer global 1

#Voting ballot
execute if predicate rr:has_voting as @a[x=0,predicate=custom:team/lobby] unless items entity @s hotbar.0 *[custom_data~{id:"voting_ballot"}] run function custom:reset_inventory
execute unless predicate rr:has_voting as @a[x=0,predicate=custom:team/lobby] if items entity @s hotbar.0 *[custom_data~{id:"voting_ballot"}] run function custom:reset_inventory

#Countdown bossbar
execute if score $voting_timer global matches 1..599 run scoreboard players set $seconds var 619
execute if score $voting_timer global matches 1..599 run scoreboard players operation $seconds var -= $voting_timer global
execute if score $voting_timer global matches 1..599 store result bossbar rr:startgame value run scoreboard players operation $seconds var /= $ticks_per_second constant
execute if score $voting_timer global matches 1..599 unless score $seconds var matches 1 run bossbar set rr:startgame name [{color:"dark_purple",text:"Vote for the next game mode using your "},{bold:true,color:"#D586D5",text:"Voting Ballot!"}," Voting ends in ",{bold:true,color:"light_purple",score:{name:"$seconds",objective:"var"}}," seconds."]
execute if score $voting_timer global matches 1..599 if score $seconds var matches 1 run bossbar set rr:startgame name [{color:"dark_purple",text:"Vote for the next game mode using your "},{bold:true,color:"#D586D5",text:"Voting Ballot!"}," Voting ends in ",{bold:true,color:"light_purple",text:"1"}," second."]

#Countdown dings (10 to 1)
execute if score $voting_timer global matches 400 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score $voting_timer global matches 420 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score $voting_timer global matches 440 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score $voting_timer global matches 460 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score $voting_timer global matches 480 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score $voting_timer global matches 500 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if score $voting_timer global matches 520 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.6
execute if score $voting_timer global matches 540 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.7
execute if score $voting_timer global matches 560 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.8
execute if score $voting_timer global matches 580 as @a[x=0] at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.9

#Countdown finish
execute if score $voting_timer global matches 600.. run function servermode:finishvote
