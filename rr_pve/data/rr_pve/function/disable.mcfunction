scoreboard players reset * gamemode_components

tag @s remove pveEnabled
tag @s remove tyingOff
tag @s remove customBossbar
tag @s remove onlyBlue
tag @s add switchGamemodes

execute if predicate game:modifiers/hardcore/on run function arenaclear:lockdecos
