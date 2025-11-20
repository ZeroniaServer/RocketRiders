scoreboard players reset * gamemode_components
scoreboard players set $armor/generic gamemode_components 1
scoreboard players set $config_override.collision_control gamemode_components -1
scoreboard players set $config_override.disable_team_balancing gamemode_components 1
scoreboard players set $config_override.rocket_residers gamemode_components -1
scoreboard players set $custom_team_colors gamemode_components 1
scoreboard players set $friendly_fire gamemode_components 1
scoreboard players set $main_item/shooting_saber gamemode_components 1
scoreboard players set $neutral_items gamemode_components 1
scoreboard players set $no_portals gamemode_components 1
scoreboard players set $one_team gamemode_components 1
scoreboard players set $red_for_blue gamemode_components 1

tag @s remove switchGamemodes
tag @s add chaseEnabled
tag @s add tyingOff
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
tag @s add antigriefOff

#enable arrows/utilities
tag @s[tag=!rngArrows] add arrowsWasOff
tag @s add rngArrows
tag @s[tag=!rngUtil] add utilWasOff
tag @s add rngUtil