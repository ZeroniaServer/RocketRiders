scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] VoteServerMode 600

# tallying votes
execute as @a[scores={VoteNum=1}] run scoreboard players add @e[tag=ServerMode,tag=Set1,type=marker] VoteServerMode 1
execute as @a[scores={VoteNum=2}] run scoreboard players add @e[tag=ServerMode,tag=Set2,type=marker] VoteServerMode 1
execute as @a[scores={VoteNum=3}] run scoreboard players add @e[tag=ServerMode,tag=Set3,type=marker] VoteServerMode 1
execute as @a[scores={VoteNum=4}] run scoreboard players add @e[tag=ServerMode,tag=Set4,type=marker] VoteServerMode 1
scoreboard players reset @a VoteNum

# finding out what won the vote
execute as @e[tag=ServerMode,tag=Set,type=marker] store result score @s FinalVote run scoreboard players get @s VoteServerMode
execute if entity @e[tag=ServerMode,tag=Set,type=marker,scores={VoteServerMode=1..}] run function servermode:pogger_calculation
execute store result score $winners VoteServerMode if entity @e[tag=ServerMode,tag=Set,type=marker,scores={VoteServerMode=0}]

# majority winner
execute if score $winners VoteServerMode matches 1 run tag @e[tag=ServerMode,tag=Set,type=marker,scores={VoteServerMode=0},limit=1] add WonVote
execute if score $winners VoteServerMode matches 1 if score @e[tag=ServerMode,tag=Set,type=marker,tag=WonVote,limit=1] FinalVote matches 1 run tellraw @a ["",{"text":"Option ","color":"dark_green"},{"selector":"@e[tag=ServerMode,tag=Set,type=marker,tag=WonVote,limit=1]","color":"red","bold":true},{"text":" won with ","color":"dark_green"},{"text":"1","color":"green"},{"text":" vote!","color":"dark_green"}]
execute if score $winners VoteServerMode matches 1 if score @e[tag=ServerMode,tag=Set,type=marker,tag=WonVote,limit=1] FinalVote matches 2.. run tellraw @a ["",{"text":"Option ","color":"dark_green"},{"selector":"@e[tag=ServerMode,tag=Set,type=marker,tag=WonVote,limit=1]","color":"red","bold":true},{"text":" won with ","color":"dark_green"},{"score":{"name":"@e[tag=ServerMode,tag=Set,type=marker,tag=WonVote,limit=1]","objective":"FinalVote"},"color":"green"},{"text":" votes!","color":"dark_green"}]

# in case of tie, choose random
execute if score $winners VoteServerMode matches 2.. run tag @e[tag=ServerMode,tag=Set,type=marker,scores={VoteServerMode=0},limit=1,sort=random] add WonVote
execute if score $winners VoteServerMode matches 2.. run tellraw @a ["",{"text":"Due to a tie vote, option ","color":"dark_green"},{"selector":"@e[tag=ServerMode,tag=Set,type=marker,tag=WonVote,limit=1]","color":"red","bold":true},{"text":" was randomly selected.","color":"dark_green"}]
scoreboard players reset $winners VoteServerMode

# NORMAL MODE SELECTED
execute if entity @e[tag=WonVote,tag=NormalMode,type=marker] store result score @e[tag=Selection,type=armor_stand,limit=1] SetGamemode run scoreboard players get @e[tag=rr_normal,limit=1] gamemodeID

# POWERUPS MODE SELECTED
execute if entity @e[tag=WonVote,tag=PowerupsMode,type=marker] store result score @e[tag=Selection,type=armor_stand,limit=1] SetGamemode run scoreboard players get @e[tag=rr_powerups,limit=1] gamemodeID

# SWAP MODE SELECTED
execute if entity @e[tag=WonVote,tag=SwapMode,type=marker] store result score @e[tag=Selection,type=armor_stand,limit=1] SetGamemode run scoreboard players get @e[tag=rr_swap,limit=1] gamemodeID

# CTF MODE SELECTED
execute if entity @e[tag=WonVote,tag=CTFMode,type=marker] store result score @e[tag=Selection,type=armor_stand,limit=1] SetGamemode run scoreboard players get @e[tag=rr_ctf,limit=1] gamemodeID

# Select base decorations
execute if entity @e[tag=WonVote,tag=Set1,type=marker] as @e[tag=ServermodeSet1,type=marker] run function servermode:selectmap
execute if entity @e[tag=WonVote,tag=Set2,type=marker] as @e[tag=ServermodeSet2,type=marker] run function servermode:selectmap
execute if entity @e[tag=WonVote,tag=Set3,type=marker] as @e[tag=ServermodeSet3,type=marker] run function servermode:selectmap
execute if entity @e[tag=WonVote,tag=Set4,type=marker] as @e[tag=ServermodeSet4,type=marker] run function servermode:selectmap

# Item delay (CTF specific difference)
execute if entity @e[tag=WonVote,tag=CTFMode,type=marker] run scoreboard players set @e[tag=Selection,type=armor_stand] MaxItemSec 10
execute unless entity @e[tag=WonVote,tag=CTFMode,type=marker] run scoreboard players set @e[tag=Selection,type=armor_stand] MaxItemSec 15

# Global
tag @e[tag=Selection,type=armor_stand,limit=1] remove ServerModeVoting
execute as @e[tag=Selection,type=armor_stand,limit=1] run function arenaclear:areaclear
tag @e[tag=Selection,type=armor_stand,limit=1] add EditedSettings

# Select forced item sets and match settings
schedule function servermode:init_forcedsettings 2t