
execute store success score $sblast CmdData if entity @s[tag=sandboxLast]
execute if entity @s[tag=sandboxEnabled] run function gamemodes:restoresettings
execute if score $sblast CmdData matches 1 run tag @s add sandboxLast
scoreboard players reset * gamemode_components
tag @s remove sandboxEnabled
tag @s remove normalForce
tag @s remove lightningForce
tag @s remove heavyForce
tag @s remove utilForce
tag @s remove hasBees
tag @s remove customBossbar
tag @s add switchGamemodes