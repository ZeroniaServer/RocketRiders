execute if entity @s[scores={ICBMID=0}] run scoreboard players add $highest ICBMID 1
scoreboard players operation @s[scores={ICBMID=0}] ICBMID = $highest ICBMID
summon area_effect_cloud ~ ~ ~ {Tags:["ICBMtracker"],Duration:15000}
scoreboard players operation @e[tag=ICBMtracker,type=area_effect_cloud,limit=1,sort=nearest,distance=..1] ICBMID = $highest ICBMID
execute as @e[tag=ICBM,scores={ICBMID=0},type=egg] at @s run function rr_swap:items/icbmid