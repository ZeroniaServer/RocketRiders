execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=EditedSettings] run tellraw @s [{color:"red",text:"You should not change gamemode components after game settings have been confirmed."},{color:"yellow",text:"\nYou can change them manually if you know it is safe to do so using "},{color:"gray",text:"/scoreboard players set $<gamemode_component> gamemode_components <value>"}]
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=EditedSettings] run return fail

# game mode
$scoreboard players set $game_mode var $(game_mode)
execute unless score $game_mode var matches 1..8 run return run tellraw @s {color:"red",text:"Game mode number not recognised"}
execute unless score $game_mode var matches 1..8 run return fail
scoreboard players operation @e[x=0,type=armor_stand,tag=Selection,limit=1] SetGamemode = $game_mode var
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshsigns

# arena/bedrock_frame
$execute store success score $arena/bedrock_frame gamemode_components if predicate {condition:"value_check",value:$(arena__bedrock_frame),range:1}
execute if score $arena/bedrock_frame gamemode_components matches 0 run scoreboard players reset $arena/bedrock_frame gamemode_components

# arena/no_base_details
$execute store success score $arena/no_base_details gamemode_components if predicate {condition:"value_check",value:$(arena__no_base_details),range:1}
execute if score $arena/no_base_details gamemode_components matches 0 run scoreboard players reset $arena/no_base_details gamemode_components

# armor/*
$scoreboard players set $armor var $(armor__)
execute store success score $armor/generic gamemode_components if score $armor var matches 0
execute if score $armor/generic gamemode_components matches 0 run scoreboard players reset $armor/generic gamemode_components

execute store success score $armor/crusade_kit_dependent gamemode_components if score $armor var matches 1
execute if score $armor/crusade_kit_dependent gamemode_components matches 0 run scoreboard players reset $armor/crusade_kit_dependent gamemode_components

execute store success score $armor/swap gamemode_components if score $armor var matches 2
execute if score $armor/swap gamemode_components matches 0 run scoreboard players reset $armor/swap gamemode_components

# arrow_pickup/only_crusade_mode_archer_kit
$execute store success score $arrow_pickup/only_crusade_mode_archer_kit gamemode_components if predicate {condition:"value_check",value:$(arrow_pickup__),range:1}
execute if score $arrow_pickup/only_crusade_mode_archer_kit gamemode_components matches 0 run scoreboard players reset $arrow_pickup/only_crusade_mode_archer_kit gamemode_components

# main_item/*
$scoreboard players set $main_item var $(main_item__)
execute store success score $main_item/shooting_saber gamemode_components if score $main_item var matches 1
execute if score $main_item/shooting_saber gamemode_components matches 0 run scoreboard players reset $main_item/shooting_saber gamemode_components

execute store success score $main_item/piercing_pickaxe gamemode_components if score $main_item var matches 2
execute if score $main_item/piercing_pickaxe gamemode_components matches 0 run scoreboard players reset $main_item/piercing_pickaxe gamemode_components

execute store success score $main_item/crusade_kit_dependent gamemode_components if score $main_item var matches 3
execute if score $main_item/crusade_kit_dependent gamemode_components matches 0 run scoreboard players reset $main_item/crusade_kit_dependent gamemode_components

execute store success score $main_item/rocket_nomicon gamemode_components if score $main_item var matches 4
execute if score $main_item/rocket_nomicon gamemode_components matches 0 run scoreboard players reset $main_item/rocket_nomicon gamemode_components

# custom_team_colors
$execute store success score $custom_team_colors gamemode_components if predicate {condition:"value_check",value:$(custom_team_colors),range:1}
execute if score $custom_team_colors gamemode_components matches 0 run scoreboard players reset $custom_team_colors gamemode_components

# decreased_shooting_saber_attack_damage
$execute store success score $decreased_shooting_saber_attack_damage gamemode_components if predicate {condition:"value_check",value:$(decreased_shooting_saber_attack_damage),range:1}
execute if score $decreased_shooting_saber_attack_damage gamemode_components matches 0 run scoreboard players reset $decreased_shooting_saber_attack_damage gamemode_components

# explosions_crack_deepslate_bricks
$execute store success score $explosions_crack_deepslate_bricks gamemode_components if predicate {condition:"value_check",value:$(explosions_crack_deepslate_bricks),range:1}
execute if score $explosions_crack_deepslate_bricks gamemode_components matches 0 run scoreboard players reset $explosions_crack_deepslate_bricks gamemode_components

# friendly_fire
$execute store success score $friendly_fire gamemode_components if predicate {condition:"value_check",value:$(friendly_fire),range:1}
execute if score $friendly_fire gamemode_components matches 0 run scoreboard players reset $friendly_fire gamemode_components

# lower_void
$execute store success score $lower_void gamemode_components if predicate {condition:"value_check",value:$(lower_void),range:1}
execute if score $lower_void gamemode_components matches 0 run scoreboard players reset $lower_void gamemode_components

# neutral_items
$execute store success score $neutral_items gamemode_components if predicate {condition:"value_check",value:$(neutral_items),range:1}
execute if score $neutral_items gamemode_components matches 0 run scoreboard players reset $neutral_items gamemode_components

# no_feathered_vortices
$execute store success score $no_feathered_vortices gamemode_components if predicate {condition:"value_check",value:$(no_feathered_vortices),range:1}
execute if score $no_feathered_vortices gamemode_components matches 0 run scoreboard players reset $no_feathered_vortices gamemode_components

# no_item_timer
$execute store success score $no_item_timer gamemode_components if predicate {condition:"value_check",value:$(no_item_timer),range:1}
execute if score $no_item_timer gamemode_components matches 0 run scoreboard players reset $no_item_timer gamemode_components

# small_portals & no_portals
$scoreboard players set $portal_type var $(__portal_type)
execute store success score $small_portals gamemode_components if score $portal_type var matches 1
execute if score $small_portals gamemode_components matches 0 run scoreboard players reset $small_portals gamemode_components
execute store success score $no_portals gamemode_components if score $portal_type var matches 2
execute if score $no_portals gamemode_components matches 0 run scoreboard players reset $no_portals gamemode_components

# one_team
$execute store success score $one_team gamemode_components if predicate {condition:"value_check",value:$(one_team),range:1}
execute if score $one_team gamemode_components matches 0 run scoreboard players reset $one_team gamemode_components

# red_for_blue
$execute store success score $red_for_blue gamemode_components if predicate {condition:"value_check",value:$(red_for_blue),range:1}
execute if score $red_for_blue gamemode_components matches 0 run scoreboard players reset $red_for_blue gamemode_components

function game:place_facade
