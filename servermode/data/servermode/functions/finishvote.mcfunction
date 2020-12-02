# finding out what won the vote
execute as @e[tag=ServerMode,tag=Set,type=area_effect_cloud] store result score @s FinalVote run scoreboard players get @s VoteServerMode
function servermode:pogger_calculation
execute store result score $winners VoteServerMode if entity @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=0}]

# majority winner
execute if score $winners VoteServerMode matches 1 run tag @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=0},limit=1] add WonVote
execute if score $winners VoteServerMode matches 1 if score @e[tag=ServerMode,tag=Set,type=area_effect_cloud,tag=WonVote,limit=1] FinalVote matches 1 run tellraw @a ["",{"text":"Option ","color":"green"},{"selector":"@e[tag=ServerMode,tag=Set,type=area_effect_cloud,tag=WonVote,limit=1]","color":"red","bold":"true"},{"text":" won with ","color":"green"},{"text":"1","color":"dark_green"},{"text":" vote!","color":"green"}]
execute if score $winners VoteServerMode matches 1 if score @e[tag=ServerMode,tag=Set,type=area_effect_cloud,tag=WonVote,limit=1] FinalVote matches 2.. run tellraw @a ["",{"text":"Option ","color":"green"},{"selector":"@e[tag=ServerMode,tag=Set,type=area_effect_cloud,tag=WonVote,limit=1]","color":"red","bold":"true"},{"text":" won with ","color":"green"},{"score":{"name":"@e[tag=ServerMode,tag=Set,type=area_effect_cloud,tag=WonVote,limit=1]","objective":"FinalVote"},"color":"dark_green"},{"text":" votes!","color":"green"}]

# in case of tie, choose random
execute if score $winners VoteServerMode matches 2.. run tag @e[tag=ServerMode,tag=Set,type=area_effect_cloud,scores={VoteServerMode=0},limit=1,sort=random] add WonVote
execute if score $winners VoteServerMode matches 2.. run tellraw @a ["",{"text":"Due to a tie vote, option ","color":"green"},{"selector":"@e[tag=ServerMode,tag=Set,type=area_effect_cloud,tag=WonVote,limit=1]","color":"red","bold":"true"},{"text":" was randomly selected.","color":"green"}]
scoreboard players reset $winners VoteServerMode

# NORMAL MODE SELECTED
execute if entity @e[tag=WonVote,tag=NormalMode,type=area_effect_cloud] store result score @s SetGamemode run scoreboard players get @e[tag=rr_normal,limit=1] gamemodeID

# POWERUPS MODE SELECTED
execute if entity @e[tag=WonVote,tag=PowerupsMode,type=area_effect_cloud] store result score @s SetGamemode run scoreboard players get @e[tag=rr_powerups,limit=1] gamemodeID

# SWAP MODE SELECTED
execute if entity @e[tag=WonVote,tag=SwapMode,type=area_effect_cloud] store result score @s SetGamemode run scoreboard players get @e[tag=rr_swap,limit=1] gamemodeID

# CTF MODE SELECTED
execute if entity @e[tag=WonVote,tag=CTFMode,type=area_effect_cloud] store result score @s SetGamemode run scoreboard players get @e[tag=rr_ctf,limit=1] gamemodeID

# CHASE MODE SELECTED
execute if entity @e[tag=WonVote,tag=ChaseMode,type=area_effect_cloud] store result score @s SetGamemode run scoreboard players get @e[tag=rr_chase,limit=1] gamemodeID

# Select base decorations
execute if entity @e[tag=WonVote,tag=Set1,type=area_effect_cloud] as @e[tag=ServermodeSet1,type=area_effect_cloud] run function servermode:selectmap
execute if entity @e[tag=WonVote,tag=Set2,type=area_effect_cloud] as @e[tag=ServermodeSet2,type=area_effect_cloud] run function servermode:selectmap
execute if entity @e[tag=WonVote,tag=Set3,type=area_effect_cloud] as @e[tag=ServermodeSet3,type=area_effect_cloud] run function servermode:selectmap
execute if entity @e[tag=WonVote,tag=Set4,type=area_effect_cloud] as @e[tag=ServermodeSet4,type=area_effect_cloud] run function servermode:selectmap

# TODO SELECT ITEM SETS

# Global
tag @s remove ServerModeVoting
function arenaclear:areaclear