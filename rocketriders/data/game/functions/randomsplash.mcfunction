title @a title ["",{"text":"Game Started!","color":"gray"}]

summon area_effect_cloud ~ ~ ~ {Tags:["RandomSplash"],Duration:2000000000}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[tag=RandomSplash] RNGmax 20

execute as @e[tag=RandomSplash] store result score @s RNGscore run data get entity @s UUIDMost 0.00000000023283064365386962890625
execute as @e[tag=RandomSplash] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=RandomSplash,limit=1] RNGscore

#Add splashes here (just copy paste the line and change the score)
execute as @e[tag=RandomSplash,scores={RNGscore=0..1}] run title @a subtitle ["",{"text":"GL HF!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=2}] run title @a subtitle ["",{"text":"SpaceX, but sideways","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=3}] run title @a subtitle ["",{"text":"commandblock fish piston","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=4}] run title @a subtitle ["",{"text":"5 years of ","color":"green"},{"text":"non-stop","strikethrough":true,"color":"green"},{"text":" development!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=5}] run title @a subtitle ["",{"text":"Removed ","color":"green"},{"text":"test","obfuscated":true,"color":"red"},{"text":" from the cancelyellow function.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=6}] run title @a subtitle ["",{"text":"Let the war begin...","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=7}] run title @a subtitle ["",{"text":"commandblock fish piston","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=8}] run title @a subtitle ["",{"text":"EC","color":"dark_green"},{"text":"W","color":"dark_red"},{"text":"IB","color":"dark_green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=9}] run title @a subtitle ["",{"text":"Battle when?","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=10}] run title @a subtitle ["",{"text":"Your ceberpbullin has been repotred!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=11}] run title @a subtitle ["",{"text":"The Vortex is always watching.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=12}] run title @a subtitle ["",{"text":"Initiating Missile Deployment Mission #184","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=13}] run title @a subtitle ["",{"text":"Good luck!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=14}] run title @a subtitle ["",{"text":"Have fun!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=15}] run title @a subtitle ["",{"text":"Please don't complain about Canopies...","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=16}] run title @a subtitle ["",{"text":"Introducing the anti-chronos spray!","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=17}] run title @a subtitle ["",{"text":"It's okay, we have another one.","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=18}] run title @a subtitle ["",{"text":"Float like a Hurricane, sting like a Bullet","color":"green"}]
execute as @e[tag=RandomSplash,scores={RNGscore=19}] run title @a subtitle ["",{"text":"New Dawn!","color":"green"}]
kill @e[tag=RandomSplash]