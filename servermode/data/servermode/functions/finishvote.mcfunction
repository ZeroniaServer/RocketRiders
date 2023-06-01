scoreboard players set @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] VoteServerMode 600

# tallying votes
execute as @a[predicate=custom:indimension,scores={VoteNum=1}] run scoreboard players add @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set1] VoteServerMode 1
execute as @a[predicate=custom:indimension,scores={VoteNum=2}] run scoreboard players add @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set2] VoteServerMode 1
execute as @a[predicate=custom:indimension,scores={VoteNum=3}] run scoreboard players add @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set3] VoteServerMode 1
execute as @a[predicate=custom:indimension,scores={VoteNum=4}] run scoreboard players add @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set4] VoteServerMode 1
execute as @a[predicate=custom:indimension,scores={VoteNum=5}] run scoreboard players add @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set5] VoteServerMode 1
execute as @a[predicate=custom:indimension,scores={VoteNum=6}] run scoreboard players add @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set6] VoteServerMode 1
scoreboard players reset @a VoteNum

# finding out what won the vote
execute as @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set] store result score @s FinalVote run scoreboard players get @s VoteServerMode
execute if entity @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=1..}] run function servermode:pogger_calculation
execute store result score $winners VoteServerMode if entity @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=0}]

# majority winner
execute if score $winners VoteServerMode matches 1 run tag @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=0},limit=1] add WonVote

# in case of tie, choose random
execute if score $winners VoteServerMode matches 2.. run tag @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=0}] add TiedVote
execute if score $winners VoteServerMode matches 2.. run tag @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set,scores={VoteServerMode=0},limit=1,sort=random] add WonVote

# Increase votes for low priority as to not make it display 0 or negative votes.
execute as @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=NormalMode] if score $NormalMode servermode matches 2 run scoreboard players add @s VoteServerMode 1
execute as @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=PowerupsMode] if score $PowerupsMode servermode matches 2 run scoreboard players add @s VoteServerMode 1
execute as @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=SwapMode] if score $SwapMode servermode matches 2 run scoreboard players add @s VoteServerMode 1
execute as @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=CTFMode] if score $CTFMode servermode matches 2 run scoreboard players add @s VoteServerMode 1
execute as @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=CrusadeMode] if score $CrusadeMode servermode matches 2 run scoreboard players add @s VoteServerMode 1

execute as @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=NormalMode] if score $NormalMode servermode matches 3.. run scoreboard players add @s VoteServerMode 3
execute as @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=PowerupsMode] if score $PowerupsMode servermode matches 3.. run scoreboard players add @s VoteServerMode 3
execute as @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=SwapMode] if score $SwapMode servermode matches 3.. run scoreboard players add @s VoteServerMode 3
execute as @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=CTFMode] if score $CTFMode servermode matches 3.. run scoreboard players add @s VoteServerMode 3
execute as @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=CrusadeMode] if score $CrusadeMode servermode matches 3.. run scoreboard players add @s VoteServerMode 3

# Announce winner
execute if score $winners VoteServerMode matches 1 if score @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1] FinalVote matches 1 run tellraw @a ["",{"selector":"@e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1]","color":"gold","bold":true},{"text":" won with ","color":"dark_green"},{"text":"1","color":"green"},{"text":" vote!","color":"dark_green"}]
execute if score $winners VoteServerMode matches 1 if score @e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1] FinalVote matches 2.. run tellraw @a ["",{"selector":"@e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1]","color":"gold","bold":true},{"text":" won with ","color":"dark_green"},{"score":{"name":"@e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1]","objective":"FinalVote"},"color":"green"},{"text":" votes!","color":"dark_green"}]
execute if score $winners VoteServerMode matches 2.. run tellraw @a ["",{"text":"There was a tie vote with the following game modes: ","color":"dark_green"},{"selector":"@e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set,tag=TiedVote]","color":"green","bold":true,"separator":{"text":", ","color":"gray","bold":false}}]
execute if score $winners VoteServerMode matches 2.. run tellraw @a ["",{"selector":"@e[predicate=custom:indimension,type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1]","color":"gold","bold":true},{"text":" was randomly selected as the winning mode.","color":"dark_green"}]
scoreboard players reset $winners VoteServerMode

# NORMAL MODE SELECTED
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=NormalMode] store result score @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,limit=1] gamemodeID

# POWERUPS MODE SELECTED
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=PowerupsMode] store result score @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[predicate=custom:indimension,type=armor_stand,tag=rr_powerups,limit=1] gamemodeID

# SWAP MODE SELECTED
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=SwapMode] store result score @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[predicate=custom:indimension,type=armor_stand,tag=rr_swap,limit=1] gamemodeID

# CTF MODE SELECTED
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=CTFMode] store result score @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[predicate=custom:indimension,type=armor_stand,tag=rr_ctf,limit=1] gamemodeID

# CRUSADE MODE SELECTED
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=CrusadeMode] store result score @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[predicate=custom:indimension,type=armor_stand,tag=rr_crusade,limit=1] gamemodeID

# CHASE MODE SELECTED
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=ChaseMode] store result score @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[predicate=custom:indimension,type=armor_stand,tag=rr_chase,limit=1] gamemodeID

# DECREASE PRIORITY LEVEL
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=NormalMode] unless score $NormalMode servermode matches 3.. run scoreboard players add $NormalMode servermode 1
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=PowerupsMode] unless score $PowerupsMode servermode matches 3.. run scoreboard players add $PowerupsMode servermode 1
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=SwapMode] unless score $SwapMode servermode matches 3.. run scoreboard players add $SwapMode servermode 1
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=CTFMode] unless score $CTFMode servermode matches 3.. run scoreboard players add $CTFMode servermode 1
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=CrusadeMode] unless score $CrusadeMode servermode matches 3.. run scoreboard players add $CrusadeMode servermode 1
execute as @e[predicate=custom:indimension,type=marker,tag=WonVote] run scoreboard players add $GameCount servermode 1

# INCREASE PRIORITY LEVEL
execute if score $GameCount servermode matches 2.. unless entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=NormalMode] if score $NormalMode servermode matches 1.. run summon marker -64 191 78 {Tags:["ServerMode","PriorityTemp","NormalMode"]}
execute if score $GameCount servermode matches 2.. unless entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=PowerupsMode] if score $PowerupsMode servermode matches 1.. run summon marker -64 191 78 {Tags:["ServerMode","PriorityTemp","PowerupsMode"]}
execute if score $GameCount servermode matches 2.. unless entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=SwapMode] if score $SwapMode servermode matches 1.. run summon marker -64 191 78 {Tags:["ServerMode","PriorityTemp","SwapMode"]}
execute if score $GameCount servermode matches 2.. unless entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=CTFMode] if score $CTFMode servermode matches 1.. run summon marker -64 191 78 {Tags:["ServerMode","PriorityTemp","CTFMode"]}
execute if score $GameCount servermode matches 2.. unless entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=CrusadeMode] if score $CrusadeMode servermode matches 1.. run summon marker -64 191 78 {Tags:["ServerMode","PriorityTemp","CrusadeMode"]}
tag @e[predicate=custom:indimension,type=marker,tag=PriorityTemp,limit=2,sort=random] add PriorityPick
execute as @e[predicate=custom:indimension,type=marker,tag=PriorityPick,tag=NormalMode] run scoreboard players remove $NormalMode servermode 1
execute as @e[predicate=custom:indimension,type=marker,tag=PriorityPick,tag=PowerupsMode] run scoreboard players remove $PowerupsMode servermode 1
execute as @e[predicate=custom:indimension,type=marker,tag=PriorityPick,tag=SwapMode] run scoreboard players remove $SwapMode servermode 1
execute as @e[predicate=custom:indimension,type=marker,tag=PriorityPick,tag=CTFMode] run scoreboard players remove $CTFMode servermode 1
execute as @e[predicate=custom:indimension,type=marker,tag=PriorityPick,tag=CrusadeMode] run scoreboard players remove $CrusadeMode servermode 1
execute if score $GameCount servermode matches 2.. run scoreboard players set $GameCount servermode 0
kill @e[predicate=custom:indimension,type=marker,tag=PriorityTemp]

# Select base decorations
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=Set1] as @e[predicate=custom:indimension,type=marker,tag=ServermodeSet1] run function servermode:selectmap
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=Set2] as @e[predicate=custom:indimension,type=marker,tag=ServermodeSet2] run function servermode:selectmap
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=Set3] as @e[predicate=custom:indimension,type=marker,tag=ServermodeSet3] run function servermode:selectmap
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=Set4] as @e[predicate=custom:indimension,type=marker,tag=ServermodeSet4] run function servermode:selectmap
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=Set5] as @e[predicate=custom:indimension,type=marker,tag=ServermodeSet5] run function servermode:selectmap
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=Set6] as @e[predicate=custom:indimension,type=marker,tag=ServermodeSet6] run function servermode:selectmap

# Item delay (CTF/Crusade specific difference)
execute unless entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=!CTFMode,tag=!CrusadeMode] run scoreboard players set @e[predicate=custom:indimension,type=armor_stand,tag=Selection] MaxItemSec 10
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=!CTFMode,tag=!CrusadeMode] run scoreboard players set @e[predicate=custom:indimension,type=armor_stand,tag=Selection] MaxItemSec 15

# Item stacking (Crusade specific difference)
execute unless entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=!CrusadeMode,tag=!ChaseMode] run tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] add doStacking
execute if entity @e[predicate=custom:indimension,type=marker,tag=WonVote,tag=!CrusadeMode,tag=!ChaseMode] run tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] remove doStacking

# Global
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] remove ServerModeVoting
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!needsForceClear,limit=1] run function arenaclear:testvalidclear
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=needsForceClear,limit=1] run function arenaclear:forceareaclear

# Select forced item sets and match settings
schedule function servermode:init_forcedsettings 2t