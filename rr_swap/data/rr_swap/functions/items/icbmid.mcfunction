execute if entity @s[scores={ICBMID=0}] run scoreboard players add $highest ICBMID 1
scoreboard players operation @s[scores={ICBMID=0}] ICBMID = $highest ICBMID
summon marker ~ ~ ~ {Tags:["ICBMtracker"]}
scoreboard players operation @e[type=marker,tag=ICBMtracker,limit=1,sort=nearest,distance=..1] ICBMID = $highest ICBMID
scoreboard players operation @e[type=marker,tag=ICBMtracker,limit=1,sort=nearest,distance=..1] UUIDTracker = @s UUIDTracker
execute as @e[type=egg,tag=ICBM,scores={ICBMID=0}] at @s run function rr_swap:items/icbmid