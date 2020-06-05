clear @a[team=Blue] #custom:clear
clear @a[team=Yellow] #custom:clear
tag @s add rankedLast

tag @a[team=Blue] remove InRanked
tag @a[team=Yellow] remove InRanked

tag @s remove TimeOut
scoreboard players reset @s ForfeitTimeout

execute as @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar
execute as @s[scores={endtimer=569..}] run scoreboard players reset Blue RoundsWon
execute as @s[scores={endtimer=569..}] run scoreboard players reset Yellow RoundsWon