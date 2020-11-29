scoreboard players add @e[tag=Selection] VoteServerMode 1
scoreboard players add @e[tag=ServerMode] VoteServerMode 0

execute as @a[scores={VoteServerMode=1}] at @s run scoreboard players add @e[tag=ServerMode,tag=Set1] VoteServerMode 1
execute as @a[scores={VoteServerMode=2}] at @s run scoreboard players add @e[tag=ServerMode,tag=Set2] VoteServerMode 1
execute as @a[scores={VoteServerMode=3}] at @s run scoreboard players add @e[tag=ServerMode,tag=Set3] VoteServerMode 1
execute as @a[scores={VoteServerMode=4}] at @s run scoreboard players add @e[tag=ServerMode,tag=Set4] VoteServerMode 1

execute as @a[scores={VoteServerMode=5..}] at @s run tellraw @s {"text":"Invalid vote! Please try again.","color":"red"}
execute as @a[scores={VoteServerMode=5..}] at @s run scoreboard players enable @s VoteServerMode
execute as @a[scores={VoteServerMode=5..}] at @s run scoreboard players set @s VoteServerMode 0

execute as @a[scores={VoteServerMode=1..4}] run tellraw @s {"text":"You've successfully voted for game settings! Please wait for the voting time to end.","color":"green"}
scoreboard players reset @a[scores={VoteServerMode=1..4}] VoteServerMode


# if statement spaghetti for finding out who won the vote
execute as @e[tag=Selection,scores={VoteServerMode=600..}] if score @e[tag=Set1,limit=1] VoteServerMode > @e[tag=Set2,limit=1] VoteServerMode if score @e[tag=Set1,limit=1] VoteServerMode > @e[tag=Set3,limit=1] VoteServerMode if score @e[tag=Set1,limit=1] VoteServerMode > @e[tag=Set4,limit=1] VoteServerMode run tag @e[tag=Set1] add WonVote
execute as @e[tag=Selection,scores={VoteServerMode=600..}] if score @e[tag=Set2,limit=1] VoteServerMode > @e[tag=Set1,limit=1] VoteServerMode if score @e[tag=Set2,limit=1] VoteServerMode > @e[tag=Set3,limit=1] VoteServerMode if score @e[tag=Set2,limit=1] VoteServerMode > @e[tag=Set4,limit=1] VoteServerMode run tag @e[tag=Set2] add WonVote
execute as @e[tag=Selection,scores={VoteServerMode=600..}] if score @e[tag=Set3,limit=1] VoteServerMode > @e[tag=Set1,limit=1] VoteServerMode if score @e[tag=Set3,limit=1] VoteServerMode > @e[tag=Set2,limit=1] VoteServerMode if score @e[tag=Set3,limit=1] VoteServerMode > @e[tag=Set4,limit=1] VoteServerMode run tag @e[tag=Set3] add WonVote
execute as @e[tag=Selection,scores={VoteServerMode=600..}] if score @e[tag=Set4,limit=1] VoteServerMode > @e[tag=Set2,limit=1] VoteServerMode if score @e[tag=Set4,limit=1] VoteServerMode > @e[tag=Set3,limit=1] VoteServerMode if score @e[tag=Set4,limit=1] VoteServerMode > @e[tag=Set1,limit=1] VoteServerMode run tag @e[tag=Set4] add WonVote
execute as @e[tag=Selection,scores={VoteServerMode=600..}] if score @e[tag=Set1,limit=1] VoteServerMode = @e[tag=Set2,limit=1] VoteServerMode if score @e[tag=Set1,limit=1] VoteServerMode = @e[tag=Set3,limit=1] VoteServerMode if score @e[tag=Set1,limit=1] VoteServerMode = @e[tag=Set4,limit=1] VoteServerMode run tag @e[tag=Set1] add WonVote

# NORMAL MODE SELECTED
execute as @e[tag=Selection,scores={VoteServerMode=600..}] if entity @e[tag=WonVote,tag=NormalMode] run function rr_normal:enable

# POWERUPS MODE SELECTED
execute as @e[tag=Selection,scores={VoteServerMode=600..}] if entity @e[tag=WonVote,tag=PowerupsMode] run function rr_powerups:enable

# SWAP MODE SELECTED
execute as @e[tag=Selection,scores={VoteServerMode=600..}] if entity @e[tag=WonVote,tag=SwapMode] run function rr_swap:enable

# CTF MODE SELECTED
execute as @e[tag=Selection,scores={VoteServerMode=600..}] if entity @e[tag=WonVote,tag=CTFMode] run function rr_ctf:enable

# CHASE MODE SELECTED
execute as @e[tag=Selection,scores={VoteServerMode=600..}] if entity @e[tag=WonVote,tag=ChaseMode] run function rr_chase:enable



# Global
execute as @e[tag=Selection,scores={VoteServerMode=600..}] run tag @e[tag=Selection] remove ServerModeVoting
execute as @e[tag=Selection,scores={VoteServerMode=600..}] run function arenaclear:areaclear