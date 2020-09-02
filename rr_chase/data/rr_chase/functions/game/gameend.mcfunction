clear @a[team=Blue] #custom:clear
tag @s add chaseLast
scoreboard players reset * FlagScore
bossbar set rr_chase:lead players none
bossbar set rr_chase:lead name ["",{"text":"No one is in the lead!","color":"dark_aqua"}]
bossbar set rr_chase:lead value 0
tag @a[team=Blue] remove InLead
execute as @s[scores={endtimer=1..2}] run tp @a[team=Blue,tag=Loser] 12 64 -66 0 0
execute as @s[scores={endtimer=1..2}] run tp @a[team=Blue,tag=Winner,limit=1] 12 64 64 180 0