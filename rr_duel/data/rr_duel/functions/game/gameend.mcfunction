clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
clear @a[team=Yellow] #custom:clear
clear @a[team=Yellow] crossbow{nova:1b}
scoreboard players reset @s fakeendtimer
tag @s remove FakeGameEnd

#forfeit prize/loss
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] run tag @a[tag=InRanked,team=Blue] add ForfeitWon
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] run tag @a[tag=InRanked,team=Yellow] add ForfeitWon
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] as @a[tag=ForfeitWon] run function rr_duel:forfeit/giveprize
execute if entity @s[scores={ForfeitTimeout=1200..}] run scoreboard players reset @a[tag=!InRanked] ForfeitWin
execute if entity @s[scores={ForfeitTimeout=1200..}] run scoreboard players reset @a[tag=!InRanked] ForfeitLoss

execute if entity @s[scores={endtimer=1}] run function game:endstats
execute if entity @s[scores={endtimer=2..}] run tag @a[team=Blue] remove InRanked
execute if entity @s[scores={endtimer=2..}] run tag @a[team=Yellow] remove InRanked
scoreboard players reset @s ForfeitTimeout
tag @s remove TimeOut
tag @a remove Forfeiter

scoreboard players reset @s Rounds

execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.gold
execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.dark_gray
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset Blue: RoundsWon
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset Yellow: RoundsWon