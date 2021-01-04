#Identify Vortex eggs as ICBM
tag @e[tag=BlueVortex,type=egg] add ICBM
tag @e[tag=BlueVortex,type=egg] remove BlueVortex

tag @e[tag=YellowVortex,type=egg] add ICBM
tag @e[tag=YellowVortex,type=egg] remove YellowVortex

#Thanks iRobo for the ICBM algorithm!
#Track ICBMs with IDs and summon trackers recursively
scoreboard players add @e[tag=ICBM,type=egg] ICBMtime 1
scoreboard players add @e[tag=ICBM,type=egg] ICBMID 0
execute as @e[tag=ICBM,scores={ICBMID=0},type=egg] at @s run function rr_swap:items/icbmid

#Teleport trackers to matching ICBMs recursively + detect trigger conditions
execute store result score $numeggs ICBMID if entity @e[tag=ICBM,scores={ICBMID=1..},type=egg]
scoreboard players operation $tptracker ICBMID = $highest ICBMID
scoreboard players operation $tptracker ICBMID -= $numeggs ICBMID
function rr_swap:items/tptoicbm
execute as @e[tag=ICBMtracker,type=area_effect_cloud,tag=!teleported] run tag @s add ICBMTriggered
tag @e[tag=ICBMtracker,type=area_effect_cloud] remove teleported

#Trigger ICBM
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~ ~ ~ {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~ ~ ~0.1 {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~ ~ ~-0.1 {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~0.1 ~ ~ {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~-0.1 ~ ~ {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~ ~0.1 ~ {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~ ~-0.1 ~ {Fuse:1s}
tag @e[tag=ICBMTriggered,type=area_effect_cloud] add ICBMdone
kill @e[tag=ICBMTriggered]

#Smoke trail
execute as @e[tag=ICBM,type=egg] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force