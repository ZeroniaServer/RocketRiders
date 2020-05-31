kill @e[type=chicken]

tag @e[tag=BlueVortex] add ICBM
tag @e[tag=BlueVortex] remove BlueVortex

tag @e[tag=YellowVortex] add ICBM
tag @e[tag=YellowVortex] remove YellowVortex

scoreboard players add @e[tag=ICBM] ICBMtime 1
execute as @e[tag=ICBM,scores={ICBMtime=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ICBMtracker"],Duration:15000}
execute as @e[tag=ICBMtracker] at @s unless entity @e[tag=ICBM,distance=..3,limit=1] run tag @s add ICBMTriggered
execute as @e[tag=ICBMtracker] at @s if entity @e[tag=ICBM,distance=..3,limit=1] run tp @s @e[tag=ICBM,distance=..3,limit=1,sort=nearest]

tag @e[tag=ICBM,scores={ICBMtime=30..}] add ICBMTriggered

execute as @e[tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~ ~ ~ {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~ ~ ~0.1 {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~ ~ ~-0.1 {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~0.1 ~ ~ {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~-0.1 ~ ~ {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~ ~0.1 ~ {Fuse:1s}
execute as @e[tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~ ~-0.1 ~ {Fuse:1s}
tag @e[tag=ICBMTriggered] add ICBMdone
kill @e[tag=ICBMTriggered]

execute as @e[tag=ICBM] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force