clear @a[team=Blue] #custom:clear
clear @a[team=Yellow] #custom:clear
tag @a remove FlipMissile
tag @a remove CarryFlag
tag @a remove CarryFY1
tag @a remove CarryFY2
tag @a remove CarryFB1
tag @a remove CarryFB2
scoreboard players reset * FlagScore
execute as @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar
execute as @s[scores={endtimer=569..}] run scoreboard players reset * FlagDisp
tag @s add ctfLast