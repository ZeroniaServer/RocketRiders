## Close modification room dialogs
dialog clear @a[x=0]

## Per-gamemode upon edited settings
function #rr:upon_edited_settings

## Place facade
function game:place_facade

## Schedule Molerat (asynchronous)
execute if predicate game:modifiers/molerat/on run function arenaclear:moleratplace

##Team color
execute unless predicate game:gamemode_components/red_for_blue run team modify rocketriders.sort_000.blue color blue
execute if predicate game:gamemode_components/red_for_blue run team modify rocketriders.sort_000.blue color dark_red

##Friendly Fire
execute unless predicate game:gamemode_components/friendly_fire run team modify rocketriders.sort_000.blue friendlyFire false
execute unless predicate game:gamemode_components/friendly_fire run team modify rocketriders.sort_001.yellow friendlyFire false
execute if predicate game:gamemode_components/friendly_fire run team modify rocketriders.sort_000.blue friendlyFire true
execute if predicate game:gamemode_components/friendly_fire run team modify rocketriders.sort_001.yellow friendlyFire true

##Join pads
execute if predicate game:gamemode_components/one_team run tag @e[limit=1,x=0,type=marker,tag=join_pad.left] remove join_pad.yellow
execute if predicate game:gamemode_components/one_team run tag @e[limit=1,x=0,type=marker,tag=join_pad.left] add join_pad.blue
execute unless predicate game:gamemode_components/one_team run tag @e[limit=1,x=0,type=marker,tag=join_pad.left] remove join_pad.blue
execute unless predicate game:gamemode_components/one_team run tag @e[limit=1,x=0,type=marker,tag=join_pad.left] add join_pad.yellow

##Next phase
function game:set_phase/staging.queue.waiting
execute unless predicate rr:server_mode/cubekrowd_duels unless predicate rr:server_mode/cubekrowd_voting run function lobby:cancelsettings/begin

##Update inventories
execute as @a[x=0,predicate=custom:team/lobby] run function custom:reset_inventory

##Stop all sounds
# execute as @a[x=0] run function everytick:stopsounds
