##Randomized splash messages for the losers of a game

summon area_effect_cloud ~ ~ ~ {Tags:["RandomLossSplash"],Duration:2000000000}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[tag=RandomLossSplash,type=area_effect_cloud] RNGmax 29

execute as @e[tag=RandomLossSplash,type=area_effect_cloud] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=RandomLossSplash,type=area_effect_cloud] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=RandomLossSplash,limit=1,type=area_effect_cloud] RNGscore

#Add splashes here (just copy paste the line and change the score)
execute as @e[tag=RandomLossSplash,scores={RNGscore=0..3},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"Better luck next time...","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=4},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"At least we have a cool flag now?","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=5},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"Exceeded missile deployment limit.","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=6},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"Huh, I swear I saw portals there before.","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=7},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"I call hacks!","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=8},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"At least you tried...","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=9},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"So close...","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=10},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"Your enemy was just having a really good day.","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=11},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"Next time we're using bedrock for our defense!","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=12},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"It was lag. I swear!","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=13},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"My ping! Why!","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=14},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"We\'ll meet again in a rematch!","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=15},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"I guess the Splashes didn't save the portal...","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=16},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":":(","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=17},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"That Bullet punched straight through our wall!","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=18},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"Splashes weren't useful...","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=19},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"oops","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=20},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"Dreams were crushed.","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=21},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"This is so sad. Can we hit 2 likes?","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=22},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"This is so sad. Can we hit Spikes?","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=23},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"50% of all teams lose the game.","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=24},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"get got","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=25},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"You have received (1x) Flag of Shameful Loss.","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=26},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"I want a refund.","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=27},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"ping abuse couldn't save you this time roflmao","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=28},type=area_effect_cloud] run title @a[tag=Loser] subtitle ["",{"text":"devs fix game","color":"red"}]

kill @e[tag=RandomLossSplash,type=area_effect_cloud]