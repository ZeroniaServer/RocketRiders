execute unless predicate game:phase/staging/configuration run tellraw @s [{color:"red",text:"You should not change match components after game settings have been confirmed."},{color:"yellow",text:"\nYou can change them manually if you know it is safe to do so using "},{color:"gray",text:"/scoreboard players set $<gamemode_component> match_components <value>"}]
execute unless predicate game:phase/staging/configuration run return fail

# game mode
$scoreboard players set $game_mode var $(game_mode)
execute unless score $game_mode var matches 1..8 run return run tellraw @s {color:"red",text:"Game mode number not recognised"}
execute unless score $game_mode var matches 1..8 run return fail
scoreboard players operation @e[x=0,type=armor_stand,tag=Selection,limit=1] SetGamemode = $game_mode var
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshsigns

# arena/bedrock_frame
$execute store success score $arena/bedrock_frame match_components if predicate {condition:"value_check",value:$(arena__bedrock_frame),range:1}
execute if score $arena/bedrock_frame match_components matches 0 run scoreboard players reset $arena/bedrock_frame match_components

# arena/castle
$execute store success score $arena/castle match_components if predicate {condition:"value_check",value:$(arena__castle),range:1}
execute if score $arena/castle match_components matches 0 run scoreboard players reset $arena/castle match_components

# arena/checkered_yellow_base_front
$execute store success score $arena/checkered_yellow_base_front match_components if predicate {condition:"value_check",value:$(arena__checkered_yellow_base_front),range:1}
execute if score $arena/checkered_yellow_base_front match_components matches 0 run scoreboard players reset $arena/checkered_yellow_base_front match_components

# arena/no_base_details
$execute store success score $arena/no_base_details match_components if predicate {condition:"value_check",value:$(arena__no_base_details),range:1}
execute if score $arena/no_base_details match_components matches 0 run scoreboard players reset $arena/no_base_details match_components

# arena/no_portal_details
$execute store success score $arena/no_portal_details match_components if predicate {condition:"value_check",value:$(arena__no_portal_details),range:1}
execute if score $arena/no_portal_details match_components matches 0 run scoreboard players reset $arena/no_portal_details match_components

# armor_type
$scoreboard players set $armor_type var $(armor_type)
data remove storage rocketriders:match components."armor_type"
execute if score $armor_type var matches 1 run data modify storage rocketriders:match components."armor_type" set value "crusade_mode"
execute if score $armor_type var matches 2 run data modify storage rocketriders:match components."armor_type" set value "swap_mode"

# arrow_pickup/only_crusade_mode_archer_kit
$execute store success score $arrow_pickup/only_crusade_mode_archer_kit match_components if predicate {condition:"value_check",value:$(arrow_pickup__),range:1}
execute if score $arrow_pickup/only_crusade_mode_archer_kit match_components matches 0 run scoreboard players reset $arrow_pickup/only_crusade_mode_archer_kit match_components

# main_item
$scoreboard players set $main_item var $(main_item)
data remove storage rocketriders:match components."main_item"
execute if score $main_item var matches 1 run data modify storage rocketriders:match components."main_item" set value "shooting_saber"
execute if score $main_item var matches 2 run data modify storage rocketriders:match components."main_item" set value "piercing_pickaxe"
execute if score $main_item var matches 3 run data modify storage rocketriders:match components."main_item" set value "crusade_kit_dependent"
execute if score $main_item var matches 4 run data modify storage rocketriders:match components."main_item" set value "rocket_nomicon"

# custom_team_colors
$execute store success score $custom_team_colors match_components if predicate {condition:"value_check",value:$(custom_team_colors),range:1}
execute if score $custom_team_colors match_components matches 0 run scoreboard players reset $custom_team_colors match_components

# decreased_icbm_flight_duration
$execute store success score $decreased_icbm_flight_duration match_components if predicate {condition:"value_check",value:$(decreased_icbm_flight_duration),range:1}
execute if score $decreased_icbm_flight_duration match_components matches 0 run scoreboard players reset $decreased_icbm_flight_duration match_components

# decreased_shooting_saber_attack_damage
$execute store success score $decreased_shooting_saber_attack_damage match_components if predicate {condition:"value_check",value:$(decreased_shooting_saber_attack_damage),range:1}
execute if score $decreased_shooting_saber_attack_damage match_components matches 0 run scoreboard players reset $decreased_shooting_saber_attack_damage match_components

# friendly_fire
$execute store success score $friendly_fire match_components if predicate {condition:"value_check",value:$(friendly_fire),range:1}
execute if score $friendly_fire match_components matches 0 run scoreboard players reset $friendly_fire match_components

# lower_void
$execute store success score $lower_void match_components if predicate {condition:"value_check",value:$(lower_void),range:1}
execute if score $lower_void match_components matches 0 run scoreboard players reset $lower_void match_components

# no_achievements
$execute store success score $no_achievements match_components if predicate {condition:"value_check",value:$(no_achievements),range:1}
execute if score $no_achievements match_components matches 0 run scoreboard players reset $no_achievements match_components

# neutral_items
$execute store success score $neutral_items match_components if predicate {condition:"value_check",value:$(neutral_items),range:1}
execute if score $neutral_items match_components matches 0 run scoreboard players reset $neutral_items match_components

# no_feathered_vortices
$execute store success score $no_feathered_vortices match_components if predicate {condition:"value_check",value:$(no_feathered_vortices),range:1}
execute if score $no_feathered_vortices match_components matches 0 run scoreboard players reset $no_feathered_vortices match_components

# no_item_timer
$execute store success score $no_item_timer match_components if predicate {condition:"value_check",value:$(no_item_timer),range:1}
execute if score $no_item_timer match_components matches 0 run scoreboard players reset $no_item_timer match_components

# small_portals & no_portals
$scoreboard players set $portal_type var $(__portal_type)
execute store success score $small_portals match_components if score $portal_type var matches 2
execute if score $small_portals match_components matches 0 run scoreboard players reset $small_portals match_components
execute store success score $no_portals match_components if score $portal_type var matches 0
execute if score $no_portals match_components matches 0 run scoreboard players reset $no_portals match_components

# one_team
$execute store success score $one_team match_components if predicate {condition:"value_check",value:$(one_team),range:1}
execute if score $one_team match_components matches 0 run scoreboard players reset $one_team match_components

# blue_team_skin
$scoreboard players set $blue_team_skin match_components $(blue_team_skin)
execute unless score $blue_team_skin match_components matches 0..2 run scoreboard players reset $blue_team_skin match_components
execute if score $blue_team_skin match_components matches 0 run scoreboard players reset $blue_team_skin match_components

# yellow_team_skin
$scoreboard players set $yellow_team_skin match_components $(yellow_team_skin)
execute unless score $yellow_team_skin match_components matches 0..1 run scoreboard players reset $yellow_team_skin match_components
execute if score $yellow_team_skin match_components matches 0 run scoreboard players reset $yellow_team_skin match_components

# shield_type
$scoreboard players set $shield_type var $(shield_type)
data remove storage rocketriders:match components."shield_type"
execute if score $shield_type var matches 1 run data modify storage rocketriders:match components."shield_type" set value "checkered"
execute if score $shield_type var matches 2 run data modify storage rocketriders:match components."shield_type" set value "classic"

## POST
function game:match_components/resolve

function arenaclear:refreshcheck_indimension
function game:place_facade
function lobby:update_nav_book
execute as @a[x=0,predicate=custom:team/lobby] run function custom:reset_inventory
