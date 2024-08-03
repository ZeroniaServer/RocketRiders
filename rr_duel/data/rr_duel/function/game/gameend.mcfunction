clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] crossbow[custom_data~{nova:1b}]
clear @a[x=0,team=Yellow] #custom:clear
clear @a[x=0,team=Yellow] crossbow[custom_data~{nova:1b}]
scoreboard players reset @s fakeendtimer
tag @s remove FakeGameEnd

#forfeit prize/loss
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] run tag @a[x=0,tag=InRanked,team=Blue] add ForfeitWon
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] run tag @a[x=0,tag=InRanked,team=Yellow] add ForfeitWon
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] as @a[x=0,tag=ForfeitWon] run function rr_duel:forfeit/giveprize
execute if entity @s[scores={ForfeitTimeout=1200..}] run scoreboard players reset @a[x=0,tag=!InRanked] ForfeitWin
execute if entity @s[scores={ForfeitTimeout=1200..}] run scoreboard players reset @a[x=0,tag=!InRanked] ForfeitLoss

execute if entity @s[scores={endtimer=1}] run function game:endstats
execute if entity @s[scores={endtimer=2..}] run tag @a[x=0,team=Blue] remove InRanked
execute if entity @s[scores={endtimer=2..}] run tag @a[x=0,team=Yellow] remove InRanked
scoreboard players reset @s ForfeitTimeout
tag @s remove TimeOut
tag @a[x=0] remove Forfeiter

scoreboard players reset @s Rounds

execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.gold
execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.dark_gray
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset Blue: RoundsWon
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset Yellow: RoundsWon