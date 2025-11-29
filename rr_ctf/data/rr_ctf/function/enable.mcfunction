scoreboard players reset * gamemode_components
scoreboard players set $arena/bedrock_frame gamemode_components 1
scoreboard players set $armor/generic gamemode_components 1
scoreboard players set $config_override.collision_control gamemode_components -1
scoreboard players set $config_override.hardcore gamemode_components -1
scoreboard players set $config_override.rocket_residers gamemode_components -1
scoreboard players set $has_flags gamemode_components 1
scoreboard players set $lower_void gamemode_components 1
scoreboard players set $main_item/piercing_pickaxe gamemode_components 1
scoreboard players set $no_portals gamemode_components 1

tag @s remove switchGamemodes
tag @s add ctfEnabled
function arenaclear:unlockdecos
tag @s add portalDecosOff
tag @s add canopyStack
tag @s add customPrevention
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
