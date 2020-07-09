execute unless entity @e[tag=rr_swap,limit=1,type=armor_stand] run summon armor_stand 23 216 -18 {Tags:["rr_swap"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}

scoreboard objectives add swapside dummy
scoreboard objectives add Clustertime dummy

bossbar add rr_swap:swap_progress ["",{"text":"Swap Progress","bold":true,"color":"white"}]
bossbar set rr_swap:swap_progress color white
bossbar set rr_swap:swap_progress style notched_10
bossbar set rr_swap:swap_progress max 10

execute if entity @e[tag=rr_swap,limit=1,type=armor_stand] run tellraw @s {"text":"Swap Mode installed.","color":"green","bold":"true"}