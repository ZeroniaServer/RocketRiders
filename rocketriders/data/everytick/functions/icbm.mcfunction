##Identify egg as ICBM
execute as @e[type=egg] if data entity @s {Item:{tag:{icbm:1b}}} run function everytick:icbm_owner

#Thanks iRobo for the ICBM algorithm!
#Track ICBMs with IDs and summon trackers recursively
scoreboard players add @e[type=egg,tag=ICBM] ICBMtime 1
scoreboard players add @e[type=egg,tag=ICBM] ICBMID 0
execute as @e[type=egg,tag=ICBM,scores={ICBMID=0}] at @s run function everytick:icbmid

#Teleport trackers to matching ICBMs + detect trigger conditions
execute unless entity @s[tag=portalOverride] as @e[type=marker,tag=ICBMtracker] at @s run function everytick:tptoicbm

#Kill eggs that didn't teleport
execute unless entity @s[tag=portalOverride] run kill @e[type=egg,tag=ICBM,tag=!teleported]
execute unless entity @s[tag=portalOverride] run tag @e[type=egg,tag=ICBM] remove teleported

#Smoke trail
execute as @e[type=egg,tag=ICBM] at @s if score $dust CmdData matches 1 run particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force @a[predicate=custom:indimension,predicate=custom:belowroof]

#Kill chickens
execute as @e[type=chicken] run data merge entity @s {DeathTime:19s}
execute as @e[type=chicken] at @s run tp @s ~ ~-250 ~
kill @e[type=chicken]

#Kill credit
execute as @a[predicate=custom:indimension,scores={respawn=1..},tag=UtilKilled] run function game:utilkillcheck