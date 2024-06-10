execute unless entity @e[x=0,type=armor_stand,tag=rr_swap,limit=1] run summon armor_stand 25 184 -6 {Tags:["rr_swap","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Swap Mode"}'}

scoreboard objectives add swapside dummy
scoreboard objectives add Clustertime dummy
scoreboard objectives add ICBMID dummy
scoreboard objectives add ICBMtime dummy

bossbar add rr_swap:swap_progress ["",{"text":"Swapping in: 60 seconds","bold":true,"color":"white"}]
bossbar set rr_swap:swap_progress color white
bossbar set rr_swap:swap_progress style notched_10
bossbar set rr_swap:swap_progress max 10

execute if entity @e[x=0,type=armor_stand,tag=rr_swap,limit=1] run tellraw @s {"text":"Swap Mode installed.","color":"green","bold":true}
scoreboard players add @e[x=0,type=armor_stand,tag=rr_swap,limit=1] CmdData 1
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop