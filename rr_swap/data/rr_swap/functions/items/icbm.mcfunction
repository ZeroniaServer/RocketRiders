kill @e[type=chicken]

tag @e[tag=BlueVortex,type=egg] add ICBM
tag @e[tag=BlueVortex,type=egg] remove BlueVortex

tag @e[tag=YellowVortex,type=egg] add ICBM
tag @e[tag=YellowVortex,type=egg] remove YellowVortex

scoreboard players add @e[tag=ICBM,type=egg] ICBMtime 1
execute as @e[tag=ICBM,scores={ICBMtime=1},type=egg] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ICBMtracker"],Duration:15000}
execute as @e[tag=ICBMtracker,type=area_effect_cloud] at @s unless entity @e[tag=ICBM,distance=..3,limit=1,type=egg] run tag @s add ICBMTriggered
execute as @e[tag=ICBMtracker,type=area_effect_cloud] at @s if entity @e[tag=ICBM,distance=..3,limit=1,type=egg] run tp @s @e[tag=ICBM,distance=..3,limit=1,sort=nearest,type=egg]

execute as @e[tag=ICBM,scores={ICBMtime=30..},type=egg] at @s run tag @e[tag=ICBMtracker,type=area_effect_cloud,distance=..3,limit=1] add ICBMTriggered

execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~ ~ ~ {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~ ~ ~0.1 {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~ ~ ~-0.1 {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~0.1 ~ ~ {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~-0.1 ~ ~ {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~ ~0.1 ~ {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone,type=area_effect_cloud] at @s run summon tnt ~ ~-0.1 ~ {Fuse:1s}
tag @e[tag=ICBMTriggered,type=area_effect_cloud] add ICBMdone
execute as @e[tag=ICBMdone,type=area_effect_cloud] at @s run kill @e[tag=ICBM,distance=..3,limit=1,type=egg]
kill @e[tag=ICBMTriggered]

execute as @e[tag=ICBM,type=egg] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force