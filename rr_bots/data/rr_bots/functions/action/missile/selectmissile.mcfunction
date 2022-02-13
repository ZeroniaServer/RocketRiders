tag @s remove RetryPick
summon marker ~ ~ ~ {Tags:["BotSpawnRNG"]}
scoreboard players set @e[tag=BotSpawnRNG] RNGmax 19
execute as @e[tag=BotSpawnRNG] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[tag=BotSpawnRNG] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax


#If the bot has the missile: pick that
execute as @e[tag=BotSpawnRNG,scores={RNGscore=0}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasAnt] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasAnt] add SpawnAnt
execute as @e[tag=BotSpawnRNG,scores={RNGscore=1}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasBlade] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasBlade] add SpawnBlade
execute as @e[tag=BotSpawnRNG,scores={RNGscore=2}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasCata] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasCata] add SpawnCata
execute as @e[tag=BotSpawnRNG,scores={RNGscore=3}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasCita] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasCita] add SpawnCita
execute as @e[tag=BotSpawnRNG,scores={RNGscore=4}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasEguard] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasEguard] add SpawnEguard
execute as @e[tag=BotSpawnRNG,scores={RNGscore=5}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasNull] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasNull] add SpawnNull
execute as @e[tag=BotSpawnRNG,scores={RNGscore=6}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasSlash] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasSlash] add SpawnSlash
execute as @e[tag=BotSpawnRNG,scores={RNGscore=7}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasToma] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasToma] add SpawnToma
execute as @e[tag=BotSpawnRNG,scores={RNGscore=18}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasGemi] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasGemi] add SpawnGemi

execute as @e[tag=BotSpawnRNG,scores={RNGscore=8}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasAux] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasAux] add SpawnAux
execute as @e[tag=BotSpawnRNG,scores={RNGscore=9}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasJbuster] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasJbuster] add SpawnJbuster
execute as @e[tag=BotSpawnRNG,scores={RNGscore=10}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasRift] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasRift] add SpawnRift
execute as @e[tag=BotSpawnRNG,scores={RNGscore=11}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasWar] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasWar] add SpawnWar

execute as @e[tag=BotSpawnRNG,scores={RNGscore=12}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasHur] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasHur] add SpawnHur
execute as @e[tag=BotSpawnRNG,scores={RNGscore=13}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasThun] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasThun] add SpawnThun

execute as @e[tag=BotSpawnRNG,scores={RNGscore=14}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasBroad] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasBroad] add SpawnBroad
execute as @e[tag=BotSpawnRNG,scores={RNGscore=15}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasBullet] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasBullet] add SpawnBullet
execute as @e[tag=BotSpawnRNG,scores={RNGscore=16}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasDuplex] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasDuplex] add SpawnDuplex
execute as @e[tag=BotSpawnRNG,scores={RNGscore=17}] at @s if entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasHyper] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasHyper] add SpawnHyper

#If the bot doesn't have the missile: pick again
execute as @e[tag=BotSpawnRNG,scores={RNGscore=0}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasAnt] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=1}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasBlade] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=2}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasCata] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=3}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasCita] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=4}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasEguard] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=5}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasNull] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=6}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasSlash] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=7}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasToma] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick

execute as @e[tag=BotSpawnRNG,scores={RNGscore=8}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasAux] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=9}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasJbuster] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=10}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasRift] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=11}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasWar] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick

execute as @e[tag=BotSpawnRNG,scores={RNGscore=12}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasHur] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=13}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasThun] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick

execute as @e[tag=BotSpawnRNG,scores={RNGscore=14}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasBroad] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=15}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasBullet] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=16}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasDuplex] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick
execute as @e[tag=BotSpawnRNG,scores={RNGscore=17}] at @s unless entity @e[tag=Bot,distance=..1,limit=1,sort=nearest,tag=HasHyper] run tag @e[tag=Bot,distance=..1,limit=1,sort=nearest] add RetryPick

kill @e[tag=BotSpawnRNG]
execute as @e[tag=Bot,tag=RetryPick] run function rr_bots:action/missile/selectmissile