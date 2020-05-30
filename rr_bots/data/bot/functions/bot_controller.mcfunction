tag @e[tag=BotHasToma] add BotHasMissile
tag @e[tag=BotHasBlade] add BotHasMissile
tag @e[tag=BotHasAux] add BotHasMissile
tag @e[tag=BotHasAnt] add BotHasMissile
tag @e[tag=BotHasCata] add BotHasMissile
tag @e[tag=BotHasCita] add BotHasMissile
tag @e[tag=BotHasGuard] add BotHasMissile
tag @e[tag=BotHasGemi] add BotHasMissile
tag @e[tag=BotHasLift] add BotHasMissile
tag @e[tag=BotHasNull] add BotHasMissile
tag @e[tag=BotHasSlash] add BotHasMissile
tag @e[tag=BotHasHur] add BotHasMissile
tag @e[tag=BotHasBolt] add BotHasMissile
tag @e[tag=BotHasWar] add BotHasMissile
tag @e[tag=BotHasJug] add BotHasMissile
tag @e[tag=BotHasRift] add BotHasMissile


execute as @e[tag=Bot,scores={botarrowitems=1..}] run tag @s add BotHasArrows
execute as @e[tag=BotHasArrows] unless entity @s[scores={botarrowitems=1..}] run tag @s remove BotHasArrows


execute as @e[tag=Bot] at @s if entity @s[y=-2000,dy=1980] run function bot:movement/voidfall


execute as @e[tag=Bot] at @s unless entity @e[tag=BotHPZombie,distance=..3,limit=1] if entity @a[team=!Spectator,distance=..50,limit=1] run scoreboard players remove @s BotHP 1
execute as @e[tag=Bot] at @s unless entity @e[tag=BotHPZombie,distance=..3,limit=1] if entity @a[team=!Spectator,distance=..50,limit=1] run summon zombie ~ ~ ~ {Tags:["BotHPZombie"],NoGravity:1b,NoAI:1b,Silent:1b}

execute as @e[tag=Bot] at @s if entity @e[tag=BotHPZombie,distance=..3,limit=1] run tp @e[tag=BotHPZombie,distance=..2,limit=1] @s

execute as @e[tag=BotHPZombie] at @s unless entity @e[tag=Bot,distance=..3,limit=1] run tp @s ~ ~-400 ~
execute as @e[tag=BotHPZombie] at @s unless entity @e[tag=Bot,distance=..3,limit=1] run kill @s


effect give @e[tag=BotHPZombie] invisibility 1 100 true
effect give @e[tag=BotHPZombie] instant_damage 1 100 true

execute as @e[tag=BotHPZombie] unless entity @s[nbt={Health:20.0f}] at @s if entity @a[distance=..50,limit=1] run scoreboard players remove @e[tag=Bot,limit=1,sort=nearest] BotHP 1
execute as @e[tag=BotHPZombie] unless entity @s[nbt={Health:20.0f}] at @s if entity @a[distance=..50,limit=1] run data merge entity @s {Health:20.0f}



execute as @e[tag=Bot,scores={BotHP=-1000..0}] run function bot:movement/die




scoreboard players add @e[tag=Bot] botcontrol 1

execute as @e[tag=Bot,tag=!BotWalks,tag=!BotArrows,tag=!BotMissiles,tag=!BotRider,scores={botcontrol=1..}] at @s run tag @s add BOTCONTROL

#RNG
execute as @e[tag=BlueBot,tag=BOTCONTROL,tag=!BotWalks,tag=!BotArrows,tag=!BotMissiles,tag=!BotRider] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BotRNG","BlueRNG"]}
execute as @e[tag=YellowBot,tag=BOTCONTROL,tag=!BotWalks,tag=!BotArrows,tag=!BotMissiles,tag=!BotRider] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BotRNG","YellowRNG"]}
scoreboard players set @e[tag=BotRNG] BotRNGmax 10
execute as @e[tag=BotRNG] store result score @s BotRNG run data get entity @s UUIDMost 0.00000000023283064365386962890625
execute as @e[tag=BotRNG] store result score @s BotRNG run scoreboard players operation @s BotRNG %= @s BotRNGmax

execute as @e[tag=BotRNG,scores={BotRNG=0..3}] at @s run tag @e[tag=BOTCONTROL,distance=..2,limit=1,sort=nearest] add BotWalks
execute as @e[tag=BotRNG,tag=BlueRNG,scores={BotRNG=4..7}] at @s if entity @a[team=Yellow,distance=5..45] run tag @e[tag=BotHasArrows,distance=..2,limit=1,sort=nearest] add BotArrows
execute as @e[tag=BotRNG,tag=YellowRNG,scores={BotRNG=4..7}] at @s if entity @a[team=Blue,distance=5..45] run tag @e[tag=BotHasArrows,distance=..2,limit=1,sort=nearest] add BotArrows
execute as @e[tag=BotRNG,tag=BlueRNG,scores={BotRNG=8..10}] at @s if block ~ ~-3 ~4 air if entity @e[tag=BotHasMissile,distance=..2,limit=1] run tag @e[tag=BOTCONTROL,distance=..2,limit=1,sort=nearest] add BotMissiles
execute as @e[tag=BotRNG,tag=YellowRNG,scores={BotRNG=8..10}] at @s if block ~ ~-3 ~-4 air if entity @e[tag=BotHasMissile,distance=..2,limit=1] run tag @e[tag=BOTCONTROL,distance=..2,limit=1,sort=nearest] add BotMissiles

kill @e[tag=BotRNG]



scoreboard players reset @e[tag=BOTCONTROL] botcontrol
scoreboard players reset @e[tag=BotWalks] botcontrol
scoreboard players reset @e[tag=BotArrows] botcontrol
scoreboard players reset @e[tag=BotMissiles] botcontrol


scoreboard players reset @e[tag=!BotMissiles] botmisspawn
scoreboard players reset @e[tag=Bot,tag=!BotRider] botriding

execute as @e[tag=BotWalks] at @s run function bot:movement/walkrandom
execute as @e[tag=BotArrows,scores={botarrowitems=1..}] at @s run function bot:attacks/bot_shoot_arrow
execute as @e[tag=BotArrows] at @s unless entity @s[scores={botarrowitems=1..}] run tag @s remove BotArrows
execute as @e[tag=BotMissiles,tag=BotHasMissile] at @s run function bot:missile/bot_spawnmissile
execute as @e[tag=BotMissiles,tag=!BotHasMissile] at @s run tag @s remove BotMissiles
execute as @e[tag=BotRider] at @s run function bot:movement/rider/main

tag @e[tag=Bot] remove BotHasMissile