scoreboard players reset * gamemode_components
scoreboard players set $config_override.rocket_residers gamemode_components -1
scoreboard players set $config_override.collision_control gamemode_components -1
scoreboard players set $armor/generic gamemode_components 1
scoreboard players set $main_item/bow gamemode_components 1
scoreboard players set $custom_team_colors gamemode_components 1
scoreboard players set $no_portals gamemode_components 1
scoreboard players set $neutral_utility_colors gamemode_components 1
scoreboard players set $config_override.disable_team_balancing gamemode_components 1

tag @s remove switchGamemodes
tag @s add chaseEnabled
tag @s add tyingOff
tag @s[tag=DoublePortal] add DoublePortalWasOn
tag @s add fbPortalsOff
tag @s add portalDecosOff
tag @s add preventionOff
tag @s add customPrevention
tag @s add customEnds
tag @s add customBossbar
tag @s add leaveYSpawn
# tag @s add arrowLimit
tag @s[tag=!doStacking] add stackingWasOff
tag @s add doStacking
tag @s add stackingOn
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