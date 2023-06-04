##Teleports this tracker entity to corresponding ICBM egg
scoreboard players operation $temp ICBMID = @s ICBMID
tag @s add teleportPair
tag @e[x=0,type=egg,tag=ICBM,predicate=custom:icbm_match] add teleportPair
tag @e[x=0,type=egg,tag=ICBM,predicate=custom:icbm_match] add teleported
execute if entity @e[x=0,type=egg,tag=ICBM,tag=teleportPair] run tp @s @e[x=0,type=egg,tag=ICBM,tag=teleportPair,limit=1]

#Trigger conditions
execute unless entity @e[x=0,type=egg,tag=ICBM,tag=teleportPair] run tag @s add ICBMTriggered
execute if entity @e[x=0,type=egg,tag=ICBM,scores={ICBMtime=30..},tag=teleportPair] run tag @s add ICBMTriggered

#Next two commands disable ICBM near own portals
execute as @e[x=0,type=egg,tag=BlueICBM,tag=teleportPair] at @s if entity @s[x=-12,y=36,z=-80,dx=48,dy=25,dz=12] run kill @e[x=0,type=marker,tag=ICBMtracker,tag=teleportPair]
execute as @e[x=0,type=egg,tag=YellowICBM,tag=teleportPair] at @s if entity @s[x=-12,y=36,z=68,dx=48,dy=25,dz=12] run kill @e[x=0,type=marker,tag=ICBMtracker,tag=teleportPair]

#Trigger ICBM
execute at @s[tag=ICBMTriggered] run summon tnt ~ ~ ~ {Fuse:1s,Tags:["UtilKilled"]}
execute at @s[tag=ICBMTriggered] run summon tnt ~ ~ ~0.1 {Fuse:1s,Tags:["UtilKilled"]}
execute at @s[tag=ICBMTriggered] run summon tnt ~ ~ ~-0.1 {Fuse:1s,Tags:["UtilKilled"]}
execute at @s[tag=ICBMTriggered] run summon tnt ~0.1 ~ ~ {Fuse:1s,Tags:["UtilKilled"]}
execute at @s[tag=ICBMTriggered] run summon tnt ~-0.1 ~ ~ {Fuse:1s,Tags:["UtilKilled"]}
execute at @s[tag=ICBMTriggered] run summon tnt ~ ~0.1 ~ {Fuse:1s,Tags:["UtilKilled"]}
execute at @s[tag=ICBMTriggered] run summon tnt ~ ~-0.1 ~ {Fuse:1s,Tags:["UtilKilled"]}
execute at @s[tag=ICBMTriggered] run function game:tntutilkill

#Trigger nearby Vortices
tag @e[type=marker,tag=Vortex,distance=..5,limit=1] add originboom

#Reset
tag @s remove teleportPair
tag @e[x=0,type=egg,tag=ICBM,tag=teleportPair] remove teleportPair
scoreboard players reset $temp ICBMID

kill @s[tag=ICBMTriggered]