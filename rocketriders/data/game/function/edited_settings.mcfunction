## Close modification room dialogs
dialog clear @a[x=0]

## Per-gamemode upon edited settings
function #rr:upon_edited_settings

## Place facade
execute unless predicate game:phase/match run function game:place_facade

## Initialise join pads
tag @e[x=0,type=marker,tag=join_pad] remove join_pad.blue
tag @e[x=0,type=marker,tag=join_pad] remove join_pad.yellow

tag @e[x=0,type=marker,tag=join_pad.right] add join_pad.blue
execute unless predicate game:gamemode_components/one_team run tag @e[x=0,type=marker,tag=join_pad.left] add join_pad.yellow
execute if predicate game:gamemode_components/one_team run tag @e[x=0,type=marker,tag=join_pad.left] add join_pad.blue

execute in minecraft:overworld run function game:uncancelpads
execute if predicate game:gamemode_components/one_team run function game:cancelyellow

## Shedule Molerat (asynchronous)
execute if predicate game:modifiers/molerat/on run function arenaclear:moleratplace

##Reset team balance stuff
execute unless predicate game:gamemode_components/one_team run tag @s remove YellowFull
execute unless predicate game:gamemode_components/one_team run tag @s remove YellowCapOverride
tag @s remove BlueFull
tag @s remove BlueCapOverride

##Team color
execute unless predicate game:gamemode_components/red_for_blue run team modify rocketriders.sort_000.blue color blue
execute if predicate game:gamemode_components/red_for_blue run team modify rocketriders.sort_000.blue color dark_red

##Friendly Fire
execute unless predicate game:gamemode_components/friendly_fire run team modify rocketriders.sort_000.blue friendlyFire false
execute unless predicate game:gamemode_components/friendly_fire run team modify rocketriders.sort_001.yellow friendlyFire false
execute if predicate game:gamemode_components/friendly_fire run team modify rocketriders.sort_000.blue friendlyFire true
execute if predicate game:gamemode_components/friendly_fire run team modify rocketriders.sort_001.yellow friendlyFire true

##
tag @s add EditedSettings
execute unless predicate rr:server_mode/cubekrowd_duels unless predicate rr:server_mode/cubekrowd_voting run function lobby:cancelsettings/begin

##Stop all sounds
# execute as @a[x=0] run function everytick:stopsounds
