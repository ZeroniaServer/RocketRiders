data modify storage rocketriders:main match_components.dialog set value {\
  "type": "minecraft:confirmation",\
  "title": "Match Components UI",\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": ["Game Mode: ", {"bold":true,"text":"","underlined":true,"extra":["???"]}]\
  },\
  "inputs": [],\
  "yes": {\
    "label": "Save Changes",\
    "tooltip": {\
      "color": "red",\
      "text": "",\
      "extra": [\
        {\
          "bold": true,\
          "text": "Warning"\
        },\
        ": Any changes made by other players in the modification room will be overwritten."\
      ]\
    },\
    "action": {\
      "type": "minecraft:dynamic/run_command",\
      "template": "function game:match_components_ui/set {game_mode:$(game_mode),arena__bedrock_base_frames:$(arena__bedrock_base_frames),armor_type:$(armor_type),arrow_pickup_rule:$(arrow_pickup_rule),main_item:$(main_item),custom_team_colors:$(custom_team_colors),decreased_shooting_saber_attack_damage:$(decreased_shooting_saber_attack_damage),friendly_fire:$(friendly_fire),lower_void:$(lower_void),neutral_items:$(neutral_items),no_feathered_vortices:$(no_feathered_vortices),no_item_timer:$(no_item_timer),portal_type:$(portal_type),one_team:$(one_team),blue_team_skin:$(blue_team_skin),no_achievements:$(no_achievements),yellow_team_skin:$(yellow_team_skin),checkered_yellow_base:$(checkered_yellow_base),shield_type:$(shield_type),crusade_banners:$(crusade_banners),castle_type:$(castle_type),arena__classic_base_frames:$(arena__classic_base_frames),canopy_flight_duration:$(canopy_flight_duration),icbm_flight_duration:$(icbm_flight_duration),nova_rocket_flight_duration:$(nova_rocket_flight_duration),obsidian_shield_flight_duration:$(obsidian_shield_flight_duration),shield_flight_duration:$(shield_flight_duration),stinging_shield_flight_duration:$(stinging_shield_flight_duration),vortex_flight_duration:$(vortex_flight_duration),classic_shooting_saber_name:$(classic_shooting_saber_name),winner_pegasus:$(winner_pegasus)}"\
    }\
  },\
  "no": {\
    "label": "Cancel",\
    "action": {\
      "type": "minecraft:show_dialog",\
      "dialog": "dev:quick_actions/other_actions"\
    }\
  }\
}

## Game Mode
data modify storage rocketriders:main match_components.dialog.body.contents[1].extra[0] set from entity @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=enabled] CustomName
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"game_mode",label:"🔒 game_mode",width:150,options:[{id:"0",display:['"',{color:"green",text:""},'"']}]}
execute if entity @e[limit=1,type=armor_stand,tag=gamemodeAS,tag=rr_normal,tag=enabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].id set value "normal"
execute if entity @e[limit=1,type=armor_stand,tag=gamemodeAS,tag=rr_powerups,tag=enabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].id set value "powerups"
execute if entity @e[limit=1,type=armor_stand,tag=gamemodeAS,tag=rr_swap,tag=enabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].id set value "swap"
execute if entity @e[limit=1,type=armor_stand,tag=gamemodeAS,tag=rr_ctf,tag=enabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].id set value "ctf"
execute if entity @e[limit=1,type=armor_stand,tag=gamemodeAS,tag=rr_chase,tag=enabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].id set value "chase"
execute if entity @e[limit=1,type=armor_stand,tag=gamemodeAS,tag=rr_duel,tag=enabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].id set value "duel"
execute if entity @e[limit=1,type=armor_stand,tag=gamemodeAS,tag=rr_crusade,tag=enabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].id set value "crusade"
execute if entity @e[limit=1,type=armor_stand,tag=gamemodeAS,tag=rr_sandbox,tag=enabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].id set value "sandbox"
execute if entity @e[limit=1,type=armor_stand,tag=gamemodeAS,tag=rr_classic,tag=enabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].id set value "classic"
data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].display[1].text set from storage rocketriders:main match_components.dialog.inputs[-1].options[0].id

## Components
# arena/base_colors (locked)
function game:match_components_ui/__show_dialog/append_arena_base_colors

# arena/base_materials (locked)
function game:match_components_ui/__show_dialog/append_arena_base_materials

# arena/bedrock_base_frames
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__bedrock_base_frames",label:"arena/bedrock_base_frames",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/arena/bedrock_base_frames run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# arena/classic_base_frames
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__classic_base_frames",label:"arena/classic_base_frames",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/arena/classic_base_frames run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# arena/regenerate_back_layer
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__regenerate_back_layer",label:"🔒 arena/regenerate_back_layer",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:regenerate_back_layer/blue unless predicate game:regenerate_back_layer/yellow run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display set value {color:"white",text:"{",extra:[{color:"aqua",text:"blue"},": ",{color:"gold",text:"true"},", ",{color:"aqua",text:"yellow"},": ",{color:"gold",text:"false"},"}"]}
execute unless predicate game:regenerate_back_layer/blue if predicate game:regenerate_back_layer/yellow run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display set value {color:"white",text:"{",extra:[{color:"aqua",text:"blue"},": ",{color:"gold",text:"false"},", ",{color:"aqua",text:"yellow"},": ",{color:"gold",text:"true"},"}"]}
execute if predicate game:regenerate_back_layer/blue if predicate game:regenerate_back_layer/yellow run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display set value {color:"gold",text:"true"}

# arena/regenerate_floor
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__regenerate_floor",label:"🔒 arena/regenerate_floor",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:regenerate_floor/blue unless predicate game:regenerate_floor/yellow run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display set value {color:"white",text:"{",extra:[{color:"aqua",text:"blue"},": ",{color:"gold",text:"true"},", ",{color:"aqua",text:"yellow"},": ",{color:"gold",text:"false"},"}"]}
execute unless predicate game:regenerate_floor/blue if predicate game:regenerate_floor/yellow run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display set value {color:"white",text:"{",extra:[{color:"aqua",text:"blue"},": ",{color:"gold",text:"false"},", ",{color:"aqua",text:"yellow"},": ",{color:"gold",text:"true"},"}"]}
execute if predicate game:regenerate_floor/blue if predicate game:regenerate_floor/yellow run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display set value {color:"gold",text:"true"}

# armor_type
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"armor_type",label:"armor_type",width:300,options:[{id:"0",display:{color:"white",text:'"',extra:[{color:"green",text:"normal"},'"']}},{id:"1",display:{color:"white",text:'"',extra:[{color:"green",text:"crusade_mode"},'"']}},{id:"2",display:{color:"white",text:'"',extra:[{color:"green",text:"swap_mode"},'"']}}]}
execute if predicate game:armor_type/normal run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].initial set value true
execute if predicate game:armor_type/crusade_mode run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true
execute if predicate game:armor_type/swap_mode run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[2].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!crusadeEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].display.extra append value {color:"red",text:" ⚠"}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!swapEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[2].display.extra append value {color:"red",text:" ⚠"}

# arrow_pickup_rule
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"arrow_pickup_rule",label:"arrow_pickup_rule",width:300,options:[{id:"0",display:{color:"white",text:"",extra:[['"',{color:"green",text:"anyone"},'"']]}},{id:"1",display:{color:"white",text:"",extra:[['"',{color:"green",text:"crusade_kit_dependent"},'"']]}}]}
execute if predicate game:arrow_pickup_rule/crusade_kit_dependent run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!crusadeEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].display.extra append value {color:"red",text:" ⚠"}

# base_item_limit
function game:match_components_ui/__show_dialog/append_base_item_limit

# blue_team_skin
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"blue_team_skin",label:"blue_team_skin",width:300,options:[{id:"0",display:['"',{color:"green",text:"blue"},'"']},{id:"1",display:['"',{color:"green",text:"dark_red"},'"']},{id:"2",display:['"',{color:"green",text:"classic_red"},'"']}]}
execute if predicate game:blue_team_skin/dark_red run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true
execute if predicate game:blue_team_skin/classic_red run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[2].initial set value true

# canopy_flight_duration
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"number_range",key:"canopy_flight_duration",width:300,label:"canopy_flight_duration",label_format:"%1$s: %2$s ticks",start:1,end:60,step:1,initial:1}
execute store result storage rocketriders:main match_components.dialog.inputs[-1].initial int 1 run scoreboard players get $canopy_flight_duration match_components

# castle_type
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"castle_type",label:"castle_type",width:300,options:[{id:"0",display:['"',{color:"green",text:"normal"},'"']},{id:"1",display:['"',{color:"green",text:"deepslate"},'"']}]}
execute if predicate game:castle_type/normal run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].initial set value true
execute if predicate game:castle_type/deepslate run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# checkered_yellow_base
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"checkered_yellow_base",label:"checkered_yellow_base",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/checkered_yellow_base run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# classic_shooting_saber_name
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"classic_shooting_saber_name",label:"classic_shooting_saber_name",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/classic_shooting_saber_name run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# config_override
function game:match_components_ui/__show_dialog/append_config_override

# crusade_banners
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"crusade_banners",label:"crusade_banners",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/crusade_banners run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# cubekrowd/disable_all_but_5_non_lightning_missiles (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"cubekrowd__disable_all_but_5_non_lightning_missiles",label:"🔒 cubekrowd/disable_all_but_5_non_lightning_missiles",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/cubekrowd/disable_all_but_5_non_lightning_missiles run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# cubekrowd/disable_nova_rocket_or_fireball (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"cubekrowd__disable_nova_rocket_or_fireball",label:"🔒 cubekrowd/disable_nova_rocket_or_fireball",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/cubekrowd/disable_nova_rocket_or_fireball run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# cubekrowd/disable_one_lightning_missile (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"cubekrowd__disable_one_lightning_missile",label:"🔒 cubekrowd/disable_one_lightning_missile",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/cubekrowd/disable_one_lightning_missile run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# cubekrowd/disable_shield_or_obsidian_shield (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"cubekrowd__disable_shield_or_obsidian_shield",label:"🔒 cubekrowd/disable_shield_or_obsidian_shield",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/cubekrowd/disable_shield_or_obsidian_shield run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# custom_team_colors
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"custom_team_colors",label:"custom_team_colors",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/custom_team_colors run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# decreased_shooting_saber_attack_damage
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"decreased_shooting_saber_attack_damage",label:"decreased_shooting_saber_attack_damage",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/decreased_shooting_saber_attack_damage run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# duel_settings_locked (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"duel_settings_locked",label:"🔒 duel_settings_locked",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/duel_settings_locked run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# friendly_fire
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"friendly_fire",label:"friendly_fire",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/friendly_fire run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# has_chase_crystals (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"has_chase_crystals",label:"🔒 has_chase_crystals",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/has_chase_crystals run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# has_flags (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"has_flags",label:"🔒 has_flags",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/has_flags run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# has_nexuses (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"has_nexuses",label:"🔒 has_nexuses",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/has_nexuses run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# has_overtime (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"has_overtime",label:"🔒 has_overtime",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/has_overtime run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# has_powerups (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"has_powerups",label:"🔒 has_powerups",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/has_powerups run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# has_spells (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"has_spells",label:"🔒 has_spells",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/has_spells run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# icbm_flight_duration
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"number_range",key:"icbm_flight_duration",width:300,label:"icbm_flight_duration",label_format:"%1$s: %2$s ticks",start:1,end:60,step:1,initial:1}
execute store result storage rocketriders:main match_components.dialog.inputs[-1].initial int 1 run scoreboard players get $icbm_flight_duration match_components

# item_batch_size
function game:match_components_ui/__show_dialog/append_item_batch_size

# item_pool
function game:match_components_ui/__show_dialog/append_item_pool

# item_signs/replace_fireball_with_cluster_fireball (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"duel_settings_locked",label:"🔒 item_signs/replace_fireball_with_cluster_fireball",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/item_signs/replace_fireball_with_cluster_fireball run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# item_signs/replace_vortex_with_icbm (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"duel_settings_locked",label:"🔒 item_signs/replace_vortex_with_icbm",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/item_signs/replace_vortex_with_icbm run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# lock_playing_teams_during_match (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"lock_playing_teams_during_match",label:"🔒 lock_playing_teams_during_match",width:300,options:[{id:"",display:{color:"gold",text:"false"}}]}
execute if predicate game:match_components/lock_playing_teams_during_match run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# lower_void
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"lower_void",label:"lower_void",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/lower_void run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# main_item
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"main_item",label:"main_item",width:300,options:[{id:"0",display:{color:"white",text:"none"}},{id:"1",display:{color:"white",text:'"',extra:[{color:"green",text:"shooting_saber"},'"']}},{id:"2",display:{color:"white",text:'"',extra:[{color:"green",text:"piercing_pickaxe"},'"']}},{id:"3",display:{color:"white",text:'"',extra:[{color:"green",text:"crusade_kit_dependent"},'"']}},{id:"4",display:{color:"white",text:'"',extra:[{color:"green",text:"rocket_nomicon"},'"']}}]}
execute if predicate game:main_item/shooting_saber run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true
execute if predicate game:main_item/piercing_pickaxe run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[2].initial set value true
execute if predicate game:main_item/crusade_kit_dependent run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[3].initial set value true
execute if predicate game:main_item/rocket_nomicon run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[4].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!crusadeEnabled,tag=!sandboxEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[3].display.extra append value {color:"red",text:" ⚠"}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].display.extra append value {color:"red",text:" ⚠"}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[2].display.extra append value {color:"red",text:" ⚠"}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[3].display.extra append value {color:"red",text:" ⚠"}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!sandboxEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[4].display.extra append value {color:"red",text:" ⚠"}

# max_players_per_team (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"max_players_per_team",label:"🔒 max_players_per_team",width:300,options:[{id:"",display:{color:"gold",text:"∞"}}]}
execute if score $max_players_per_team match_components matches -2147483648..2147483646 run execute store result storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text int 1 run scoreboard players get $max_players_per_team match_components
execute if score $max_players_per_team match_components matches -2147483648..2147483646 run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set string storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text

# min_players_per_team (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"min_players_per_team",label:"🔒 min_players_per_team",width:300,options:[{id:"",display:{color:"gold",text:"0"}}]}
execute store result storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text int 1 run scoreboard players get $min_players_per_team match_components
data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set string storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text

# neutral_items
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"neutral_items",label:"neutral_items",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/neutral_items run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# no_achievements
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"no_achievements",label:"no_achievements",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/no_achievements run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# no_feathered_vortices
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"no_feathered_vortices",label:"no_feathered_vortices",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/no_feathered_vortices run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# no_item_timer
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"no_item_timer",label:"no_item_timer",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/no_item_timer run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].display.extra append value {color:"red",text:" ⚠"}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!sandboxEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].display.extra append value {color:"red",text:" ⚠"}

# nova_rocket_flight_duration
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"number_range",key:"nova_rocket_flight_duration",width:300,label:"nova_rocket_flight_duration",label_format:"%1$s: %2$s ticks",start:1,end:60,step:1,initial:1}
execute store result storage rocketriders:main match_components.dialog.inputs[-1].initial int 1 run scoreboard players get $nova_rocket_flight_duration match_components

# obsidian_shield_flight_duration
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"number_range",key:"obsidian_shield_flight_duration",width:300,label:"obsidian_shield_flight_duration",label_format:"%1$s: %2$s ticks",start:1,end:60,step:1,initial:1}
execute store result storage rocketriders:main match_components.dialog.inputs[-1].initial int 1 run scoreboard players get $obsidian_shield_flight_duration match_components

# one_team
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"one_team",label:"one_team",width:300,options:[{id:"0",display:{color:"gold",text:"false"}},{id:"1",display:{color:"gold",text:"true"}}]}
execute if predicate game:match_components/one_team run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# portal_type
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"portal_type",label:"portal_type",width:300,options:[{id:"0",display:{text:"",extra:[['"',{color:"green",text:"none"},'"']]}},{id:"1",display:{text:"",extra:[['"',{color:"green",text:"normal"},'"']]}},{id:"2",display:{text:"",extra:[['"',{color:"green",text:"small"},'"']]}}]}
execute if predicate game:portal_type/none run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].initial set value true
execute if predicate game:portal_type/normal run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true
execute if predicate game:portal_type/small run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[2].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!ctfEnabled,tag=!chaseEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].display.extra append value {color:"red",text:" ⚠"}

# shield_flight_duration
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"number_range",key:"shield_flight_duration",width:300,label:"shield_flight_duration",label_format:"%1$s: %2$s ticks",start:1,end:60,step:1,initial:1}
execute store result storage rocketriders:main match_components.dialog.inputs[-1].initial int 1 run scoreboard players get $shield_flight_duration match_components

# shield_type
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"shield_type",label:"shield_type",width:300,options:[{id:"0",display:{color:"white",text:'"',extra:[{color:"green",text:"normal"},'"']}},{id:"1",display:{color:"white",text:'"',extra:[{color:"green",text:"checkered"},'"']}},{id:"2",display:{color:"white",text:'"',extra:[{color:"green",text:"classic"},'"']}}]}
execute if predicate game:shield_type/normal run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].initial set value true
execute if predicate game:shield_type/checkered run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true
execute if predicate game:shield_type/classic run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[2].initial set value true

# stinging_shield_flight_duration
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"number_range",key:"stinging_shield_flight_duration",width:300,label:"stinging_shield_flight_duration",label_format:"%1$s: %2$s ticks",start:1,end:60,step:1,initial:1}
execute store result storage rocketriders:main match_components.dialog.inputs[-1].initial int 1 run scoreboard players get $stinging_shield_flight_duration match_components

# vortex_flight_duration
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"number_range",key:"vortex_flight_duration",width:300,label:"vortex_flight_duration",label_format:"%1$s: %2$s ticks",start:1,end:60,step:1,initial:1}
execute store result storage rocketriders:main match_components.dialog.inputs[-1].initial int 1 run scoreboard players get $vortex_flight_duration match_components

# yellow_team_skin
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"yellow_team_skin",label:"yellow_team_skin",width:300,options:[{id:"0",display:{text:"",extra:[['"',{color:"green",text:"yellow"},'"']]}},{id:"1",display:{text:"",extra:[['"',{color:"green",text:"green"},'"']]}}]}
execute if predicate game:yellow_team_skin/yellow run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].initial set value true
execute if predicate game:yellow_team_skin/green run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

## Show Dialog
function custom:player/show_dialog with storage rocketriders:main match_components
tag @s add last_dialog_opened.match_components_ui
