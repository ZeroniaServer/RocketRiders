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


execute as @e[tag=Bot] at @s unless entity @e[tag=BotHPZombie,distance=..3,limit=1] if entity @a[distance=..50,limit=1] run scoreboard players remove @s BotHP 1
execute as @e[tag=Bot] at @s unless entity @e[tag=BotHPZombie,distance=..3,limit=1] if entity @a[distance=..50,limit=1] run summon zombie ~ ~ ~ {Tags:["BotHPZombie"],NoGravity:1b,NoAI:1b,Silent:1b}

execute as @e[tag=Bot] at @s if entity @e[tag=BotHPZombie,distance=..3,limit=1] run tp @e[tag=BotHPZombie,distance=..2,limit=1] @s

execute as @e[tag=BotHPZombie] at @s unless entity @e[tag=Bot,distance=..3,limit=1] run tp @s ~ ~-400 ~
execute as @e[tag=BotHPZombie] at @s unless entity @e[tag=Bot,distance=..3,limit=1] run kill @s


effect give @e[tag=BotHPZombie] invisibility 1 100 true
effect give @e[tag=BotHPZombie] instant_damage 1 100 true

execute as @e[tag=BotHPZombie] unless entity @s[nbt={Health:20.0f}] at @s if entity @a[distance=..50,limit=1] run scoreboard players remove @e[tag=Bot,limit=1,sort=nearest] BotHP 1
execute as @e[tag=BotHPZombie] unless entity @s[nbt={Health:20.0f}] at @s if entity @a[distance=..50,limit=1] run data merge entity @s {Health:20.0f}



execute as @e[tag=Bot,scores={BotHP=-1000..0}] run function bot:movement/die




scoreboard players add @e[tag=Bot] botcontrol 1

execute as @e[tag=Bot,tag=!BotWalks,tag=!BotArrows,tag=!BotMissiles,scores={botcontrol=1..}] at @s run tag @s add BOTCONTROL

execute as @e[tag=BOTCONTROL,tag=!BotRider] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotWalk"],Duration:2}
execute as @e[tag=BOTCONTROL,tag=!BotRider] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotWalk"],Duration:2}
execute as @e[tag=BOTCONTROL,tag=!BotRider] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotWalk"],Duration:2}
execute as @e[tag=BOTCONTROL,tag=!BotRider] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotWalk"],Duration:2}
execute as @e[tag=BOTCONTROL,tag=!BotRider,tag=BlueBot] at @s if block ~ ~-3 ~4 air if entity @s[tag=BotHasMissile] unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotMissile"],Duration:2}
execute as @e[tag=BOTCONTROL,tag=!BotRider,tag=YellowBot] at @s if block ~ ~-3 ~-4 air if entity @s[tag=BotHasMissile] unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotMissile"],Duration:2}
execute as @e[tag=BOTCONTROL,tag=BlueBot,tag=BotHasArrows] at @s if entity @e[team=Yellow,distance=5..45,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotArrow"],Duration:2}
execute as @e[tag=BOTCONTROL,tag=YellowBot,tag=BotHasArrows] at @s if entity @e[team=Blue,distance=5..45,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotArrow"],Duration:2}
execute as @e[tag=BOTCONTROL] at @s run tag @e[tag=BOTAIRNG,limit=1,sort=random,distance=..2] add SelectedBOTAI

execute as @e[tag=BOTCONTROL] at @s if entity @e[tag=SelectedBOTAI,tag=BotWalk,distance=..2,limit=1] run tag @s add BotWalks
execute as @e[tag=BOTCONTROL] at @s if entity @e[tag=SelectedBOTAI,tag=BotArrow,distance=..2,limit=1] run tag @s add BotArrows
execute as @e[tag=BOTCONTROL] at @s if entity @e[tag=SelectedBOTAI,tag=BotMissile,distance=..2,limit=1] run tag @s add BotMissiles

kill @e[tag=BotAIRNG]

scoreboard players reset @e[tag=BOTCONTROL] botcontrol
scoreboard players reset @e[tag=BotWalks] botcontrol
scoreboard players reset @e[tag=BotArrows] botcontrol
scoreboard players reset @e[tag=BotMissiles] botcontrol


scoreboard players reset @e[tag=!BotMissiles] botmisspawn
scoreboard players reset @e[tag=Bot,tag=!BotRider] botriding

execute as @e[tag=BotWalks] at @s run function bot:movement/walkrandom
execute as @e[tag=BotArrows] at @s run function bot:attacks/bot_shoot_arrow
execute as @e[tag=BotMissiles] at @s run function bot:missile/bot_spawnmissile
execute as @e[tag=BotRider] at @s run function bot:movement/rider/main

tag @e[tag=Bot] remove BotHasMissile