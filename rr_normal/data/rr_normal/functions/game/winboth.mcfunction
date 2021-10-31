execute unless entity @s[tag=doTying] run function game:winboth
execute if entity @s[tag=doTying] run tag @s add SuddenDeath
execute if entity @s[tag=doTying] run tag @s add BothWon