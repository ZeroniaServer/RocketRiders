## Resolve any manually changed components
function game:match_components/resolve

## Update team attributes
function game:team_attributes/update_all

## Close modification room dialogs
dialog clear @a[x=0]

## Per-game-mode upon edited settings
function #rr:upon_edited_settings

## Place facade
function game:place_facade

## Schedule Molerat (asynchronous)
execute if predicate game:modifiers/molerat/on run function arenaclear:moleratplace

##Join pads
execute if predicate game:match_components/one_team run tag @e[limit=1,x=0,type=marker,tag=join_pad.left] remove join_pad.yellow
execute if predicate game:match_components/one_team run tag @e[limit=1,x=0,type=marker,tag=join_pad.left] add join_pad.blue
execute unless predicate game:match_components/one_team run tag @e[limit=1,x=0,type=marker,tag=join_pad.left] remove join_pad.blue
execute unless predicate game:match_components/one_team run tag @e[limit=1,x=0,type=marker,tag=join_pad.left] add join_pad.yellow

##Next phase
function game:set_phase/staging.queue.waiting
execute unless predicate rr:server_mode/cubekrowd_duels unless predicate rr:server_mode/cubekrowd_voting run function lobby:cancelsettings/begin

##Update inventories
execute as @a[x=0,predicate=custom:team/lobby] run function custom:reset_inventory

##Stop all sounds
# execute as @a[x=0] run function everytick:stopsounds
