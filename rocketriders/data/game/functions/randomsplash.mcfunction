title @a title ["",{"text":"Game Started!","color":"gray"}]

summon area_effect_cloud ~ ~ ~ {Tags:["RandomSplash"],Duration:2000000000}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[tag=RandomSplash] RNGmax 28

execute as @e[tag=RandomSplash] store result score @s RNGscore run data get entity @s UUIDMost 0.00000000023283064365386962890625
execute as @e[tag=RandomSplash] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=RandomSplash,limit=1] RNGscore

#Add splashes here (just copy paste the line and change the score)
execute as @e[tag=RandomSplash,scores={RNGscore=0..1}] run title @a subtitle ["",{"text":"GL HF!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=2}] run title @a subtitle ["",{"text":"SpaceX, but sideways","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=3}] run title @a subtitle ["",{"text":"command block fish piston","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=4}] run title @a subtitle ["",{"text":"5 years of ","color":"green"},{"text":"non-stop","strikethrough":true,"color":"green"},{"text":" development!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=5}] run title @a subtitle ["",{"text":"Removed ","color":"green"},{"text":"test","obfuscated":true,"color":"red"},{"text":" from the cancelyellow function.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=6}] run title @a subtitle ["",{"text":"Let the war begin...","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=7}] run title @a subtitle ["",{"text":"commandblock fish piston","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=8}] run title @a subtitle ["",{"text":"EC","color":"dark_green"},{"text":"W","color":"dark_red"},{"text":"IB","color":"dark_green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=9}] run title @a subtitle ["",{"text":"Battle when?","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=10}] run title @a subtitle ["",{"text":"Your ceberpbullying has been reportred!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=11}] run title @a subtitle ["",{"text":"The Vortex is always watching.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=12}] run title @a subtitle ["",{"text":"Initiating Missile Deployment Mission #184","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=13}] run title @a subtitle ["",{"text":"Good luck!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=14}] run title @a subtitle ["",{"text":"Have fun!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=15}] run title @a subtitle ["",{"text":"Please don't complain about Canopies...","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=16}] run title @a subtitle ["",{"text":"Introducing the anti-Chronos spray!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=17}] run title @a subtitle ["",{"text":"It's okay, we have another one.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=18}] run title @a subtitle ["",{"text":"Float like a Hurricane, sting like a Bullet","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=19}] run title @a subtitle ["",{"text":"New Dawn!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=20}] run title @a subtitle ["",{"text":"vortices*","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=21}] run title @a subtitle ["",{"text":"The void has never been defeated.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=22}] run title @a subtitle ["",{"text":"/function game:forcestart","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=23}] run title @a subtitle ["",{"text":"Splashes are useful!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=24}] run title @a subtitle ["",{"text":"{\"text\":\"splash_01.txt\",\"color\":\"green\",\"bold\":\"true\"}","color":"green","bold":"true"}]
execute as @e[tag=RandomSplash,scores={RNGscore=25}] run title @a subtitle ["",{"text":"fun knee","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=26}] run title @a subtitle ["",{"text":"zS","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=27}] run title @a subtitle ["",{"text":"Report all attempts at cheating to the College Board.","color":"green"}]

kill @e[tag=RandomSplash]