tag @s remove chaseEnabled
tag @s remove tyingOff
tag @s remove ResidersOff
tag @s[tag=ResidersWasOn] add Residers
tag @s remove ResidersWasOn
tag @s[tag=DoublePortalWasOn] add DoublePortal
tag @s remove DoublePortalWasOn
tag @s remove CollisionControlOff
tag @s[tag=CollisionControlWasOn] add CollisionControl
tag @s remove CollisionControlWasOn
tag @s remove fbPortalsOff
tag @s remove portalDecosOff
tag @s remove preventionOff
tag @s remove preventionSoft
tag @s remove customPrevention
tag @s remove noPortal
tag @s remove customEnds
tag @s remove customBossbar
tag @s remove leaveYSpawn
tag @s remove noTeamBalance
team modify Blue friendlyFire false
tag @s[tag=arrowsWasOff] remove rngArrows
tag @s remove arrowsWasOff
tag @s[tag=utilWasOff] remove rngUtil
tag @s remove utilWasOff
# tag @s remove arrowLimit
tag @s[tag=stackingWasOff] remove doStacking
tag @s remove stackingWasOff
tag @s remove stackingOn
tag @s remove custVortParticle
tag @s remove customNova
tag @s remove customShield
tag @s remove onlyBlue
tag @s remove antigriefOff
tag @s remove customSaberMsg

#haha funny
tag @e[type=marker,tag=tempyellow] remove bluejoinpad
tag @e[type=marker,tag=tempyellow] add yellowjoinpad
tag @e[type=marker,tag=tempyellow] remove tempyellow

tag @s add switchGamemodes