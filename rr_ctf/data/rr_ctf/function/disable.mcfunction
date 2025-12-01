scoreboard players reset * gamemode_components

tag @s remove ctfEnabled
tag @s remove portalDecosOff
tag @s remove canopyStack
tag @s remove respawnFlag
tag @s remove customPrevention
tag @s add switchGamemodes

execute if predicate game:modifiers/hardcore/on run function arenaclear:lockdecos
