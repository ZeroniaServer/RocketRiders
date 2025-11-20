scoreboard players reset * gamemode_components
scoreboard players set $armor/generic gamemode_components 1
scoreboard players set $config_override.disable_team_balancing gamemode_components 1
scoreboard players set $config_override.special_treatment gamemode_components -1
scoreboard players set $config_override.surprise_eggs gamemode_components -1
scoreboard players set $main_item/rocket_nomicon gamemode_components 1
scoreboard players set $no_item_timer gamemode_components 1

function gamemodes:storesettings
function arenaclear:enableitems
tag @s remove switchGamemodes
tag @s add stackingOn
tag @s add doStacking
tag @s add hotbarLimitOff
tag @s remove doHotbarLimit
tag @s[tag=Minute] add MinuteWasOn
tag @s add MinuteOff
tag @s[tag=WindDown] add WindDownWasOn
tag @s add WindDownOff
tag @s add normalForce
tag @s add lightningForce
tag @s add heavyForce
tag @s add utilForce
tag @s add hasBees
tag @s add customBossbar
tag @s add sandboxEnabled