##Randomized splash messages for the winners of a game

summon area_effect_cloud ~ ~ ~ {Tags:["RandomWinSplash"],Duration:2000000000}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[tag=RandomWinSplash,type=area_effect_cloud] RNGmax 26

execute as @e[tag=RandomWinSplash,type=area_effect_cloud] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=RandomWinSplash,type=area_effect_cloud] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=RandomWinSplash,limit=1,type=area_effect_cloud] RNGscore

#Add splashes here (just copy paste the line and change the score)
execute as @e[tag=RandomWinSplash,scores={RNGscore=0..3},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"Take some time to celebrate!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=4},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"GG!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=5},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"Victory is mine!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=6},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"Didn't even have to aim!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=7},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"EZ clap.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=8},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"I expected that to happen.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=9},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"Good game!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=10},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"Pro gamer move!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=11},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"PogChamp!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=12},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"I win these.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=13},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"ggezpz","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=14},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"There never was any doubt.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=15},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"It was all part of the plan!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=16},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"Victory Royale!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=17},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"I got them good!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=18},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"oops","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=19},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"It was already decided beforehand.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=20},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"*Insert victory fanfare here*","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=21},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"Good, now do it blindfolded.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=22},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"Rekt.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=23},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"Employee of the Month!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=24},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"Ah, so that's what the slime block does.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=25},type=area_effect_cloud] run title @a[tag=Winner] subtitle ["",{"text":"Took you long enough...","color":"green"}]

kill @e[tag=RandomWinSplash,type=area_effect_cloud]