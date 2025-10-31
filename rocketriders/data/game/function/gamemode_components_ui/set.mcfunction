# arguments: ...

execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=EditedSettings] run tellraw @s [{color:"red",text:"You should not change gamemode components after game settings have been confirmed."},{color:"yellow",text:"\nYou can change them manually if you know it is safe to do so using "},{color:"gray",text:"/scoreboard players set $<gamemode_component> gamemode_components <value>"}]
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=EditedSettings] run return fail

scoreboard players reset * gamemode_components

$execute if predicate {condition:"value_check",value:$(arena__bedrock_frame),range:1} run scoreboard players set $arena/bedrock_frame gamemode_components $(arena__bedrock_frame)
$execute if predicate {condition:"value_check",value:$(arena__no_base_details),range:1} run scoreboard players set $arena/no_base_details gamemode_components $(arena__no_base_details)

$scoreboard players set $armor var $(armor__)
execute if score $armor var matches 0 run scoreboard players set $armor/generic gamemode_components 1
execute if score $armor var matches 1 run scoreboard players set $armor/crusade_kit_dependent gamemode_components 1
execute if score $armor var matches 2 run scoreboard players set $armor/swap gamemode_components 1

$execute if predicate {condition:"value_check",value:$(arrow_pickup__),range:1} run scoreboard players set $arrow_pickup/only_crusade_mode_archer_kit gamemode_components $(arrow_pickup__)

$scoreboard players set $main_item var $(main_item__)
execute if score $main_item var matches 0 run scoreboard players set $armor/shooting_saber gamemode_components 1
execute if score $main_item var matches 1 run scoreboard players set $armor/pickaxe gamemode_components 1
execute if score $main_item var matches 2 run scoreboard players set $armor/crusade_kit_dependent gamemode_components 1
execute if score $main_item var matches 3 run scoreboard players set $armor/rocket_nomicon gamemode_components 1

$execute if predicate {condition:"value_check",value:$(custom_team_colors),range:1} run scoreboard players set $custom_team_colors gamemode_components $(custom_team_colors)
$execute if predicate {condition:"value_check",value:$(decreased_shooting_saber_attack_damage),range:1} run scoreboard players set $decreased_shooting_saber_attack_damage gamemode_components $(decreased_shooting_saber_attack_damage)
$execute if predicate {condition:"value_check",value:$(explosions_crack_deepslate_bricks),range:1} run scoreboard players set $explosions_crack_deepslate_bricks gamemode_components $(explosions_crack_deepslate_bricks)
$execute if predicate {condition:"value_check",value:$(friendly_fire),range:1} run scoreboard players set $friendly_fire gamemode_components $(friendly_fire)
$execute if predicate {condition:"value_check",value:$(lower_void),range:1} run scoreboard players set $lower_void gamemode_components $(lower_void)
$execute if predicate {condition:"value_check",value:$(neutral_items),range:1} run scoreboard players set $neutral_items gamemode_components $(neutral_items)
$execute if predicate {condition:"value_check",value:$(no_item_timer),range:1} run scoreboard players set $no_item_timer gamemode_components $(no_item_timer)

$scoreboard players set $portal_type var $(__portal_type)
execute if score $portal_type var matches 1 run scoreboard players set $no_portals gamemode_components 1
execute if score $portal_type var matches 2 run scoreboard players set $small_portals gamemode_components 1

$execute if predicate {condition:"value_check",value:$(one_team),range:1} run scoreboard players set $one_team gamemode_components $(one_team)
$execute if predicate {condition:"value_check",value:$(red_for_blue),range:1} run scoreboard players set $red_for_blue gamemode_components $(red_for_blue)

function game:place_facade
