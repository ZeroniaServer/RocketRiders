tag @s remove ctfEnabled
tag @s remove ResidersOff
tag @s[tag=ResidersWasOn] add Residers
tag @s remove ResidersWasOn
tag @s remove HardcoreOff
tag @s[tag=HardcoreWasOn] add Hardcore
execute as @s[tag=HardcoreWasOn] run function arenaclear:lockdecos
tag @s remove HardcoreWasOn
tag @s[tag=DoublePortalWasOn] add DoublePortal
tag @s remove DoublePortalWasOn
tag @s remove CollisionControlOff
tag @s[tag=CollisionControlWasOn] add CollisionControl
tag @s remove CollisionControlWasOn
tag @s remove fbPortalsOff
tag @s remove preventionOff
tag @s remove preventionSoft
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
tag @s remove noPortal
tag @s remove canopyStack
tag @s remove respawnFlag
tag @s remove customPrevention
tag @s remove customObsidian
tag @s remove noSabers
tag @s add switchGamemodes