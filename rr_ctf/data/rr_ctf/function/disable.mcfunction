scoreboard players reset * gamemode_components

tag @s remove ctfEnabled
tag @s[tag=DoublePortalWasOn] add DoublePortal
tag @s remove DoublePortalWasOn
tag @s remove fbPortalsOff
tag @s remove preventionOff
tag @s remove portalDecosOff
tag @s[tag=arrowsWasOn] add rngArrows
tag @s remove arrowsWasOn
tag @s[tag=canopyWasOff] remove rngCanopy
tag @s remove canopyWasOff
tag @s[tag=fireballWasOff] remove rngFireball
tag @s remove fireballWasOff
tag @s[tag=utilWasOff] remove rngUtil
tag @s remove utilWasOff
tag @s remove customSaberMsg
tag @s remove canopyStack
tag @s remove respawnFlag
tag @s remove customPrevention
tag @s remove customObsidian
tag @s remove noSabers
tag @s add switchGamemodes

execute if predicate game:modifiers/hardcore/on run function arenaclear:lockdecos
