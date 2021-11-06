tag @s remove switchGamemodes
tag @s add ctfEnabled
tag @s add ResidersOff
tag @s[tag=Residers] add ResidersWasOn
tag @s add HardcoreOff
tag @s[tag=Hardcore] add HardcoreWasOn
tag @s add CollisionControlOff
tag @s[tag=CollisionControl] add CollisionControlWasOn
tag @s[tag=DoublePortal] add DoublePortalWasOn
function arenaclear:unlockdecos
tag @s add fbPortalsOff
tag @s add preventionOff
tag @s add preventionSoft
tag @s add portalDecosOff
tag @s add customSaberMsg
tag @s add noPortal
tag @s add canopyStack
tag @s add customPrevention
tag @s add customObsidian
tag @s add noSabers
tag @s add respawnFlag

#disable arrows and enable canopies/fireballs
tag @s[tag=rngArrows] add arrowsWasOn
tag @s remove rngArrows
tag @s[tag=!rngCanopy] add canopyWasOff
tag @s add rngCanopy
tag @s[tag=!rngFireball] add fireballWasOff
tag @s add rngFireball
tag @s[tag=!rngUtil] add utilWasOff
tag @s add rngUtil
