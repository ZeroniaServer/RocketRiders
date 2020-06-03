execute unless entity @e[tag=rr_swap,limit=1] run summon armor_stand 23 216 -18 {Tags:["rr_swap"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
execute unless entity @e[tag=swapplatform,limit=1] run summon area_effect_cloud 12 55 0 {Tags:[swapplatform],Duration:2000000000}

scoreboard objectives add swapside dummy

bossbar add rr_swap:swap_progress ["",{"text":"Swap Progress","bold":true,"color":"white"}]
bossbar set rr_swap:swap_progress color white
bossbar set rr_swap:swap_progress style notched_10
bossbar set rr_swap:swap_progress max 10

execute if entity @e[tag=rr_swap,limit=1] run tellraw @s {"text":"Swap Mode installed.","color":"green","bold":"true"}