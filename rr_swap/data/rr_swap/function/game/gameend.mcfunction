function rr_swap:items/cluster
clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] crossbow[custom_data={nova:1b}]
clear @a[x=0,team=Yellow] #custom:clear
clear @a[x=0,team=Yellow] crossbow[custom_data={nova:1b}]
execute if entity @s[scores={endtimer=101},tag=doTying,tag=!tyingOff,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=!doTying,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=BothWon] run function game:endstats

#Cluster Fireballs can't be punched (credit: Miolith)
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=StillCluster] run scoreboard players add @s endFireball 1
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=ClusterStarter,tag=Still] run scoreboard players add @s endFireball 1
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,scores={endFireball=1}] at @s run summon area_effect_cloud ~ ~-.375 ~ {Duration:2000000,Radius:0,NoGravity:1b,Tags:["endFireballAEC","endFireball"],Passengers:[{id:"minecraft:fireball",Tags:["endFireball"],ExplosionPower:0,Motion:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d]}]}
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=endFireball] at @s run data modify entity @s Owner set from entity @e[type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Owner
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=endFireball] at @s run data modify entity @s Item set from entity @e[type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Item
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=endFireball] at @s store result score @s Clustertime run scoreboard players get @e[type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Clustertime
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=fireball,tag=endFireball] at @s run data modify entity @s Tags set from entity @e[type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Tags
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=area_effect_cloud,tag=endFireballAEC] at @s run kill @e[type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1]
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=area_effect_cloud,tag=endFireballAEC] at @s run tag @e[type=fireball,limit=1,sort=nearest,distance=..1] add endFireball
execute if entity @s[scores={endtimer=1..}] as @e[x=0,type=fireball,tag=endFireball] run data merge entity @s {ExplosionPower:0,Motion:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d]}

scoreboard players set QuickSwap swapside 0
scoreboard players set SwapPlatformSec swapside 20
scoreboard players set SwapPlatformTick swapside 0
bossbar set rr_swap:swap_progress players none