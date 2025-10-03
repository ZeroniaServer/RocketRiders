clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] *[custom_data~{id:"nova_rocket"}]
clear @a[x=0,team=Blue] *[custom_data~{id:"booster_rocket"}]
execute if entity @s[scores={endtimer=1}] as @a[x=0,team=Blue,tag=Winner,limit=1] run function custom:update_armor
execute if entity @s[scores={endtimer=1}] as @a[x=0,team=Blue] run function custom:update_inventory/shooting_saber
execute if entity @s[scores={endtimer=1}] run effect give @a[x=0,team=Blue,tag=Loser] weakness infinite 100 true
execute if entity @s[scores={endtimer=1}] run function rr_chase:game/endstats
scoreboard players reset * FlagScore
execute if entity @s[scores={endtimer=1..}] run kill @e[x=0,type=marker,tag=airDetect,limit=1]
execute if entity @s[scores={endtimer=1..}] run fill 13 74 68 7 64 61 moving_piston replace air
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead players none
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead name ["",{"text":"No one is in the lead!","color":"red"}]
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead value 0
execute if entity @s[scores={endtimer=1..10}] run function rr_chase:chaseblocks/killall
tag @a[x=0,team=Blue] remove InLead
effect clear @a glowing
execute if entity @s[scores={endtimer=1..2}] run tp @a[x=0,team=Blue,tag=Loser] 12 64 -66 0 0
execute if entity @s[scores={endtimer=1..2}] run tp @a[x=0,team=Blue,tag=Winner,limit=1] 12 64 64 180 0
execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay list
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset * flag_tablist_display
