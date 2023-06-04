tag @e[x=0,type=armor_stand,tag=BotHasToma] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasBlade] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasAux] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasAnt] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasCata] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasCita] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasGuard] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasGemi] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasLift] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasNull] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasSlash] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasHur] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasBolt] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasWar] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasJug] add BotHasMissile
tag @e[x=0,type=armor_stand,tag=BotHasRift] add BotHasMissile


execute as @e[x=0,type=armor_stand,tag=Bot,scores={botarrowitems=1..}] run tag @s add BotHasArrows
execute as @e[x=0,type=armor_stand,tag=BotHasArrows] unless entity @s[scores={botarrowitems=1..}] run tag @s remove BotHasArrows


scoreboard players add @e[x=0,type=arrow,tag=BArrow] BotHP 1
kill @e[x=0,type=arrow,tag=BArrow,scores={BotHP=50..}]

execute as @e[x=0,type=armor_stand,tag=Bot] at @s if entity @s[y=-2000,dy=1980] run function rr_bots:bot/movement/voidfall


execute as @e[x=0,type=armor_stand,tag=Bot] at @s unless entity @e[type=zombie,tag=BotHPZombie,distance=..3,limit=1] if entity @a[team=!Spectator,distance=..45,limit=1] run scoreboard players remove @s BotHP 1
execute as @e[x=0,type=armor_stand,tag=Bot] at @s unless entity @e[type=zombie,tag=BotHPZombie,distance=..3,limit=1] if entity @a[team=!Spectator,distance=..45,limit=1] run summon zombie ~ ~ ~ {Tags:["BotHPZombie"],NoGravity:1b,NoAI:1b,Silent:1b}

execute as @e[x=0,type=armor_stand,tag=Bot] at @s if entity @e[type=zombie,tag=BotHPZombie,distance=..3,limit=1] run tp @e[type=zombie,tag=BotHPZombie,distance=..2,limit=1] @s

execute as @e[x=0,type=zombie,tag=BotHPZombie] at @s unless entity @e[type=armor_stand,tag=Bot,distance=..3,limit=1] run tp @s ~ ~-400 ~
execute as @e[x=0,type=zombie,tag=BotHPZombie] at @s unless entity @e[type=armor_stand,tag=Bot,distance=..3,limit=1] run kill @s


effect give @e[x=0,type=zombie,tag=BotHPZombie] invisibility 1 100 true
effect give @e[x=0,type=zombie,tag=BotHPZombie] instant_damage 1 100 true

execute as @e[x=0,type=zombie,tag=BotHPZombie] unless entity @s[nbt={Health:20.0f}] at @s if entity @a[distance=..50,limit=1] run scoreboard players remove @e[x=0,type=armor_stand,tag=Bot,limit=1,sort=nearest] BotHP 1
execute as @e[x=0,type=zombie,tag=BotHPZombie] unless entity @s[nbt={Health:20.0f}] at @s if entity @a[distance=..50,limit=1] run data merge entity @s {Health:20.0f}



execute as @e[x=0,type=armor_stand,tag=Bot,scores={BotHP=-1000..0}] run function rr_bots:bot/movement/die


#prevent that bot riding bug
execute as @e[x=0,type=armor_stand,tag=YellowBot,tag=BotRider,scores={botriding=60..}] at @s if predicate rr_bots:rider_yellowbot run tag @s remove BotRider
execute as @e[x=0,type=armor_stand,tag=BlueBot,tag=BotRider,scores={botriding=60..}] at @s if predicate rr_bots:rider_bluebot run tag @s remove BotRider



scoreboard players add @e[x=0,type=armor_stand,tag=Bot] botcontrol 1

execute as @e[x=0,type=armor_stand,tag=Bot,tag=!BotWalks,tag=!BotArrows,tag=!BotMissiles,tag=!BotRider,scores={botcontrol=1..}] at @s run tag @s add BOTCONTROL

#RNG
execute as @e[x=0,type=armor_stand,tag=BlueBot,tag=BOTCONTROL,tag=!BotWalks,tag=!BotArrows,tag=!BotMissiles,tag=!BotRider] at @s run summon marker ~ ~ ~ {Tags:["BotRNG","BlueRNG"]}
execute as @e[x=0,type=armor_stand,tag=YellowBot,tag=BOTCONTROL,tag=!BotWalks,tag=!BotArrows,tag=!BotMissiles,tag=!BotRider] at @s run summon marker ~ ~ ~ {Tags:["BotRNG","YellowRNG"]}
scoreboard players set @e[x=0,type=marker,tag=BotRNG] BotRNGmax 10
execute as @e[x=0,type=marker,tag=BotRNG] store result score @s BotRNG run data get entity @s UUID[0]
execute as @e[x=0,type=marker,tag=BotRNG] store result score @s BotRNG run scoreboard players operation @s BotRNG %= @s BotRNGmax

execute as @e[x=0,type=marker,tag=BotRNG,scores={BotRNG=0..3}] at @s run tag @e[type=armor_stand,tag=BOTCONTROL,distance=..2,limit=1,sort=nearest] add BotWalks
execute as @e[x=0,type=marker,tag=BotRNG,tag=BlueRNG,scores={BotRNG=4..7}] at @s if entity @a[team=Yellow,distance=5..45] unless entity @e[x=0,type=armor_stand,tag=BotArrows,limit=4] run tag @e[type=armor_stand,tag=BotHasArrows,distance=..2,limit=1,sort=nearest] add BotArrows
execute as @e[x=0,type=marker,tag=BotRNG,tag=YellowRNG,scores={BotRNG=4..7}] at @s if entity @a[team=Blue,distance=5..45] unless entity @e[x=0,type=armor_stand,tag=BotArrows,limit=4] run tag @e[type=armor_stand,tag=BotHasArrows,distance=..2,limit=1,sort=nearest] add BotArrows
execute as @e[x=0,type=marker,tag=BotRNG,tag=BlueRNG,scores={BotRNG=8..10}] at @s if block ~ ~-3 ~4 air if entity @e[type=armor_stand,tag=BotHasMissile,distance=..2,limit=1] run tag @e[type=armor_stand,tag=BOTCONTROL,distance=..2,limit=1,sort=nearest] add BotMissiles
execute as @e[x=0,type=marker,tag=BotRNG,tag=YellowRNG,scores={BotRNG=8..10}] at @s if block ~ ~-3 ~-4 air if entity @e[type=armor_stand,tag=BotHasMissile,distance=..2,limit=1] run tag @e[type=armor_stand,tag=BOTCONTROL,distance=..2,limit=1,sort=nearest] add BotMissiles

kill @e[x=0,type=marker,tag=BotRNG]



scoreboard players reset @e[x=0,type=armor_stand,tag=BOTCONTROL] botcontrol
scoreboard players reset @e[x=0,type=armor_stand,tag=BotWalks] botcontrol
scoreboard players reset @e[x=0,type=armor_stand,tag=BotArrows] botcontrol
scoreboard players reset @e[x=0,type=armor_stand,tag=BotMissiles] botcontrol


scoreboard players reset @e[x=0,type=armor_stand,tag=!BotMissiles] botmisspawn
scoreboard players reset @e[x=0,type=armor_stand,tag=Bot,tag=!BotRider] botriding

execute as @e[x=0,type=armor_stand,tag=BotWalks] at @s run function rr_bots:bot/movement/walkrandom
execute as @e[x=0,type=armor_stand,tag=BotArrows,scores={botarrowitems=1..}] at @s run function rr_bots:bot/attacks/bot_shoot_arrow
execute as @e[x=0,type=armor_stand,tag=BotArrows] at @s unless entity @s[scores={botarrowitems=1..}] run tag @s remove BotArrows
execute as @e[x=0,type=armor_stand,tag=BotMissiles,tag=BotHasMissile] at @s run function rr_bots:bot/missile/bot_spawnmissile
execute as @e[x=0,type=armor_stand,tag=BotMissiles,tag=!BotHasMissile] at @s run tag @s remove BotMissiles
execute as @e[x=0,type=armor_stand,tag=BotRider] at @s run function rr_bots:bot/movement/rider/main

tag @e[x=0,type=armor_stand,tag=Bot] remove BotHasMissile