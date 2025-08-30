scoreboard players reset * gamemode_components
scoreboard players set $armor/generic gamemode_components 1
scoreboard players set $main_item/bow gamemode_components 1
scoreboard players set $disable_balancing gamemode_components 1

tag @s remove switchGamemodes
tag @s add pveEnabled
tag @s add HardcoreOff
tag @s[tag=Hardcore] add HardcoreWasOn
tag @s remove decosLocked
tag @s add tyingOff
tag @s add customBossbar
tag @s add onlyBlue