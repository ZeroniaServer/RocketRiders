scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] VoteServerMode 600

# Close voting ballot
dialog clear @a[x=0]

# tallying votes
execute as @a[x=0,scores={VoteNum=1}] run summon marker ~ ~ ~ {Tags:["ServerModeVote","ServerModeVote1"]}
execute as @a[x=0,scores={VoteNum=2}] run summon marker ~ ~ ~ {Tags:["ServerModeVote","ServerModeVote2"]}
execute as @a[x=0,scores={VoteNum=3}] run summon marker ~ ~ ~ {Tags:["ServerModeVote","ServerModeVote3"]}
execute as @a[x=0,scores={VoteNum=4}] run summon marker ~ ~ ~ {Tags:["ServerModeVote","ServerModeVote4"]}
execute as @a[x=0,scores={VoteNum=5}] run summon marker ~ ~ ~ {Tags:["ServerModeVote","ServerModeVote5"]}
execute as @a[x=0,scores={VoteNum=6}] run summon marker ~ ~ ~ {Tags:["ServerModeVote","ServerModeVote6"]}
scoreboard players reset @a[x=0] VoteNum

execute unless entity @e[x=0,type=marker,tag=ServerModeVote] run tag @e[x=0,type=marker,tag=ServerMode,tag=Set,limit=1,sort=random] add WonVote

# finding out what won the vote
tag @e[x=0,limit=1,type=marker,tag=ServerModeVote] add WonVote
execute as @e[x=0,limit=1,type=marker,tag=ServerModeVote1,tag=WonVote] run tag @e[x=0,type=marker,tag=ServerMode,tag=Set1,limit=1] add WonVote
execute as @e[x=0,limit=1,type=marker,tag=ServerModeVote2,tag=WonVote] run tag @e[x=0,type=marker,tag=ServerMode,tag=Set2,limit=1] add WonVote
execute as @e[x=0,limit=1,type=marker,tag=ServerModeVote3,tag=WonVote] run tag @e[x=0,type=marker,tag=ServerMode,tag=Set3,limit=1] add WonVote
execute as @e[x=0,limit=1,type=marker,tag=ServerModeVote4,tag=WonVote] run tag @e[x=0,type=marker,tag=ServerMode,tag=Set4,limit=1] add WonVote
execute as @e[x=0,limit=1,type=marker,tag=ServerModeVote5,tag=WonVote] run tag @e[x=0,type=marker,tag=ServerMode,tag=Set5,limit=1] add WonVote
execute as @e[x=0,limit=1,type=marker,tag=ServerModeVote6,tag=WonVote] run tag @e[x=0,type=marker,tag=ServerMode,tag=Set6,limit=1] add WonVote

# Announce winner
execute if entity @e[x=0,limit=1,type=marker,tag=ServerModeVote] run tellraw @a[x=0] ["",{bold:true,color:"gold",selector:"@e[x=0,type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1]"},{color:"#ca00ca",text:" won the vote!"}]
execute unless entity @e[x=0,limit=1,type=marker,tag=ServerModeVote] run tellraw @a[x=0] [{color:"#ca00ca",text:"No one voted, so "},{bold:true,color:"gold",selector:"@e[x=0,type=marker,tag=ServerMode,tag=Set,tag=WonVote,limit=1]"},{color:"#ca00ca",text:" was randomly selected."}]
kill @e[x=0,type=marker,tag=ServerModeVote]

# NORMAL MODE SELECTED
execute if entity @e[x=0,type=marker,tag=WonVote,tag=NormalMode] store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[x=0,type=armor_stand,tag=rr_normal,limit=1] gamemodeID

# POWERUPS MODE SELECTED
execute if entity @e[x=0,type=marker,tag=WonVote,tag=PowerupsMode] store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] gamemodeID

# SWAP MODE SELECTED
execute if entity @e[x=0,type=marker,tag=WonVote,tag=SwapMode] store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[x=0,type=armor_stand,tag=rr_swap,limit=1] gamemodeID

# CTF MODE SELECTED
execute if entity @e[x=0,type=marker,tag=WonVote,tag=CTFMode] store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] gamemodeID

# CRUSADE MODE SELECTED
execute if entity @e[x=0,type=marker,tag=WonVote,tag=CrusadeMode] store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[x=0,type=armor_stand,tag=rr_crusade,limit=1] gamemodeID

# CHASE MODE SELECTED
execute if entity @e[x=0,type=marker,tag=WonVote,tag=ChaseMode] store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[x=0,type=armor_stand,tag=rr_chase,limit=1] gamemodeID

# Reset config
function game:config/reset

# 1% chance of classic colors
execute if predicate {condition:"random_chance",chance:0.01} run scoreboard players set $classic_team_colors config 1

# Select base decorations
execute if entity @e[x=0,type=marker,tag=WonVote,tag=Set1] as @e[x=0,type=marker,tag=ServermodeSet1] run function servermode:selectmap
execute if entity @e[x=0,type=marker,tag=WonVote,tag=Set2] as @e[x=0,type=marker,tag=ServermodeSet2] run function servermode:selectmap
execute if entity @e[x=0,type=marker,tag=WonVote,tag=Set3] as @e[x=0,type=marker,tag=ServermodeSet3] run function servermode:selectmap
execute if entity @e[x=0,type=marker,tag=WonVote,tag=Set4] as @e[x=0,type=marker,tag=ServermodeSet4] run function servermode:selectmap
execute if entity @e[x=0,type=marker,tag=WonVote,tag=Set5] as @e[x=0,type=marker,tag=ServermodeSet5] run function servermode:selectmap
execute if entity @e[x=0,type=marker,tag=WonVote,tag=Set6] as @e[x=0,type=marker,tag=ServermodeSet6] run function servermode:selectmap

# Item delay (CTF/Crusade specific difference)
scoreboard players reset $item_delay config
execute unless entity @e[x=0,type=marker,tag=WonVote,tag=!CTFMode,tag=!CrusadeMode] run scoreboard players set $item_delay config 10

# Global
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ServerModeVoting
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!needsForceClear] run function arenaclear:testvalidclear
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=needsForceClear] run function arenaclear:forceareaclear