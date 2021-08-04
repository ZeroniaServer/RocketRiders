##Identify egg as ICBM
execute as @e[type=egg] if data entity @s {Item:{tag:{CustomModelData:3}}} run function rr_swap:items/icbm_owner

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