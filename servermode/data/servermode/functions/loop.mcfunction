scoreboard players add @s VoteServerMode 1
scoreboard players add @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 0

execute as @a[scores={VoteServerMode=5..}] run tellraw @s {"text":"Invalid vote! Please try again.","color":"red"}
execute as @a[scores={VoteServerMode=5..}] run scoreboard players set @s VoteServerMode 0
execute as @a[scores={VoteServerMode=..-1}] run tellraw @s {"text":"Invalid vote! Please try again.","color":"red"}
execute as @a[scores={VoteServerMode=..-1}] run scoreboard players set @s VoteServerMode 0
execute as @a run scoreboard players enable @s VoteServerMode

execute as @a[scores={VoteServerMode=1..4}] unless score @s VoteNum = @s VoteServerMode run tellraw @s [{"text":"You've voted for option ","color":"dark_green"},{"score":{"name":"@s","objective":"VoteServerMode"},"color":"red","bold":true},{"text":"! You may change your vote if you wish, or wait for voting to end.\n","color":"dark_green"}]
execute as @a[scores={VoteServerMode=1..4}] if score @s VoteNum = @s VoteServerMode run tellraw @s [{"text":"You've already voted for option ","color":"dark_green"},{"score":{"name":"@s","objective":"VoteServerMode"},"color":"red","bold":true},{"text":".\n","color":"dark_green"}]
execute as @a[scores={VoteServerMode=1..4}] run scoreboard players operation @s VoteNum = @s VoteServerMode
execute as @a[scores={VoteServerMode=1..4}] run scoreboard players set @s VoteServerMode 0

#countdown
execute if entity @s[scores={VoteServerMode=1}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"30","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=1}] run bossbar set rr:startgame value 30
execute if entity @s[scores={VoteServerMode=20}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"29","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=20}] run bossbar set rr:startgame value 29
execute if entity @s[scores={VoteServerMode=40}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"28","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=40}] run bossbar set rr:startgame value 28
execute if entity @s[scores={VoteServerMode=60}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"27","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=60}] run bossbar set rr:startgame value 27
execute if entity @s[scores={VoteServerMode=80}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"26","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=80}] run bossbar set rr:startgame value 26
execute if entity @s[scores={VoteServerMode=100}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"25","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=100}] run bossbar set rr:startgame value 25
execute if entity @s[scores={VoteServerMode=120}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"24","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=120}] run bossbar set rr:startgame value 24
execute if entity @s[scores={VoteServerMode=140}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"23","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=140}] run bossbar set rr:startgame value 23
execute if entity @s[scores={VoteServerMode=160}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"22","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=160}] run bossbar set rr:startgame value 22
execute if entity @s[scores={VoteServerMode=180}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"21","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=180}] run bossbar set rr:startgame value 21
execute if entity @s[scores={VoteServerMode=200}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"20","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=200}] run bossbar set rr:startgame value 20
execute if entity @s[scores={VoteServerMode=220}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"19","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=220}] run bossbar set rr:startgame value 19
execute if entity @s[scores={VoteServerMode=240}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"18","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=240}] run bossbar set rr:startgame value 18
execute if entity @s[scores={VoteServerMode=260}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"17","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=260}] run bossbar set rr:startgame value 17
execute if entity @s[scores={VoteServerMode=280}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"16","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=280}] run bossbar set rr:startgame value 16
execute if entity @s[scores={VoteServerMode=300}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"15","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=300}] run bossbar set rr:startgame value 15
execute if entity @s[scores={VoteServerMode=320}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"14","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=320}] run bossbar set rr:startgame value 14
execute if entity @s[scores={VoteServerMode=340}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"13","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=340}] run bossbar set rr:startgame value 13
execute if entity @s[scores={VoteServerMode=360}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"12","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=360}] run bossbar set rr:startgame value 12
execute if entity @s[scores={VoteServerMode=380}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"11","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=380}] run bossbar set rr:startgame value 11
execute if entity @s[scores={VoteServerMode=400}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"10","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=400}] run bossbar set rr:startgame value 10
execute if entity @s[scores={VoteServerMode=400}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if entity @s[scores={VoteServerMode=420}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"9","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=420}] run bossbar set rr:startgame value 9
execute if entity @s[scores={VoteServerMode=420}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if entity @s[scores={VoteServerMode=440}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"8","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=440}] run bossbar set rr:startgame value 8
execute if entity @s[scores={VoteServerMode=440}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if entity @s[scores={VoteServerMode=460}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"7","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=460}] run bossbar set rr:startgame value 7
execute if entity @s[scores={VoteServerMode=460}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if entity @s[scores={VoteServerMode=480}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"6","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=480}] run bossbar set rr:startgame value 6
execute if entity @s[scores={VoteServerMode=480}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if entity @s[scores={VoteServerMode=500}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"5","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=500}] run bossbar set rr:startgame value 5
execute if entity @s[scores={VoteServerMode=500}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.5
execute if entity @s[scores={VoteServerMode=520}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"4","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=520}] run bossbar set rr:startgame value 4
execute if entity @s[scores={VoteServerMode=520}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.6
execute if entity @s[scores={VoteServerMode=540}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"3","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=540}] run bossbar set rr:startgame value 3
execute if entity @s[scores={VoteServerMode=540}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.7
execute if entity @s[scores={VoteServerMode=560}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"2","bold":true,"color":"light_purple"},{"text":" seconds.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=560}] run bossbar set rr:startgame value 2
execute if entity @s[scores={VoteServerMode=560}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.8
execute if entity @s[scores={VoteServerMode=580}] run bossbar set rr:startgame name ["",{"text":"Vote for game settings in chat! Voting ends in ","color":"dark_purple"},{"text":"1","bold":true,"color":"light_purple"},{"text":" second.","color":"dark_purple"}]
execute if entity @s[scores={VoteServerMode=580}] run bossbar set rr:startgame value 1
execute if entity @s[scores={VoteServerMode=580}] as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 100 0.9
execute if entity @s[scores={VoteServerMode=600..}] run function servermode:finishvote