##Store ICBM user UUID's into their UUIDTracker score
execute as @a[scores={ThrowVortex=1..}] store result score @s UUIDTracker run data get entity @s UUID[0]

##Identify egg as ICBM
execute as @a[team=Yellow,scores={ThrowVortex=1..}] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=!YellowICBM,tag=!BlueICBM] add YellowICBM
execute as @a[team=Yellow,scores={ThrowVortex=1..}] at @s store result score @e[type=egg,tag=YellowICBM,limit=1,distance=..3,sort=nearest] UUIDTracker run scoreboard players get @s UUIDTracker
execute as @a[team=Blue,scores={ThrowVortex=1..}] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=!YellowICBM,tag=!BlueICBM] add BlueICBM
execute as @a[team=Blue,scores={ThrowVortex=1..}] at @s store result score @e[type=egg,tag=BlueICBM,limit=1,distance=..3,sort=nearest] UUIDTracker run scoreboard players get @s UUIDTracker
scoreboard players reset @a ThrowVortex
tag @e[type=egg,tag=BlueICBM] add ICBM
tag @e[type=egg,tag=YellowICBM] add ICBM

#Thanks iRobo for the ICBM algorithm!
#Track ICBMs with IDs and summon trackers recursively
scoreboard players add @e[type=egg,tag=ICBM] ICBMtime 1
scoreboard players add @e[type=egg,tag=ICBM] ICBMID 0
execute as @e[type=egg,tag=ICBM,scores={ICBMID=0}] at @s run function rr_crusade:items/icbmid

#Teleport trackers to matching ICBMs recursively + detect trigger conditions
execute store result score $numeggs ICBMID if entity @e[type=egg,tag=ICBM,scores={ICBMID=1..}]
scoreboard players operation $tptracker ICBMID = $highest ICBMID
scoreboard players operation $tptracker ICBMID -= $numeggs ICBMID
function rr_crusade:items/tptoicbm
execute as @e[type=marker,tag=ICBMtracker,tag=!teleported] run tag @s add ICBMTriggered
tag @e[type=marker,tag=ICBMtracker] remove teleported

#Trigger ICBM
execute as @e[type=marker,tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~ ~ ~ {Fuse:1s,Tags:["UtilKilled"]}
execute as @e[type=marker,tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~ ~ ~0.1 {Fuse:1s,Tags:["UtilKilled"]}
execute as @e[type=marker,tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~ ~ ~-0.1 {Fuse:1s,Tags:["UtilKilled"]}
execute as @e[type=marker,tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~0.1 ~ ~ {Fuse:1s,Tags:["UtilKilled"]}
execute as @e[type=marker,tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~-0.1 ~ ~ {Fuse:1s,Tags:["UtilKilled"]}
execute as @e[type=marker,tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~ ~0.1 ~ {Fuse:1s,Tags:["UtilKilled"]}
execute as @e[type=marker,tag=ICBMTriggered,tag=!ICBMdone] at @s run summon tnt ~ ~-0.1 ~ {Fuse:1s,Tags:["UtilKilled"]}
execute as @e[type=marker,tag=ICBMTriggered,tag=!ICBMdone] at @s run function game:tntutilkill
tag @e[type=marker,tag=ICBMTriggered] add ICBMdone
kill @e[type=marker,tag=ICBMTriggered]

#Smoke trail
execute as @e[type=egg,tag=ICBM] at @s run particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force

#Kill chickens
execute as @e[type=chicken] run data merge entity @s {DeathTime:19s}
execute as @e[type=chicken] at @s run tp @s ~ ~-250 ~
kill @e[type=chicken]

#Kill credit
execute as @a[scores={respawn=1..},tag=UtilKilled] run function game:utilkillcheck