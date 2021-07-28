##Randomized splash messages for the winners of a game

summon marker ~ ~ ~ {Tags:["RandomWinSplash"]}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[type=marker,tag=RandomWinSplash] RNGmax 38

execute as @e[type=marker,tag=RandomWinSplash] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=RandomWinSplash] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[type=marker,tag=RandomWinSplash,limit=1] RNGscore

#Add splashes here (just copy paste the line and change the score)
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=0..3}] run title @a[tag=Winner] subtitle ["",{"text":"Take some time to celebrate!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=4}] run title @a[tag=Winner] subtitle ["",{"text":"GG!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=5}] run title @a[tag=Winner] subtitle ["",{"text":"Victory is ours!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=6}] run title @a[tag=Winner] subtitle ["",{"text":"Didn't even have to aim!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=7}] run title @a[tag=Winner] subtitle ["",{"text":"EZ clap.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=8}] run title @a[tag=Winner] subtitle ["",{"text":"We expected that to happen.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=9}] run title @a[tag=Winner] subtitle ["",{"text":"Good game!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=10}] run title @a[tag=Winner] subtitle ["",{"text":"Pro gamer move!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=11}] run title @a[tag=Winner] subtitle ["",{"text":"PogChamp!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=12}] run title @a[tag=Winner] subtitle ["",{"text":"We win these.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=13}] run title @a[tag=Winner] subtitle ["",{"text":"ggezpz","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=14}] run title @a[tag=Winner] subtitle ["",{"text":"There never was any doubt.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=15}] run title @a[tag=Winner] subtitle ["",{"text":"It was all part of the plan!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=16}] run title @a[tag=Winner] subtitle ["",{"text":"Victory Royale!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=17}] run title @a[tag=Winner] subtitle ["",{"text":"We got them good!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=18}] run title @a[tag=Winner,team=Yellow] subtitle ["",{"text":"We did it boys, Blue is no more.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=18}] run title @a[tag=Winner,team=Blue] subtitle ["",{"text":"We did it boys, Yellow is no more.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=19}] run title @a[tag=Winner] subtitle ["",{"text":"oops","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=20}] run title @a[tag=Winner] subtitle ["",{"text":"It was already decided beforehand.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=21}] run title @a[tag=Winner] subtitle ["",{"text":"*Insert victory fanfare here*","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=22}] run title @a[tag=Winner] subtitle ["",{"text":"Good, now do it blindfolded.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=23}] run title @a[tag=Winner] subtitle ["",{"text":"Rekt.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=24}] run title @a[tag=Winner] subtitle ["",{"text":"Employee of the Month!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=25}] run title @a[tag=Winner] subtitle ["",{"text":"Ah, so that's what the slime block does.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=26}] run title @a[tag=Winner] subtitle ["",{"text":"Took you long enough...","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=27}] run title @a[tag=Winner] subtitle ["",{"text":"get carried lmao","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=28}] run title @a[tag=Winner] subtitle ["",{"text":"Winner winner chicken dinner!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=29}] run title @a[tag=Winner,team=Yellow] subtitle ["",{"text":"Blue was ejected.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=29}] run title @a[tag=Winner,team=Blue] subtitle ["",{"text":"Yellow was ejected.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=30}] run title @a[tag=Winner] subtitle ["",{"text":"Drink the salty tears of your enemies!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=31}] run title @a[tag=Winner] subtitle ["",{"text":"Good, now proceed to the next test chamber.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=32}] run title @a[tag=Winner] subtitle ["",{"text":"Better gaming chairs ;)","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=33}] run title @a[tag=Winner] subtitle ["",{"text":"this is very","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=34}] run title @a[tag=Winner] subtitle ["",{"text":"It's coming home!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=35}] run title @a[tag=Winner] subtitle ["",{"text":"It's coming ","color":"green"},{"text":"h","color":"green","obfuscated":"true"},{"text":"Rome!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=36}] run title @a[tag=Winner] subtitle ["",{"text":"Knock knock, who's there? Nuclear warfare!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=37}] run title @a[tag=Winner] subtitle ["",{"text":"Imagine losing","color":"green"}]

kill @e[type=marker,tag=RandomWinSplash]