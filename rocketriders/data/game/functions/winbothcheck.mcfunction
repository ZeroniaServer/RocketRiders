execute unless entity @s[tag=doTying,tag=!tyingOff] run function game:winboth
execute if entity @s[tag=doTying,tag=!tyingOff] run tag @s add SuddenDeath
execute if entity @s[tag=doTying,tag=!tyingOff] run tag @s add BothWon