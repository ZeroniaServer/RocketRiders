##Identify egg as ICBM
execute as @e[x=0,type=egg,nbt={Item:{components:{"minecraft:custom_data":{icbm:1b}}}}] run function everytick:icbm_owner

#Thanks iRobo for the ICBM algorithm!
#Track ICBMs with IDs and summon trackers recursively
scoreboard players add @e[x=0,type=egg,tag=ICBM] ICBMtime 1
scoreboard players add @e[x=0,type=egg,tag=ICBM] ICBMID 0
execute as @e[x=0,type=egg,tag=ICBM,scores={ICBMID=0}] at @s run function everytick:icbmid

#Teleport trackers to matching ICBMs + detect trigger conditions
execute unless entity @s[tag=portalOverride] as @e[x=0,type=marker,tag=ICBMtracker] at @s run function everytick:tptoicbm

#Kill eggs that didn't teleport
execute unless entity @s[tag=portalOverride] run kill @e[x=0,type=egg,tag=ICBM,tag=!teleported]
execute unless entity @s[tag=portalOverride] run tag @e[x=0,type=egg,tag=ICBM] remove teleported

#Smoke trail
execute as @e[x=0,type=egg,tag=ICBM] at @s if score $dust CmdData matches 1 run particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

#Kill chickens
execute as @e[x=0,type=chicken] run data merge entity @s {DeathTime:19s}
execute as @e[x=0,type=chicken] at @s run tp @s ~ ~-250 ~
kill @e[x=0,type=chicken]

#Kill credit
execute as @a[x=0,scores={respawn=1..},tag=UtilKilled] run function game:utilkillcheck