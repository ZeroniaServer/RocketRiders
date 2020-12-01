##Blatantly stolen from Meteor Miners but it works

scoreboard players remove @e[tag=ServerMode,tag=Set,type=area_effect_cloud] VoteServerMode 1
execute if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=1024..}] run scoreboard players remove @e[tag=ServerMode,tag=Set,type=area_effect_cloud] VoteServerMode 1024
execute if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=512..}] run scoreboard players remove @e[tag=ServerMode,tag=Set,type=area_effect_cloud] VoteServerMode 512
execute if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=256..}] run scoreboard players remove @e[tag=ServerMode,tag=Set,type=area_effect_cloud] VoteServerMode 256
execute if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=128..}] run scoreboard players remove @e[tag=ServerMode,tag=Set,type=area_effect_cloud] VoteServerMode 128
execute if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=64..}] run scoreboard players remove @e[tag=ServerMode,tag=Set,type=area_effect_cloud] VoteServerMode 64
execute if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=32..}] run scoreboard players remove @e[tag=ServerMode,tag=Set,type=area_effect_cloud] VoteServerMode 32
execute if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=16..}] run scoreboard players remove @e[tag=ServerMode,tag=Set,type=area_effect_cloud] VoteServerMode 16
execute if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=8..}] run scoreboard players remove @e[tag=ServerMode,tag=Set,type=area_effect_cloud] VoteServerMode 8
execute if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=4..}] run scoreboard players remove @e[tag=ServerMode,tag=Set,type=area_effect_cloud] VoteServerMode 4
execute if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=2..}] run scoreboard players remove @e[tag=ServerMode,tag=Set,type=area_effect_cloud] VoteServerMode 2
execute if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=1..}] run scoreboard players remove @e[tag=ServerMode,tag=Set,type=area_effect_cloud] VoteServerMode 1

execute if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=1..}] run function servermode:pogger_calculation