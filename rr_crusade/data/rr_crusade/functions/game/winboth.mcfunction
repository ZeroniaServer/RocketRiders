execute unless entity @s[tag=doTying] run function game:winboth
execute unless entity @s[tag=doTying] run bossbar set rr_crusade:blue players
execute unless entity @s[tag=doTying] run bossbar set rr_crusade:yellow players
execute if entity @s[tag=doTying] run tag @s add SuddenDeath
execute if entity @s[tag=doTying] run tag @s add BothWon