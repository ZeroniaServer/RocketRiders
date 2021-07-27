clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
clear @a[team=Yellow] #custom:clear
clear @a[team=Yellow] crossbow{nova:1b}
execute if entity @s[scores={endtimer=1}] run function game:endstats
execute if entity @s[scores={endtimer=2..}] run tag @a[team=Blue] remove InRanked
execute if entity @s[scores={endtimer=2..}] run tag @a[team=Yellow] remove InRanked

tag @a remove Forfeiter

scoreboard players reset @s Rounds

execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.gold
execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.dark_gray
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset Blue: RoundsWon
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset Yellow: RoundsWon