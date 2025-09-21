scoreboard players reset * gamemode_components

tag @s remove chaseEnabled
tag @s remove tyingOff
tag @s[tag=DoublePortalWasOn] add DoublePortal
tag @s remove DoublePortalWasOn
tag @s remove portalDecosOff
tag @s remove preventionOff
tag @s remove customPrevention
tag @s remove customEnds
tag @s remove customBossbar
tag @s remove leaveYSpawn
team modify Blue friendlyFire false
tag @s[tag=arrowsWasOff] remove rngArrows
tag @s remove arrowsWasOff
tag @s[tag=utilWasOff] remove rngUtil
tag @s remove utilWasOff
# tag @s remove arrowLimit
tag @s[tag=stackingWasOff] remove doStacking
tag @s remove stackingWasOff
tag @s remove stackingOn
tag @s remove antigriefOff
tag @s remove customSaberMsg

tag @s add switchGamemodes