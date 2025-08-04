scoreboard players reset * gamemode_components
scoreboard players set $no_portal gamemode_components 1

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

# change left join pad back to blue
tag @e[x=0,type=marker,tag=join_pad.left] remove join_pad.yellow
tag @e[x=0,type=marker,tag=join_pad.left] add join_pad.blue

#enable arrows/utilities
tag @s[tag=!rngArrows] add arrowsWasOff
tag @s add rngArrows
tag @s[tag=!rngUtil] add utilWasOff
tag @s add rngUtil