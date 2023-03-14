##Randomized splash messages for the winners of a game

summon marker ~ ~ ~ {Tags:["RandomWinSplash"]}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[type=marker,tag=RandomWinSplash] RNGmax 75

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
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=35}] run title @a[tag=Winner] subtitle ["",{"text":"It's coming ","color":"green"},{"text":"h","color":"green","obfuscated":true},{"text":"Rome!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=36}] run title @a[tag=Winner] subtitle ["",{"text":"Knock knock, who's there? Nuclear warfare!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=37}] run title @a[tag=Winner] subtitle ["",{"text":"Imagine losing","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=38}] run title @a[tag=Winner,team=Yellow] subtitle ["",{"text":"Bet Yellow won, I just know it!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=38}] run title @a[tag=Winner,team=Blue] subtitle ["",{"text":"Bet Blue won, I just know it!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=39}] run title @a[tag=Winner] subtitle ["",{"text":"MISSILE WENT BOOM!!!!!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=40}] run title @a[tag=Winner] subtitle ["",{"text":"Somewhere, Goldy smiles on you.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=41}] run title @a[tag=Winner] subtitle ["",{"text":"Ez carry","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=42}] run title @a[tag=Winner] subtitle ["",{"text":"¯\\_(ツ)_/¯","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=43}] run title @a[tag=Winner] subtitle ["",{"text":"Nobody expected this!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=44}] run title @a[tag=Winner] subtitle ["",{"text":"less go","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=45}] run title @a[tag=Winner] subtitle ["",{"text":"Stonks ↑","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=46}] run title @a[tag=Winner] subtitle ["",{"text":"Kalm","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=47}] run title @a[tag=Winner] subtitle ["",{"text":"Oops, wrong button.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=48}] run title @a[tag=Winner] subtitle ["",{"text":"We are superior!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=49}] run title @a[tag=Winner] subtitle ["",{"text":"Alpha missile!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=50}] run title @a[tag=Winner] subtitle ["",{"text":"In Britain, they call this a chuffing success!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=51}] run title @a[tag=Winner] subtitle ["",{"text":"We do a little gaming","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=52}] run title @a[tag=Winner] subtitle ["",{"text":"-1 ping","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=53}] run title @a[tag=Winner] subtitle ["",{"text":"Cracked the launch codes B)","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=54}] run title @a[tag=Winner] subtitle ["",{"text":"+100 Rocket Bucks!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=55}] run title @a[tag=Winner] subtitle ["",{"text":"You got lucky this time...","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=56}] run title @a[tag=Winner] subtitle ["",{"text":"Get fake.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=57}] run title @a[tag=Winner] subtitle ["",{"text":"I'll never see this message! - Evtema3","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=58}] run title @a[tag=Winner] subtitle ["",{"text":"The cake wasn't fake ;)","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=59}] run title @a[tag=Winner] subtitle ["",{"text":"Showed your DynaMIGHT!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=60}] run title @a[tag=Winner] subtitle ["",{"text":"Just like the Allay!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=61}] run title @a[tag=Winner] subtitle ["",{"text":"Pineapples!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=62}] run title @a[tag=Winner] subtitle ["",{"text":"Good, but can you parallel park your rocket?","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=63}] run title @a[tag=Winner] subtitle ["",{"text":"Tutorial complete!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=64}] run title @a[tag=Winner] subtitle ["",{"text":"456,000,000₩","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=65}] run title @a[tag=Winner] subtitle ["",{"text":"You're da bomb!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=66}] run title @a[tag=Winner] subtitle ["",{"text":"RR actually stands for Reject Realms!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=67}] run title @a[tag=Winner] subtitle ["",{"text":"What is that I hear? Sounds like skill issue.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=68}] run title @a[tag=Winner] subtitle ["",{"text":"Hey wait, did they grief themselves?","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=69}] run title @a[tag=Winner] subtitle ["",{"text":"Well done, medal is at -224 77 29 (pranked)","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=70}] run title @a[tag=Winner] subtitle ["",{"text":"Now, was that so hard?","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=71}] run title @a[tag=Winner] subtitle ["",{"text":"Yes Rico, kaboom.","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=72}] run title @a[tag=Winner] subtitle ["",{"text":"Hasta la vista, baby!","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=73}] run title @a[tag=Winner] subtitle ["",{"text":"W","color":"green"}]
execute as @e[type=marker,tag=RandomWinSplash,scores={RNGscore=74}] run title @a[tag=Winner] subtitle ["",{"text":"The ","color":"green"},{"text":"Rock","color":"green","bold":true},{"text":" really came through!","color":"green"}]

kill @e[type=marker,tag=RandomWinSplash]