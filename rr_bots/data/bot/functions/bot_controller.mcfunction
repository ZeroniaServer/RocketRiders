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







scoreboard players add @e[tag=Bot] botcontrol 1

execute as @e[tag=Bot,tag=!BotWalks,tag=!BotArrows,tag=!BotMissiles,scores={botcontrol=1..}] at @s run tag @s add BOTCONTROL

execute as @e[tag=BOTCONTROL] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotWalk"],Duration:2}
execute as @e[tag=BOTCONTROL] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotWalk"],Duration:2}
execute as @e[tag=BOTCONTROL] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotWalk"],Duration:2}
execute as @e[tag=BOTCONTROL] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotWalk"],Duration:2}
execute as @e[tag=BOTCONTROL] at @s if entity @s[tag=BotHasMissile] unless entity @e[tag=RecentBotspawn,distance=..7] run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotMissile"],Duration:2}
execute as @e[tag=BOTCONTROL,tag=BlueBot,tag=BotHasArrows] at @s if entity @a[team=Yellow,distance=5..45,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotArrow"],Duration:2}
execute as @e[tag=BOTCONTROL,tag=YellowBot,tag=BotHasArrows] at @s if entity @a[team=Blue,distance=5..45,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["BOTAIRNG","BotArrow"],Duration:2}
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


execute as @e[tag=BotWalks] at @s run function bot:movement/walkrandom
execute as @e[tag=BotArrows] at @s run function bot:attacks/bot_shoot_arrow
execute as @e[tag=BotMissiles] at @s run function bot:missile/bot_spawnmissile

tag @e[tag=Bot] remove BotHasMissile