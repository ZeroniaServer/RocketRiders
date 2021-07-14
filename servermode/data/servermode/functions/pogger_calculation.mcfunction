##Blatantly stolen from Meteor Miners but it works

scoreboard players remove @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 1
execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=1024..}] run scoreboard players remove @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 1024
execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=512..}] run scoreboard players remove @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 512
execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=256..}] run scoreboard players remove @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 256
execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=128..}] run scoreboard players remove @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 128
execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=64..}] run scoreboard players remove @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 64
execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=32..}] run scoreboard players remove @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 32
execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=16..}] run scoreboard players remove @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 16
execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=8..}] run scoreboard players remove @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 8
execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=4..}] run scoreboard players remove @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 4
execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=2..}] run scoreboard players remove @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 2
execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=1..}] run scoreboard players remove @e[type=marker,tag=ServerMode,tag=Set] VoteServerMode 1

execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=1..}] run function servermode:pogger_calculation