## Resolve any manually changed components
function game:match_components/resolve

## Update team attributes
function game:team_attributes/update_all

## Schedule assets refresh
function game:assets/refresh

## Close modification room dialogs
dialog clear @a[x=0]

## Per-game-mode "upon confirmed settings" functions
function #rr:game/upon_confirmed_settings

## Choose swap side
scoreboard players set $choose_swap_side var -1
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=swapEnabled] store success score $choose_swap_side var unless score $swap_side match_data matches 0..1
execute if score $choose_swap_side var matches 1 store result score $swap_side match_data run random value 0..1
execute if score $choose_swap_side var matches 1 run function rr_swap:baseswap/set_palettes

## Place facade
function game:place_facade

## Schedule Molerat (asynchronous)
execute if predicate game:modifiers/molerat/on run function arenaclear:moleratplace

##Join pads
execute if predicate game:match_components/one_team run tag @e[limit=1,x=0,type=marker,tag=join_pad.left] remove join_pad.yellow
execute if predicate game:match_components/one_team run tag @e[limit=1,x=0,type=marker,tag=join_pad.left] add join_pad.blue
execute unless predicate game:match_components/one_team run tag @e[limit=1,x=0,type=marker,tag=join_pad.left] remove join_pad.blue
execute unless predicate game:match_components/one_team run tag @e[limit=1,x=0,type=marker,tag=join_pad.left] add join_pad.yellow

## Refresh rocket nomicon
execute if predicate game:match_components/has_rocket_nomicon run function rr_sandbox:nomicon/load_pages

##Next phase
function game:set_phase/staging.queue.waiting
execute unless predicate rr:server_mode/cubekrowd_duels unless predicate rr:server_mode/cubekrowd_voting run function lobby:cancelsettings/begin

##Update inventories
execute as @a[x=0,predicate=custom:team/lobby] run function custom:player/reset_inventory
