tag @e[tag=BotHasToma,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasBlade,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasAux,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasAnt,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasCata,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasCita,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasGuard,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasGemi,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasLift,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasNull,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasSlash,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasHur,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasBolt,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasWar,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasJug,type=armor_stand] add BotHasMissile
tag @e[tag=BotHasRift,type=armor_stand] add BotHasMissile


execute as @e[tag=Bot,scores={botarrowitems=1..},type=armor_stand] run tag @s add BotHasArrows
execute as @e[tag=BotHasArrows,type=armor_stand] unless entity @s[scores={botarrowitems=1..}] run tag @s remove BotHasArrows


scoreboard players add @e[tag=BArrow,type=arrow] BotHP 1
kill @e[tag=BArrow,scores={BotHP=50..},type=arrow]

execute as @e[tag=Bot,type=armor_stand] at @s if entity @s[y=-2000,dy=1980] run function rr_bots:bot/movement/voidfall


execute as @e[tag=Bot,type=armor_stand] at @s unless entity @e[tag=BotHPZombie,distance=..3,limit=1,type=zombie] if entity @a[team=!Spectator,distance=..45,limit=1] run scoreboard players remove @s BotHP 1
execute as @e[tag=Bot,type=armor_stand] at @s unless entity @e[tag=BotHPZombie,distance=..3,limit=1,type=zombie] if entity @a[team=!Spectator,distance=..45,limit=1] run summon zombie ~ ~ ~ {Tags:["BotHPZombie"],NoGravity:1b,NoAI:1b,Silent:1b}

execute as @e[tag=Bot,type=armor_stand] at @s if entity @e[tag=BotHPZombie,distance=..3,limit=1,type=zombie] run tp @e[tag=BotHPZombie,distance=..2,limit=1,type=zombie] @s

execute as @e[tag=BotHPZombie,type=zombie] at @s unless entity @e[tag=Bot,distance=..3,limit=1,type=armor_stand] run tp @s ~ ~-400 ~
execute as @e[tag=BotHPZombie,type=zombie] at @s unless entity @e[tag=Bot,distance=..3,limit=1,type=armor_stand] run kill @s


effect give @e[tag=BotHPZombie,type=zombie] invisibility 1 100 true
effect give @e[tag=BotHPZombie,type=zombie] instant_damage 1 100 true

execute as @e[tag=BotHPZombie,type=zombie] unless entity @s[nbt={Health:20.0f}] at @s if entity @a[distance=..50,limit=1] run scoreboard players remove @e[tag=Bot,limit=1,sort=nearest] BotHP 1
execute as @e[tag=BotHPZombie,type=zombie] unless entity @s[nbt={Health:20.0f}] at @s if entity @a[distance=..50,limit=1] run data merge entity @s {Health:20.0f}



execute as @e[tag=Bot,scores={BotHP=-1000..0},type=armor_stand] run function rr_bots:bot/movement/die


#prevent that bot riding bug
execute as @e[tag=YellowBot,tag=BotRider,scores={botriding=60..},type=armor_stand] at @s if predicate rr_bots:rider_yellowbot run tag @s remove BotRider
execute as @e[tag=BlueBot,tag=BotRider,scores={botriding=60..},type=armor_stand] at @s if predicate rr_bots:rider_bluebot run tag @s remove BotRider



scoreboard players add @e[tag=Bot,type=armor_stand] botcontrol 1

execute as @e[tag=Bot,tag=!BotWalks,tag=!BotArrows,tag=!BotMissiles,tag=!BotRider,scores={botcontrol=1..},type=armor_stand] at @s run tag @s add BOTCONTROL

#RNG
execute as @e[tag=BlueBot,tag=BOTCONTROL,tag=!BotWalks,tag=!BotArrows,tag=!BotMissiles,tag=!BotRider,type=armor_stand] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BotRNG","BlueRNG"]}
execute as @e[tag=YellowBot,tag=BOTCONTROL,tag=!BotWalks,tag=!BotArrows,tag=!BotMissiles,tag=!BotRider,type=armor_stand] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BotRNG","YellowRNG"]}
scoreboard players set @e[tag=BotRNG,type=area_effect_cloud] BotRNGmax 10
execute as @e[tag=BotRNG,type=area_effect_cloud] store result score @s BotRNG run data get entity @s UUID[0]
execute as @e[tag=BotRNG,type=area_effect_cloud] store result score @s BotRNG run scoreboard players operation @s BotRNG %= @s BotRNGmax

execute as @e[tag=BotRNG,scores={BotRNG=0..3},type=area_effect_cloud] at @s run tag @e[tag=BOTCONTROL,distance=..2,limit=1,sort=nearest] add BotWalks
execute as @e[tag=BotRNG,tag=BlueRNG,scores={BotRNG=4..7},type=area_effect_cloud] at @s if entity @a[team=Yellow,distance=5..45] unless entity @e[tag=BotArrows,limit=4] run tag @e[tag=BotHasArrows,distance=..2,limit=1,sort=nearest] add BotArrows
execute as @e[tag=BotRNG,tag=YellowRNG,scores={BotRNG=4..7},type=area_effect_cloud] at @s if entity @a[team=Blue,distance=5..45] unless entity @e[tag=BotArrows,limit=4] run tag @e[tag=BotHasArrows,distance=..2,limit=1,sort=nearest] add BotArrows
execute as @e[tag=BotRNG,tag=BlueRNG,scores={BotRNG=8..10},type=area_effect_cloud] at @s if block ~ ~-3 ~4 air if entity @e[tag=BotHasMissile,distance=..2,limit=1] run tag @e[tag=BOTCONTROL,distance=..2,limit=1,sort=nearest] add BotMissiles
execute as @e[tag=BotRNG,tag=YellowRNG,scores={BotRNG=8..10},type=area_effect_cloud] at @s if block ~ ~-3 ~-4 air if entity @e[tag=BotHasMissile,distance=..2,limit=1] run tag @e[tag=BOTCONTROL,distance=..2,limit=1,sort=nearest] add BotMissiles

kill @e[tag=BotRNG,type=area_effect_cloud]



scoreboard players reset @e[tag=BOTCONTROL,type=armor_stand] botcontrol
scoreboard players reset @e[tag=BotWalks,type=armor_stand] botcontrol
scoreboard players reset @e[tag=BotArrows,type=armor_stand] botcontrol
scoreboard players reset @e[tag=BotMissiles,type=armor_stand] botcontrol


scoreboard players reset @e[tag=!BotMissiles,type=armor_stand] botmisspawn
scoreboard players reset @e[tag=Bot,tag=!BotRider] botriding

execute as @e[tag=BotWalks,type=armor_stand] at @s run function rr_bots:bot/movement/walkrandom
execute as @e[tag=BotArrows,scores={botarrowitems=1..},type=armor_stand] at @s run function rr_bots:bot/attacks/bot_shoot_arrow
execute as @e[tag=BotArrows,type=armor_stand] at @s unless entity @s[scores={botarrowitems=1..}] run tag @s remove BotArrows
execute as @e[tag=BotMissiles,tag=BotHasMissile,type=armor_stand] at @s run function rr_bots:bot/missile/bot_spawnmissile
execute as @e[tag=BotMissiles,tag=!BotHasMissile,type=armor_stand] at @s run tag @s remove BotMissiles
execute as @e[tag=BotRider,type=armor_stand] at @s run function rr_bots:bot/movement/rider/main

tag @e[tag=Bot,type=armor_stand] remove BotHasMissile