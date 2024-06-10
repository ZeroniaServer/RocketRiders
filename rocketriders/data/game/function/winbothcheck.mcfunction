##Checks if the game should enter the "Both Teams Win" state or Sudden Death.
execute unless entity @s[tag=SMSwitch] unless entity @s[tag=doTying,tag=!tyingOff] run function game:winboth
execute unless entity @s[tag=SMSwitch] if entity @s[tag=doTying,tag=!tyingOff] run tag @s add SuddenDeath
execute unless entity @s[tag=SMSwitch] if entity @s[tag=doTying,tag=!tyingOff] run tag @s add BothWon