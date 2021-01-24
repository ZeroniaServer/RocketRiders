clear @a[team=Blue] #custom:clear
clear @a[team=Yellow] #custom:clear
execute as @s[scores={endtimer=1}] run function rr_ctf:game/endstats
execute as @s[scores={endtimer=1}] run fill -9 74 68 -15 64 61 moving_piston replace air
execute as @s[scores={endtimer=1}] run fill 35 74 68 29 64 61 moving_piston replace air
execute as @s[scores={endtimer=1}] run fill -9 74 -68 -15 64 -61 moving_piston replace air
execute as @s[scores={endtimer=1}] run fill 35 74 -68 29 64 -61 moving_piston replace air
tag @a remove FlipMissile
tag @a remove CarryFlag
tag @a remove CarryFY1
tag @a remove CarryFY2
tag @a remove CarryFB1
tag @a remove CarryFB2
scoreboard players reset * FlagScore
execute as @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.gold
execute as @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.blue
execute as @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.dark_gray
execute as @s[scores={endtimer=569..}] run scoreboard players reset * FlagDisp
tag @s add ctfLast