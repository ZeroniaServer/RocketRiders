execute unless entity @e[tag=rr_swap,limit=1,type=armor_stand] run summon armor_stand 23 216 -18 {Tags:["rr_swap","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Swap Mode"}'}

scoreboard objectives add swapside dummy
scoreboard objectives add Clustertime dummy
scoreboard objectives add ICBMID dummy
scoreboard objectives add ICBMtime dummy

bossbar add rr_swap:swap_progress ["",{"text":"Swapping in: 60 seconds","bold":true,"color":"white"}]
bossbar set rr_swap:swap_progress color white
bossbar set rr_swap:swap_progress style notched_10
bossbar set rr_swap:swap_progress max 10

execute if entity @e[tag=rr_swap,limit=1,type=armor_stand] run tellraw @s {"text":"Swap Mode installed.","color":"green","bold":"true"}
scoreboard players add @e[tag=rr_swap,limit=1,type=armor_stand] CmdData 1
execute unless entity @e[tag=PlacerClear,type=area_effect_cloud] run function game:forcestop