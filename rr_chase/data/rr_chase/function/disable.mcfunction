scoreboard players reset * gamemode_components

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

# change left spawn pad to yellow
tag @e[x=0,type=marker,tag=join_pad.left] remove join_pad.blue
tag @e[x=0,type=marker,tag=join_pad.left] add join_pad.yellow

tag @s add switchGamemodes