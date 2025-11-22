##Checks if the game should enter the "Both Teams Win" state or Sudden Death.
execute if predicate game:game_rules/disable_tying/on unless entity @s[tag=SMSwitch] run function rr_sandbox:game/winboth
execute unless predicate game:game_rules/disable_tying/on unless entity @s[tag=SMSwitch] run tag @s add SuddenDeath
execute unless predicate game:game_rules/disable_tying/on unless entity @s[tag=SMSwitch] run tag @s add BothWon
