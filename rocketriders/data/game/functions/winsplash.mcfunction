##Randomized splash messages for the winners of a game

summon area_effect_cloud ~ ~ ~ {Tags:["RandomWinSplash"],Duration:2000000000}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[tag=RandomWinSplash] RNGmax 22

execute as @e[tag=RandomWinSplash] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=RandomWinSplash] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=RandomWinSplash,limit=1] RNGscore

#Add splashes here (just copy paste the line and change the score)
execute as @e[tag=RandomWinSplash,scores={RNGscore=0..3}] run title @a[tag=Winner] subtitle ["",{"text":"Take some time to celebrate!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=4}] run title @a[tag=Winner] subtitle ["",{"text":"GG!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=5}] run title @a[tag=Winner] subtitle ["",{"text":"Victory is ours!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=6}] run title @a[tag=Winner] subtitle ["",{"text":"Didn't even have to aim!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=7}] run title @a[tag=Winner] subtitle ["",{"text":"EZ clap.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=8}] run title @a[tag=Winner] subtitle ["",{"text":"We expected that to happen.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=9}] run title @a[tag=Winner] subtitle ["",{"text":"Good game!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=10}] run title @a[tag=Winner] subtitle ["",{"text":"Pro gamer move!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=11}] run title @a[tag=Winner] subtitle ["",{"text":"PogChamp!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=12}] run title @a[tag=Winner] subtitle ["",{"text":"We win these.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=13}] run title @a[tag=Winner] subtitle ["",{"text":"ggezpz","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=14}] run title @a[tag=Winner] subtitle ["",{"text":"There never was any doubt.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=15}] run title @a[tag=Winner] subtitle ["",{"text":"It was all part of the plan!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=16}] run title @a[tag=Winner] subtitle ["",{"text":"Victory Royale!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=17}] run title @a[tag=Winner] subtitle ["",{"text":"We got them good!","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=18}] run title @a[tag=Winner,team=Yellow] subtitle ["",{"text":"We did it boys, Blue is no more.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=18}] run title @a[tag=Winner,team=Blue] subtitle ["",{"text":"We did it boys, Yellow is no more.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=19}] run title @a[tag=Winner] subtitle ["",{"text":"oops","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=20}] run title @a[tag=Winner] subtitle ["",{"text":"It was already decided beforehand.","color":"green"}]
execute as @e[tag=RandomWinSplash,scores={RNGscore=21}] run title @a[tag=Winner] subtitle ["",{"text":"*Insert victory fanfare here*","color":"green"}]

kill @e[tag=RandomWinSplash]