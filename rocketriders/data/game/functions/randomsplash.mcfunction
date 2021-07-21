##Randomized splash messages for when the game begins
title @a title ["",{"text":"Game Started!","color":"gray"}]

summon marker ~ ~ ~ {Tags:["RandomSplash"]}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[type=marker,tag=RandomSplash] RNGmax 85

execute as @e[type=marker,tag=RandomSplash] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=RandomSplash] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[type=marker,tag=RandomSplash,limit=1] RNGscore

#Add splashes here (just copy paste the line and change the score)
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=0..1}] run title @a subtitle ["",{"text":"GL HF!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=2}] run title @a subtitle ["",{"text":"SpaceX, but sideways!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=3}] run title @a subtitle ["",{"text":"command block fish piston","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=4}] run title @a subtitle ["",{"text":"4 years of ","color":"green"},{"text":"non-stop","strikethrough":true,"color":"green"},{"text":" development!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=5}] run title @a subtitle ["",{"text":"Removed ","color":"green"},{"text":"test","obfuscated":true,"color":"red"},{"text":" from the cancelyellow function.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=6}] run title @a subtitle ["",{"text":"Let the war begin...","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=7}] run title @a subtitle ["",{"text":"bruh moment","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=8}] run title @a subtitle ["",{"text":"EC","color":"dark_green"},{"text":"W","color":"dark_red"},{"text":"IB","color":"dark_green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=9}] run title @a subtitle ["",{"text":"Battle when?","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=10}] run title @a subtitle ["",{"text":"Your ceberpbullying has been reportred!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=11}] run title @a subtitle ["",{"text":"The Vortex is always watching.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=12}] run title @a subtitle ["",{"text":"Initiating Missile Deployment Mission #184","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=13}] run title @a subtitle ["",{"text":"Good luck!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=14}] run title @a subtitle ["",{"text":"Have fun!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=15}] run title @a subtitle ["",{"text":"Please don't complain about Canopies...","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=16}] run title @a subtitle ["",{"text":"Introducing the anti-Chronos spray!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=17}] run title @a subtitle ["",{"text":"It's okay, we have another one.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=18}] run title @a subtitle ["",{"text":"Float like a Hurricane, sting like a Bullet.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=19}] run title @a subtitle ["",{"text":"New Dawn!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=20}] run title @a subtitle ["",{"text":"vortices*","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=21}] run title @a subtitle ["",{"text":"The void has never been defeated.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=22}] run title @a subtitle ["",{"text":"/function game:forcestart","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=23}] run title @a subtitle ["",{"text":"Splashes are useful!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=24}] run title @a subtitle ["",{"text":"{\"text\":\"splash_01.txt\",\"color\":\"green\"}","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=25}] run title @a subtitle ["",{"text":"fun knee","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=26}] run title @a subtitle ["",{"text":"zS","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=27}] run title @a subtitle ["",{"text":"Report any cheating to the College Board.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=28}] run title @a subtitle ["",{"text":"One day, my work will be quoted!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=29}] run title @a subtitle ["",{"text":"Are ya winning, son?","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=30}] run title @a subtitle ["",{"text":"Noob developers.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=31}] run title @a subtitle ["",{"text":"Better than Star Trek, worse than Star Wars!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=32}] run title @a subtitle ["",{"text":"Step 1: Place missile. Step 2: ??? Step 3: Profit.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=33}] run title @a subtitle ["",{"text":"Exception in server tick loop","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=34}] run title @a subtitle ["",{"text":"Been devin' since 1.11!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=35}] run title @a subtitle ["",{"text":"Muscle ELO","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=36}] run title @a subtitle ["",{"text":"If you have to ask, it's a feature!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=37}] run title @a subtitle ["",{"text":"3 billion devices use Java!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=38}] run title @a subtitle ["",{"text":"java.lang.NullPointerException: null","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=39}] run title @a subtitle ["",{"text":"Canopies are broken again!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=40}] run title @a subtitle ["",{"text":"go to bed YZERO","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=41}] run title @a subtitle ["",{"text":"chronos bad","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=42}] run title @a subtitle ["",{"text":"gg america","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=43}] run title @a subtitle ["",{"text":"I am a Rider!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=44}] run title @a subtitle ["",{"text":"There is no game. Tomato","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=45}] run title @a subtitle ["",{"text":"Error 404: Splash message not found.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=46}] run title @a subtitle ["",{"text":"Shield stackers beware!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=47}] run title @a subtitle ["",{"text":"Splash messages are useful!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=48}] run title @a subtitle ["",{"text":"Loot boxes disabled.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=49}] run title @a subtitle ["",{"text":"RIP utility only.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=50}] run title @a subtitle ["",{"text":"Lobby breaching is not supported.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=51}] run title @a subtitle ["",{"text":"Another splash because we ran out of ideas.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=52}] run title @a subtitle ["",{"text":"spicy.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=53}] run title @a subtitle ["",{"text":"LEEEEEERRROOOOY JJJEEEEENNNNKKIINNNSSSS!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=54}] run title @a subtitle ["",{"text":"The ","color":"green"},{"text":"Hypersonic ","color":"dark_purple"},{"text":"is too fast for your nonsense.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=55}] run title @a subtitle ["",{"text":"Ready for battle!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=56}] run title @a subtitle ["",{"text":"Penguins can fly!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=57}] run title @a subtitle ["",{"text":"//replace slime_block honey_block","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=58}] run title @a subtitle ["",{"text":"Bottom text","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=59}] run title @a subtitle ["",{"text":"An on-time arrival, fortunately.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=60}] run title @a subtitle ["",{"text":"give lime dye","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=61}] run title @a subtitle ["",{"text":"Cubehamster Approved™","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=62}] run title @a subtitle ["",{"text":"Long ago, four nations lived in harmony...","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=63}] run title @a subtitle ["",{"text":"Only the Avatar can master the elements.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=64}] run title @a subtitle ["",{"text":"/summon axolotl ~ ~ ~ {Invulnerable:1b}","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=65}] run title @a subtitle ["",{"text":"Getting serious bang for your buck!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=66}] run title @a subtitle ["",{"text":"Like steroids, but the good kind!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=67}] run title @a subtitle ["",{"text":"Removed ","color":"green"},{"text":"birch","obfuscated":true,"color":"red"},{"text":" half slab in Lobby.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=68}] run title @a subtitle ["",{"text":"The snack bar has been replenished.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=69}] run title @a subtitle ["",{"text":"Rocket","color":"green","strikethrough":true},{"text":" Utility Riders","color":"green","strikethrough":false}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=70}] run title @a subtitle ["",{"text":"↑ ↑ ↓ ↓ ← → ← → B A start","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=71}] run title @a subtitle ["",{"text":"[Windows start-up sound]","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=72}] run title @a subtitle ["",{"text":"Pro deploy to make him happy","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=73}] run title @a subtitle ["",{"text":"The plot thickens, the Vortex chickens...","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=74}] run title @a subtitle ["",{"text":"Now Playing: Rick Astley - Never Gonna Give You Up","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=75}] run title @a subtitle ["",{"text":"Warning: Pro gamers have been detected in the game!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=76}] run title @a subtitle ["",{"text":"Are your missiles running?","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=77}] run title @a subtitle ["",{"text":"Hold my splash!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=78}] run title @a subtitle ["",{"text":"May the force be with you!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=79}] run title @a subtitle ["",{"text":"Remember to turn your client on!","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=80}] run title @a subtitle ["",{"text":"Apologies for the incredibly underpowered pickaxes.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=81}] run title @a subtitle ["",{"text":"Insert pointy end in glass.","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=82}] run title @a subtitle ["",{"text":"what the dog doin?","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=83}] run title @a subtitle ["",{"text":"Went through 5,800 or so @e selectors...","color":"green"}]
execute as @e[type=marker,tag=RandomSplash,scores={RNGscore=84}] run title @a subtitle ["",{"text":"Featuring more bugs than features!","color":"green"}]

kill @e[type=marker,tag=RandomSplash]