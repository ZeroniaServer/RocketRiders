######################################
## COUNTDOWN: What events occur in  ##
## the time before the match starts ##
######################################

##Timer, bossbar, sound effects
scoreboard players add @s count 1

#Automatically go to 10 if no (non-parkour/non-vanished) lobby players are on
execute if entity @s[scores={count=1..399}] unless entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!vanished] run bossbar set rr:startgame max 10
execute if entity @s[scores={count=1..399}] unless entity @a[x=0,predicate=custom:team/lobby,tag=!inParkour,tag=!vanished] run scoreboard players set @s count 400
execute if entity @s[scores={count=1..598}] run bossbar set rr:startgame color green
execute if entity @s[scores={count=599}] if score $chunk_clear_progress global matches 50.. run bossbar set rr:startgame color green

#Wait for arena to clear
execute if score @s count matches 599..600 unless score $chunk_clear_progress global matches 50.. run scoreboard players set @s count 598
scoreboard players set $waiting_for_arena_to_clear var 0
execute if score @s count matches 598 unless score $chunk_clear_progress global matches 50.. run scoreboard players set $waiting_for_arena_to_clear var 1
execute if score $waiting_for_arena_to_clear var matches 1 run bossbar set rr:startgame color red
execute if score $waiting_for_arena_to_clear var matches 1 run bossbar set rr:startgame max 50
execute if score $waiting_for_arena_to_clear var matches 1 store result bossbar rr:startgame value run scoreboard players get $chunk_clear_progress global
execute if score $waiting_for_arena_to_clear var matches 1 run bossbar set rr:startgame name [{color:"red",text:"Resetting the arena..."}]

#Countdown bossbar
execute if score @s count matches 1..599 unless score $waiting_for_arena_to_clear var matches 1 run scoreboard players set $seconds count 619
execute if score @s count matches 1..599 unless score $waiting_for_arena_to_clear var matches 1 run scoreboard players operation $seconds count -= @s count
execute if score @s count matches 1..599 unless score $waiting_for_arena_to_clear var matches 1 store result bossbar rr:startgame value run scoreboard players operation $seconds count /= $ticks_per_second constant
execute if score @s count matches 1..579 unless score $waiting_for_arena_to_clear var matches 1 run bossbar set rr:startgame name [{color:"green",text:"The match will begin in ",color:"green"},{bold:true,color:"dark_green",score:{name:"$seconds",objective:"count"}}," seconds."]
execute if score @s count matches 580..599 unless score $waiting_for_arena_to_clear var matches 1 run bossbar set rr:startgame name [{color:"green",text:"The match will begin in ",color:"green"},{bold:true,color:"dark_green",text:"1"}," second."]

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

##Just before the match starts, place the bases
execute if score @s count matches 599 unless score $waiting_for_arena_to_clear var matches 1 run function game:place_arena
