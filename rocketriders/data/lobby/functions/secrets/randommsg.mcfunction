##Randomized messages for Lobby easter eggs
summon marker ~ ~ ~ {Tags:["RandomLobby"]}
scoreboard players set @e[tag=RandomLobby,type=marker] RNGmax 10

execute as @e[tag=RandomLobby,type=marker] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=RandomLobby,type=marker] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=RandomLobby,limit=1,type=marker] RNGscore

execute if entity @e[tag=RandomLobby,scores={RNGscore=0},type=marker] run tellraw @s ["",{"text":"what does this thing do"}]
execute if entity @e[tag=RandomLobby,scores={RNGscore=1},type=marker] run tellraw @s ["",{"text":"boo"}]
execute if entity @e[tag=RandomLobby,scores={RNGscore=2},type=marker] run tellraw @s ["",{"text":"choo choo"}]
execute if entity @e[tag=RandomLobby,scores={RNGscore=3},type=marker] run tellraw @s ["",{"text":"stop pressing me"}]
execute if entity @e[tag=RandomLobby,scores={RNGscore=4},type=marker] run tellraw @s ["",{"text":"ouch that hurt"}]
execute if entity @e[tag=RandomLobby,scores={RNGscore=5},type=marker] run tellraw @s ["",{"text":"who are you"}]
execute if entity @e[tag=RandomLobby,scores={RNGscore=6},type=marker] run tellraw @s ["",{"text":"explain yourself"}]
execute if entity @e[tag=RandomLobby,scores={RNGscore=7},type=marker] run tellraw @s ["",{"text":"does it ever end"}]
execute if entity @e[tag=RandomLobby,scores={RNGscore=8},type=marker] run tellraw @s ["",{"text":"are we there yet"}]
execute if entity @e[tag=RandomLobby,scores={RNGscore=9},type=marker] run tellraw @s ["",{"text":"ok you can go now"}]
kill @e[tag=RandomLobby,type=marker]