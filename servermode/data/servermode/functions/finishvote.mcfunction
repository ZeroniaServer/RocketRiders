scoreboard players set @e[type=armor_stand,tag=Selection,limit=1] VoteServerMode 600

# tallying votes
execute as @a[scores={VoteNum=1}] run scoreboard players add @e[type=marker,tag=ServerMode,tag=Set1] VoteServerMode 1
execute as @a[scores={VoteNum=2}] run scoreboard players add @e[type=marker,tag=ServerMode,tag=Set2] VoteServerMode 1
execute as @a[scores={VoteNum=3}] run scoreboard players add @e[type=marker,tag=ServerMode,tag=Set3] VoteServerMode 1
execute as @a[scores={VoteNum=4}] run scoreboard players add @e[type=marker,tag=ServerMode,tag=Set4] VoteServerMode 1
scoreboard players reset @a VoteNum

# finding out what won the vote
execute as @e[type=marker,tag=ServerMode,tag=Set] store result score @s FinalVote run scoreboard players get @s VoteServerMode
execute if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=1..}] run function servermode:pogger_calculation
execute store result score $winners VoteServerMode if entity @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=0}]

# majority winner
execute if score $winners VoteServerMode matches 1 run tag @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=0},limit=1] add WonVote
execute if score $winners VoteServerMode matches 1 if score @e[type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1] FinalVote matches 1 run tellraw @a ["",{"text":"Option ","color":"dark_green"},{"selector":"@e[type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1]","color":"red","bold":true},{"text":" won with ","color":"dark_green"},{"text":"1","color":"green"},{"text":" vote!","color":"dark_green"}]
execute if score $winners VoteServerMode matches 1 if score @e[type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1] FinalVote matches 2.. run tellraw @a ["",{"text":"Option ","color":"dark_green"},{"selector":"@e[type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1]","color":"red","bold":true},{"text":" won with ","color":"dark_green"},{"score":{"name":"@e[type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1]","objective":"FinalVote"},"color":"green"},{"text":" votes!","color":"dark_green"}]

# in case of tie, choose random
execute if score $winners VoteServerMode matches 2.. run tag @e[type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=0},limit=1,sort=random] add WonVote
execute if score $winners VoteServerMode matches 2.. run tellraw @a ["",{"text":"Due to a tie vote, option ","color":"dark_green"},{"selector":"@e[type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1]","color":"red","bold":true},{"text":" was randomly selected.","color":"dark_green"}]
scoreboard players reset $winners VoteServerMode

# NORMAL MODE SELECTED
execute if entity @e[type=marker,tag=WonVote,tag=NormalMode] store result score @e[type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID

# POWERUPS MODE SELECTED
execute if entity @e[type=marker,tag=WonVote,tag=PowerupsMode] store result score @e[type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[type=armor_stand,tag=rr_powerups,limit=1] gamemodeID

# SWAP MODE SELECTED
execute if entity @e[type=marker,tag=WonVote,tag=SwapMode] store result score @e[type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[type=armor_stand,tag=rr_swap,limit=1] gamemodeID

# CTF MODE SELECTED
execute if entity @e[type=marker,tag=WonVote,tag=CTFMode] store result score @e[type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[type=armor_stand,tag=rr_ctf,limit=1] gamemodeID

# CRUSADE MODE SELECTED
execute if entity @e[type=marker,tag=WonVote,tag=CrusadeMode] store result score @e[type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[type=armor_stand,tag=rr_crusade,limit=1] gamemodeID

# Select base decorations
execute if entity @e[type=marker,tag=WonVote,tag=Set1] as @e[type=marker,tag=ServermodeSet1] run function servermode:selectmap
execute if entity @e[type=marker,tag=WonVote,tag=Set2] as @e[type=marker,tag=ServermodeSet2] run function servermode:selectmap
execute if entity @e[type=marker,tag=WonVote,tag=Set3] as @e[type=marker,tag=ServermodeSet3] run function servermode:selectmap

# Item delay (CTF/Crusade specific difference)
execute unless entity @e[type=marker,tag=WonVote,tag=!CTFMode,tag=!CrusadeMode] run scoreboard players set @e[type=armor_stand,tag=Selection] MaxItemSec 10
execute if entity @e[type=marker,tag=WonVote,tag=!CTFMode,tag=!CrusadeMode] run scoreboard players set @e[type=armor_stand,tag=Selection] MaxItemSec 15

# Item stacking (Crusade specific difference)
execute if entity @e[type=marker,tag=WonVote,tag=CrusadeMode] run tag @e[type=armor_stand,tag=Selection] add doStacking
execute unless entity @e[type=marker,tag=WonVote,tag=CrusadeMode] run tag @e[type=armor_stand,tag=Selection] remove doStacking

# Global
tag @e[type=armor_stand,tag=Selection,limit=1] remove ServerModeVoting
execute as @e[type=armor_stand,tag=Selection,tag=!needsForceClear,limit=1] run function arenaclear:testvalidclear
execute as @e[type=armor_stand,tag=Selection,tag=needsForceClear,limit=1] run function arenaclear:forceareaclear
tag @e[type=armor_stand,tag=Selection,limit=1] add EditedSettings

# Select forced item sets and match settings
schedule function servermode:init_forcedsettings 2t