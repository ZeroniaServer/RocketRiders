clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
execute if entity @s[scores={endtimer=1}] run function rr_chase:game/endstats
tag @s add chaseLast
scoreboard players reset * FlagScore
execute if entity @s[scores={endtimer=1..}] run fill 13 74 68 7 64 61 moving_piston replace air
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead players none
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead name ["",{"text":"No one is in the lead!","color":"dark_aqua"}]
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead value 0
tag @a[team=Blue] remove InLead
execute if entity @s[scores={endtimer=1..2}] run tp @a[team=Blue,tag=Loser] 12 64 -66 0 0
execute if entity @s[scores={endtimer=1..2}] run tp @a[team=Blue,tag=Winner,limit=1] 12 64 64 180 0