##Randomized splash messages for when the game begins

title @a title ["",{"text":"Game Started!","color":"gray"}]

summon area_effect_cloud ~ ~ ~ {Tags:["RandomSplash"],Duration:2000000000}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[tag=RandomSplash,type=area_effect_cloud] RNGmax 61

execute as @e[tag=RandomSplash,type=area_effect_cloud] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=RandomSplash,type=area_effect_cloud] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=RandomSplash,limit=1,type=area_effect_cloud] RNGscore

#Add splashes here (just copy paste the line and change the score)
execute as @e[tag=RandomSplash,scores={RNGscore=0..1},type=area_effect_cloud] run title @a subtitle ["",{"text":"GL HF!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=2},type=area_effect_cloud] run title @a subtitle ["",{"text":"SpaceX, but sideways!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=3},type=area_effect_cloud] run title @a subtitle ["",{"text":"command block fish piston","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=4},type=area_effect_cloud] run title @a subtitle ["",{"text":"3 years of ","color":"green"},{"text":"non-stop","strikethrough":true,"color":"green"},{"text":" development!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=5},type=area_effect_cloud] run title @a subtitle ["",{"text":"Removed ","color":"green"},{"text":"test","obfuscated":true,"color":"red"},{"text":" from the cancelyellow function.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=6},type=area_effect_cloud] run title @a subtitle ["",{"text":"Let the war begin...","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=7},type=area_effect_cloud] run title @a subtitle ["",{"text":"bruh moment","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=8},type=area_effect_cloud] run title @a subtitle ["",{"text":"EC","color":"dark_green"},{"text":"W","color":"dark_red"},{"text":"IB","color":"dark_green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=9},type=area_effect_cloud] run title @a subtitle ["",{"text":"Battle when?","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=10},type=area_effect_cloud] run title @a subtitle ["",{"text":"Your ceberpbullying has been reportred!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=11},type=area_effect_cloud] run title @a subtitle ["",{"text":"The Vortex is always watching.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=12},type=area_effect_cloud] run title @a subtitle ["",{"text":"Initiating Missile Deployment Mission #184","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=13},type=area_effect_cloud] run title @a subtitle ["",{"text":"Good luck!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=14},type=area_effect_cloud] run title @a subtitle ["",{"text":"Have fun!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=15},type=area_effect_cloud] run title @a subtitle ["",{"text":"Please don't complain about Canopies...","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=16},type=area_effect_cloud] run title @a subtitle ["",{"text":"Introducing the anti-Chronos spray!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=17},type=area_effect_cloud] run title @a subtitle ["",{"text":"It's okay, we have another one.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=18},type=area_effect_cloud] run title @a subtitle ["",{"text":"Float like a Hurricane, sting like a Bullet.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=19},type=area_effect_cloud] run title @a subtitle ["",{"text":"New Dawn!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=20},type=area_effect_cloud] run title @a subtitle ["",{"text":"vortices*","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=21},type=area_effect_cloud] run title @a subtitle ["",{"text":"The void has never been defeated.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=22},type=area_effect_cloud] run title @a subtitle ["",{"text":"/function game:forcestart","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=23},type=area_effect_cloud] run title @a subtitle ["",{"text":"Splashes are useful!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=24},type=area_effect_cloud] run title @a subtitle ["",{"text":"{\"text\":\"splash_01.txt\",\"color\":\"green\"}","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=25},type=area_effect_cloud] run title @a subtitle ["",{"text":"fun knee","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=26},type=area_effect_cloud] run title @a subtitle ["",{"text":"zS","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=27},type=area_effect_cloud] run title @a subtitle ["",{"text":"Report any cheating to the College Board.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=28},type=area_effect_cloud] run title @a subtitle ["",{"text":"One day, my work will be quoted!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=29},type=area_effect_cloud] run title @a subtitle ["",{"text":"Are ya winning, son?","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=30},type=area_effect_cloud] run title @a subtitle ["",{"text":"Noob developers.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=31},type=area_effect_cloud] run title @a subtitle ["",{"text":"Better than Star Trek, worse than Star Wars!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=32},type=area_effect_cloud] run title @a subtitle ["",{"text":"Step 1: Place missile. Step 2: ??? Step 3: Profit.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=33},type=area_effect_cloud] run title @a subtitle ["",{"text":"Exception in server tick loop","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=34},type=area_effect_cloud] run title @a subtitle ["",{"text":"Been devin' since 1.11!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=35},type=area_effect_cloud] run title @a subtitle ["",{"text":"Muscle ELO","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=36},type=area_effect_cloud] run title @a subtitle ["",{"text":"If you have to ask, it's a feature!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=37},type=area_effect_cloud] run title @a subtitle ["",{"text":"3 billion devices use Java!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=38},type=area_effect_cloud] run title @a subtitle ["",{"text":"java.lang.NullPointerException: null","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=39},type=area_effect_cloud] run title @a subtitle ["",{"text":"Canopies are broken again!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=40},type=area_effect_cloud] run title @a subtitle ["",{"text":"go to bed YZERO","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=41},type=area_effect_cloud] run title @a subtitle ["",{"text":"chronos bad","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=42},type=area_effect_cloud] run title @a subtitle ["",{"text":"gg america","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=43},type=area_effect_cloud] run title @a subtitle ["",{"text":"I am a Rider!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=44},type=area_effect_cloud] run title @a subtitle ["",{"text":"There is no game. Tomato","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=45},type=area_effect_cloud] run title @a subtitle ["",{"text":"Error 404: Splash message not found.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=46},type=area_effect_cloud] run title @a subtitle ["",{"text":"Shield stackers beware!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=47},type=area_effect_cloud] run title @a subtitle ["",{"text":"Splash messages are useful!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=48},type=area_effect_cloud] run title @a subtitle ["",{"text":"Loot boxes disabled.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=49},type=area_effect_cloud] run title @a subtitle ["",{"text":"RIP utility only.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=50},type=area_effect_cloud] run title @a subtitle ["",{"text":"Lobby breaching is not supported.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=51},type=area_effect_cloud] run title @a subtitle ["",{"text":"Another splash because we ran out of ideas.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=52},type=area_effect_cloud] run title @a subtitle ["",{"text":"spicy.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=53},type=area_effect_cloud] run title @a subtitle ["",{"text":"LEEEEEERRROOOOY JJJEEEEENNNNKKIINNNSSSS!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=54},type=area_effect_cloud] run title @a subtitle ["",{"text":"The ","color":"green"},{"text":"Hypersonic ","color":"dark_purple"},{"text":"is too fast for your nonsense.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=55},type=area_effect_cloud] run title @a subtitle ["",{"text":"Ready for battle!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=56},type=area_effect_cloud] run title @a subtitle ["",{"text":"Penguins can fly!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=57},type=area_effect_cloud] run title @a subtitle ["",{"text":"//replace slime_block honey_block","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=58},type=area_effect_cloud] run title @a subtitle ["",{"text":"Bottom text","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=59},type=area_effect_cloud] run title @a subtitle ["",{"text":"An on-time arrival, fortunately.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=60},type=area_effect_cloud] run title @a subtitle ["",{"text":"give lime dye","color":"green"}]

kill @e[tag=RandomSplash,type=area_effect_cloud]