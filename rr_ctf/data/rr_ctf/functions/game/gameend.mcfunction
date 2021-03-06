clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
clear @a[team=Yellow] #custom:clear
clear @a[team=Yellow] crossbow{nova:1b}
execute as @s[scores={endtimer=1}] run kill @e[tag=airDetectBlue,type=marker]
execute as @s[scores={endtimer=1}] run kill @e[tag=airDetectYellow,type=marker]
execute as @s[scores={endtimer=1},tag=BlueWon] run clear @a[team=Yellow] netherite_pickaxe
execute as @s[scores={endtimer=1},tag=YellowWon] run clear @a[team=Blue] netherite_pickaxe
execute as @s[scores={endtimer=1..}] run fill -9 74 68 -15 64 61 moving_piston replace air
execute as @s[scores={endtimer=1..}] run fill 35 74 68 29 64 61 moving_piston replace air
execute as @s[scores={endtimer=1..}] run fill -9 74 -68 -15 64 -61 moving_piston replace air
execute as @s[scores={endtimer=1..}] run fill 35 74 -68 29 64 -61 moving_piston replace air
execute as @s[scores={endtimer=2}] run function rr_ctf:game/endstats
execute as @s[scores={endtimer=2..}] run tag @a remove FlipMissile
execute as @s[scores={endtimer=2..}] run tag @a remove CarryFlag
execute as @s[scores={endtimer=2..}] run tag @a remove CarryFY1
execute as @s[scores={endtimer=2..}] run tag @a remove CarryFY2
execute as @s[scores={endtimer=2..}] run tag @a remove CarryFB1
execute as @s[scores={endtimer=2..}] run tag @a remove CarryFB2
execute as @s[scores={endtimer=1..}] run kill @e[tag=FlagParticle,type=marker]
execute as @s[scores={endtimer=2..}] run scoreboard players reset * FlagScore
execute as @s[scores={endtimer=2..}] run scoreboard players reset * FlagDeliver
execute as @s[scores={endtimer=1..}] run bossbar set rr_ctf:fy1 players none
execute as @s[scores={endtimer=1..}] run bossbar set rr_ctf:fy1 name ["",{"text":" is carrying a ","color":"dark_aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"dark_aqua"}]
execute as @s[scores={endtimer=1..}] run bossbar set rr_ctf:fy1 value 0
execute as @s[scores={endtimer=1..}] run bossbar set rr_ctf:fy2 players none
execute as @s[scores={endtimer=1..}] run bossbar set rr_ctf:fy2 name ["",{"text":" is carrying a ","color":"dark_aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"dark_aqua"}]
execute as @s[scores={endtimer=1..}] run bossbar set rr_ctf:fy2 value 0
execute as @s[scores={endtimer=1..}] run bossbar set rr_ctf:fb1 players none
execute as @s[scores={endtimer=1..}] run bossbar set rr_ctf:fb1 name ["",{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute as @s[scores={endtimer=1..}] run bossbar set rr_ctf:fb1 value 0
execute as @s[scores={endtimer=1..}] run bossbar set rr_ctf:fb2 players none
execute as @s[scores={endtimer=1..}] run bossbar set rr_ctf:fb2 name ["",{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute as @s[scores={endtimer=1..}] run bossbar set rr_ctf:fb2 value 0
execute as @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.gold
execute as @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.blue
execute as @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.dark_gray
execute as @s[scores={endtimer=569..}] run scoreboard players reset * FlagDisp
tag @s add ctfLast