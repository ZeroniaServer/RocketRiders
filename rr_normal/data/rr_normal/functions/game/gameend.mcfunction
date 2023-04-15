clear @a[predicate=custom:indimension,team=Blue] #custom:clear
clear @a[predicate=custom:indimension,team=Blue] crossbow{nova:1b}
clear @a[predicate=custom:indimension,team=Yellow] #custom:clear
clear @a[predicate=custom:indimension,team=Yellow] crossbow{nova:1b}
execute if entity @s[scores={endtimer=101},tag=doTying,tag=!tyingOff,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=!doTying,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=BothWon] run function game:endstats