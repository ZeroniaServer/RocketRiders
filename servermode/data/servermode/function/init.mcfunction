scoreboard objectives add servermode dummy
scoreboard objectives add VoteServerMode trigger
scoreboard objectives add FinalVote dummy
scoreboard objectives add VoteNum dummy
scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] servermode 0