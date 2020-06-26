#Surprise Egg
execute as @e[tag=BlueSurprise] at @s run function items:surprise_blue/rng
execute as @e[tag=BlueSurpriseNormal] at @s run function items:surprise_blue/rngnormal
execute as @e[tag=BlueSurpriseHeavy] at @s run function items:surprise_blue/rngheavy
execute as @e[tag=BlueSurpriseLightning] at @s run function items:surprise_blue/rnglightning

execute as @e[tag=YellowSurprise] at @s run function items:surprise_yellow/rng
execute as @e[tag=YellowSurpriseNormal] at @s run function items:surprise_yellow/rngnormal
execute as @e[tag=YellowSurpriseHeavy] at @s run function items:surprise_yellow/rngheavy
execute as @e[tag=YellowSurpriseLightning] at @s run function items:surprise_yellow/rnglightning

#Prevention
execute if entity @s[tag=doPrevention] run function items:prevention/preventmissiles

#Roof cancelling (overworld only)
execute in overworld as @e[tag=missile] at @s run kill @s[y=181,dy=100]

#Bot prep
execute as @e[tag=bluemissile] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[RecentBotspawn],Duration:150}
execute as @e[tag=yellowmissile] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[RecentBotspawn],Duration:150}

#SmartClear prep
execute as @e[tag=bluemissile,tag=!BlueCata] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue],Duration:2000000000}
execute as @e[tag=yellowmissile,tag=!YellowCata] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow],Duration:2000000000}
execute as @e[tag=BlueCata] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue,SmartClearAECcata],Duration:2000000000}
execute as @e[tag=YellowCata] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow,SmartClearAECcata],Duration:2000000000}

#Auxiliary
execute as @e[tag=BlueAux] at @s run tp @s ~-1 ~-9 ~4
execute as @e[tag=YellowAux] at @s run tp @s ~-1 ~-9 ~-14

#TomaTwo
execute as @e[tag=BlueToma] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowToma] at @s run tp @s ~-1 ~-7 ~-12

#Chronullifier
execute as @e[tag=BlueNull] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowNull] at @s run tp @s ~-1 ~-8 ~-12

#Warhead
execute as @e[tag=BlueWar] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowWar] at @s run tp @s ~-1 ~-8 ~-14

#Thunderbolt
execute as @e[tag=BlueBolt] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowBolt] at @s run tp @s ~-1 ~-7 ~-14

#Hurricane
execute as @e[tag=BlueHur] at @s run tp @s ~-1 ~-7 ~5
execute as @e[tag=YellowHur] at @s run tp @s ~-1 ~-7 ~-13

#Elder Guardian
execute as @e[tag=BlueGuard] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowGuard] at @s run tp @s ~-1 ~-8 ~-14

#A.N.T.
execute as @e[tag=BlueAnt] at @s run tp @s ~ ~-9 ~4
execute as @e[tag=YellowAnt] at @s run tp @s ~ ~-9 ~-9

#Blade
execute as @e[tag=BlueBlade] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowBlade] at @s run tp @s ~-1 ~-7 ~-18

#Rifter
execute as @e[tag=BlueRift] at @s run tp @s ~-1 ~-7 ~3
execute as @e[tag=YellowRift] at @s run tp @s ~-1 ~-7 ~-16

#Juggerbuster
execute as @e[tag=BlueJug] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowJug] at @s run tp @s ~-1 ~-8 ~-20

#Slasher
execute as @e[tag=BlueSlash] at @s run tp @s ~-1 ~-9 ~4
execute as @e[tag=YellowSlash] at @s run tp @s ~-1 ~-9 ~-15

#Catapult
execute as @e[tag=BlueCata] at @s run tp @s ~-1 ~-8 ~3
execute as @e[tag=YellowCata] at @s run tp @s ~-1 ~-8 ~-14

#Citadel
execute as @e[tag=BlueCitadel] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowCitadel] at @s run tp @s ~-1 ~-8 ~-14

#Gemini
execute as @e[tag=BlueGemi] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowGemi] at @s run tp @s ~-1 ~-7 ~-13

#Lifter
execute as @e[tag=BlueLift] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowLift] at @s run tp @s ~-1 ~-7 ~-10

#Hypersonic
execute as @e[tag=BlueHyper] at @s run tp @s ~-1 ~-8 ~5
execute as @e[tag=YellowHyper] at @s run tp @s ~-1 ~-8 ~-13

#Bullet
execute as @e[tag=BlueBull] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowBull] at @s run tp @s ~-1 ~-8 ~-18

#Duplex
execute as @e[tag=BlueDuplex] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowDuplex] at @s run tp @s ~-1 ~-8 ~-22

#Broadsword
execute as @e[tag=BlueBroad] at @s run tp @s ~-1 ~-8 ~5
execute as @e[tag=YellowBroad] at @s run tp @s ~-1 ~-8 ~-16

#Missile prep
execute as @e[tag=missile] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn
execute as @e[tag=missile] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn
execute as @e[tag=missile,tag=portalSpawn] at @s run tp @s ~ ~4 ~
execute as @e[tag=missile,tag=portalSpawn] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn2
execute as @e[tag=missile,tag=portalSpawn] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn2
execute as @e[tag=missile,tag=portalSpawn2] at @s run tp @s ~ ~ ~8
execute as @e[tag=missile,tag=portalSpawn2] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn3
execute as @e[tag=missile,tag=portalSpawn2] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn3
execute as @e[tag=missile,tag=portalSpawn3] at @s run tp @s ~ ~ ~-16
#Void cancelling
execute as @e[tag=missile] at @s if predicate custom:nearvoid run kill @s
execute as @e[tag=missile] at @s run function items:structureblock
kill @e[tag=missile]