##Randomized splash messages for the winners of a game

summon marker ~ ~ ~ {Tags:["RandomWinSplash"]}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[tag=RandomWinSplash,type=marker] RNGmax 30

execute as @e[tag=RandomWinSplash,type=marker] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=RandomWinSplash,type=marker] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=RandomWinSplash,limit=1,type=marker] RNGscore

#Add splashes here (just copy paste the line and change the score)
execute as @e[tag=RandomWinSplash,scores={RNGscore=0..3},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Take some time to celebrate!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=4},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"GG!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=5},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Victory is mine!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=6},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Didn't even have to aim!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=7},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"EZ clap.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=8},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"I expected that to happen.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=9},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Good game!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=10},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Pro gamer move!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=11},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"PogChamp!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=12},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"I win these.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=13},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"ggezpz","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=14},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"There never was any doubt.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=15},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"It was all part of the plan!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=16},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Victory Royale!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=17},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"I got them good!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=18},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"oops","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=19},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"It was already decided beforehand.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=20},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"*Insert victory fanfare here*","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=21},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Good, now do it blindfolded.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=22},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Rekt.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=23},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Employee of the Month!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=24},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Ah, so that's what the slime block does.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=25},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Took you long enough...","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=26},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Winner winner chicken dinner!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=27},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Drink the salty tears of your enemies!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=28},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Good, now proceed to the next test chamber.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=29},type=marker] run title @a[tag=Winner] subtitle ["",{"text":"Better gaming chair ;)","color":"green"}]

kill @e[tag=RandomWinSplash,type=marker]