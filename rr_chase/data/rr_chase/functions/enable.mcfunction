tag @s remove switchGamemodes
tag @s add chaseEnabled
tag @s add tyingOff
tag @s add ResidersOff
tag @s[tag=Residers] add ResidersWasOn
tag @s[tag=DoublePortal] add DoublePortalWasOn
tag @s add CollisionControlOff
tag @s[tag=CollisionControl] add CollisionControlWasOn
tag @s add fbPortalsOff
tag @s add portalDecosOff
tag @s add preventionOff
tag @s add preventionSoft
tag @s add customPrevention
tag @s add noPortal
tag @s add customEnds
tag @s add customBossbar
tag @s add leaveYSpawn
tag @s add noTeamBalance
# tag @s add arrowLimit
tag @s[tag=!doStacking] add stackingWasOff
tag @s add doStacking
tag @s add stackingOn
tag @s add custVortParticle
tag @s add customNova
tag @s add customShield
tag @s add onlyBlue
tag @s add antigriefOff
tag @s add customSaberMsg
team modify Blue friendlyFire true

#haha funny
tag @e[type=marker,tag=yellowjoinpad] add tempyellow
tag @e[type=marker,tag=yellowjoinpad] add bluejoinpad
tag @e[type=marker,tag=yellowjoinpad] remove yellowjoinpad

#enable arrows/utilities
tag @s[tag=!rngArrows] add arrowsWasOff
tag @s add rngArrows
tag @s[tag=!rngUtil] add utilWasOff
tag @s add rngUtil