title @a title ["",{"text":"Game Started!","color":"gray"}]

summon area_effect_cloud ~ ~ ~ {Tags:["RandomSplash"],Duration:2000000000}
scoreboard players set @e[tag=RandomSplash] RNGmax 13
execute as @e[tag=RandomSplash] store result score @s RNGscore run data get entity @s UUIDMost 0.00000000023283064365386962890625
execute as @e[tag=RandomSplash] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=RandomSplash,limit=1] RNGscore


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
kill @e[tag=RandomSplash]