scoreboard players reset * gamemode_components
scoreboard players set $armor/generic gamemode_components 1
scoreboard players set $main_item/shooting_saber gamemode_components 1
scoreboard players set $config_override.disable_team_balancing gamemode_components 1
scoreboard players set $config_override.hardcore gamemode_components -1

tag @s remove switchGamemodes
tag @s add pveEnabled
tag @s remove decosLocked
tag @s add tyingOff
tag @s add customBossbar
tag @s add onlyBlue