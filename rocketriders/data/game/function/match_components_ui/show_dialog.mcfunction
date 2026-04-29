data modify storage rocketriders:main match_components.dialog set value {\
  "type": "minecraft:confirmation",\
  "title": "Match Components UI",\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": ["Game Mode: ", {"bold":true,"text":"","underlined":true}]\
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
      "template": "function game:match_components_ui/set {game_mode:$(game_mode),arena__bedrock_base_frames:$(arena__bedrock_base_frames),armor_type:$(armor_type),arrow_pickup__:$(arrow_pickup__),main_item:$(main_item),custom_team_colors:$(custom_team_colors),decreased_shooting_saber_attack_damage:$(decreased_shooting_saber_attack_damage),friendly_fire:$(friendly_fire),lower_void:$(lower_void),neutral_items:$(neutral_items),no_feathered_vortices:$(no_feathered_vortices),no_item_timer:$(no_item_timer),__portal_type:$(__portal_type),one_team:$(one_team),blue_team_skin:$(blue_team_skin),no_achievements:$(no_achievements),decreased_icbm_flight_duration:$(decreased_icbm_flight_duration),yellow_team_skin:$(yellow_team_skin),checkered_yellow_base:$(checkered_yellow_base),shield_type:$(shield_type),crusade_banners:$(crusade_banners),castle_type:$(castle_type),arena__classic_base_frames:$(arena__classic_base_frames)}"\
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
data modify storage rocketriders:main match_components.dialog.body.contents[1].extra append from entity @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=enabled] CustomName
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"game_mode",label:{color:"gray",text:"🔒 Game Mode"},width:300,options:[{id:"",display:{color:"red",text:"unknown"}}]}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=normalEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[] merge value {id:"normal",display:{color:"white",text:"normal"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=powerupsEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[] merge value {id:"powerups",display:{color:"white",text:"powerups"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=swapEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[] merge value {id:"swap",display:{color:"white",text:"swap"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=ctfEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[] merge value {id:"ctf",display:{color:"white",text:"ctf"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[] merge value {id:"chase",display:{color:"white",text:"chase"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[] merge value {id:"duel",display:{color:"white",text:"duel"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[] merge value {id:"crusade",display:{color:"white",text:"crusade"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[] merge value {id:"sandbox",display:{color:"white",text:"sandbox"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=classicEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[] merge value {id:"classic",display:{color:"white",text:"classic"}}

## Components
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:"",label_visible:false,width:200,options:[{id:"",display:{bold:true,text:"Components",underlined:true}}]}

# arena/base_colors (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__base_colors",label:"🔒 arena/base_colors",width:300,options:[{id:"",display:"{}"}]}
function custom:resolve_text_component {text_component:{storage:"rocketriders:match",nbt:'components."arena/base_colors"'},write_to:"storage rocketriders:main match_components.dialog.inputs[-1].options[].display"}

# arena/base_materials (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__base_materials",label:"🔒 arena/base_materials",width:300,options:[{id:"",display:"{}"}]}
function custom:resolve_text_component {text_component:{storage:"rocketriders:match",nbt:'components."arena/base_materials"'},write_to:"storage rocketriders:main match_components.dialog.inputs[-1].options[].display"}

# arena/bedrock_base_frames
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__bedrock_base_frames",label:"arena/bedrock_base_frames",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:match_components/arena/bedrock_base_frames run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# arena/classic_base_frames
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__classic_base_frames",label:"arena/classic_base_frames",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
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
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"armor_type",label:"armor_type",width:300,options:[{id:"0",display:{color:"white",text:'"',extra:[{color:"green",text:"generic"},'"']}},{id:"1",display:{color:"white",text:'"',extra:[{color:"green",text:"crusade_mode"},'"']}},{id:"2",display:{color:"white",text:'"',extra:[{color:"green",text:"swap_mode"},'"']}}]}
execute if predicate game:armor_type/generic run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].initial set value true
execute if predicate game:armor_type/crusade_mode run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true
execute if predicate game:armor_type/swap_mode run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[2].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!crusadeEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].display.extra append value {color:"red",text:" ⚠"}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!swapEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[2].display.extra append value {color:"red",text:" ⚠"}

# arrow_pickup/*
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"arrow_pickup__",label:"arrow_pickup/*",width:300,options:[{id:"0",display:{color:"white",text:"anyone"}},{id:"1",display:{color:"white",text:"only_crusade_mode_archer_kit"}}]}
execute if predicate game:match_components/arrow_pickup/only_crusade_mode_archer_kit run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[{display:{text:"only_crusade_mode_archer_kit"}}].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!crusadeEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[{display:{text:"only_crusade_mode_archer_kit"}}].display.extra append value {color:"red",text:" ⚠"}

# blue_team_skin
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"blue_team_skin",label:"blue_team_skin",width:300,options:[{id:"0",display:{color:"white",text:"blue"}},{id:"1",display:{color:"white",text:"dark_red"}},{id:"2",display:{color:"white",text:"classic_red"}}]}
execute if predicate game:blue_team_skin/dark_red run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true
execute if predicate game:blue_team_skin/classic_red run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[2].initial set value true

# castle_type
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"castle_type",label:"castle_type",width:300,options:[{id:"0",display:{color:"white",text:'"',extra:[{color:"green",text:"normal"},'"']}},{id:"1",display:{color:"white",text:'"',extra:[{color:"green",text:"deepslate"},'"']}}]}
execute if predicate game:castle_type/normal run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].initial set value true
execute if predicate game:castle_type/deepslate run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# checkered_yellow_base
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"checkered_yellow_base",label:"checkered_yellow_base",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:match_components/checkered_yellow_base run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# crusade_banners
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"crusade_banners",label:"crusade_banners",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:match_components/crusade_banners run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# cubekrowd/disable_all_but_5_non_lightning_missiles (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"cubekrowd__disable_all_but_5_non_lightning_missiles",label:"🔒 cubekrowd/disable_all_but_5_non_lightning_missiles",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/cubekrowd/disable_all_but_5_non_lightning_missiles run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# cubekrowd/disable_nova_rocket_or_fireball (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"cubekrowd__disable_nova_rocket_or_fireball",label:"🔒 cubekrowd/disable_nova_rocket_or_fireball",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/cubekrowd/disable_nova_rocket_or_fireball run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# cubekrowd/disable_one_lightning_missile (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"cubekrowd__disable_one_lightning_missile",label:"🔒 cubekrowd/disable_one_lightning_missile",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/cubekrowd/disable_one_lightning_missile run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# cubekrowd/disable_shield_or_obsidian_shield (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"cubekrowd__disable_shield_or_obsidian_shield",label:"🔒 cubekrowd/disable_shield_or_obsidian_shield",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/cubekrowd/disable_shield_or_obsidian_shield run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# custom_team_colors
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"custom_team_colors",label:"custom_team_colors",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:match_components/custom_team_colors run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# decreased_icbm_flight_duration
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"decreased_icbm_flight_duration",label:"decreased_icbm_flight_duration",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:match_components/decreased_icbm_flight_duration run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# decreased_shooting_saber_attack_damage
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"decreased_shooting_saber_attack_damage",label:"decreased_shooting_saber_attack_damage",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:match_components/decreased_shooting_saber_attack_damage run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# duel_settings_locked (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"duel_settings_locked",label:"🔒 duel_settings_locked",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/duel_settings_locked run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# friendly_fire
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"friendly_fire",label:"friendly_fire",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:match_components/friendly_fire run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# has_chase_crystals (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"has_chase_crystals",label:"🔒 has_chase_crystals",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/has_chase_crystals run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# has_flags (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"has_flags",label:"🔒 has_flags",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/has_flags run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# has_overtime (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"has_overtime",label:"🔒 has_overtime",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/has_overtime run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# has_powerups (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"has_powerups",label:"🔒 has_powerups",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/has_powerups run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# has_spells (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"has_spells",label:"🔒 has_spells",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/has_spells run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# item_signs/replace_fireball_with_cluster_fireball (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"duel_settings_locked",label:"🔒 item_signs/replace_fireball_with_cluster_fireball",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/item_signs/replace_fireball_with_cluster_fireball run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# item_signs/replace_vortex_with_icbm (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"duel_settings_locked",label:"🔒 item_signs/replace_vortex_with_icbm",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/item_signs/replace_vortex_with_icbm run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# lock_playing_teams_during_match (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"lock_playing_teams_during_match",label:"🔒 lock_playing_teams_during_match",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/lock_playing_teams_during_match run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# lower_void
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"lower_void",label:"lower_void",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
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
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"max_players_per_team",label:"🔒 max_players_per_team",width:300,options:[{id:"",display:{color:"white",text:"∞"}}]}
execute if score $max_players_per_team match_components matches -2147483648..2147483646 run execute store result storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text int 1 run scoreboard players get $max_players_per_team match_components
execute if score $max_players_per_team match_components matches -2147483648..2147483646 run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set string storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text

# min_players_per_team (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"min_players_per_team",label:"🔒 min_players_per_team",width:300,options:[{id:"",display:{color:"white",text:"0"}}]}
execute store result storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text int 1 run scoreboard players get $min_players_per_team match_components
data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set string storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text

# neutral_items
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"neutral_items",label:"neutral_items",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:match_components/neutral_items run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# no_achievements
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"no_achievements",label:"no_achievements",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:match_components/no_achievements run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# no_feathered_vortices
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"no_feathered_vortices",label:"no_feathered_vortices",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:match_components/no_feathered_vortices run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# no_item_timer
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"no_item_timer",label:"no_item_timer",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:match_components/no_item_timer run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].display.extra append value {color:"red",text:" ⚠"}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!sandboxEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].display.extra append value {color:"red",text:" ⚠"}

# one_team
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"one_team",label:"one_team",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:match_components/one_team run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

# portal_crystal_protection (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"portal_crystal_protection",label:"🔒 portal_crystal_protection",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:match_components/portal_crystal_protection run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[].display.text set value "true"

# "portal_type"
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"__portal_type",label:"portal_type",width:300,options:[{id:"0",display:{color:"white",text:"none"}},{id:"1",display:{color:"white",text:"default"}},{id:"2",display:{color:"white",text:"small"}}]}
execute if predicate game:portal_type/none run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[{display:{text:"none"}}].initial set value true
execute if predicate game:portal_type/default run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[{display:{text:"default"}}].initial set value true
execute if predicate game:portal_type/small run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[{display:{text:"small"}}].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!ctfEnabled,tag=!chaseEnabled] run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].display.extra append value {color:"red",text:" ⚠"}

# shield_type
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"shield_type",label:"shield_type",width:300,options:[{id:"0",display:{color:"white",text:'"',extra:[{color:"green",text:"normal"},'"']}},{id:"1",display:{color:"white",text:'"',extra:[{color:"green",text:"checkered"},'"']}},{id:"2",display:{color:"white",text:'"',extra:[{color:"green",text:"classic"},'"']}}]}
execute if predicate game:shield_type/normal run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].initial set value true
execute if predicate game:shield_type/checkered run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true
execute if predicate game:shield_type/classic run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[2].initial set value true

# yellow_team_skin
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"yellow_team_skin",label:"yellow_team_skin",width:300,options:[{id:"0",display:{color:"white",text:"yellow"}},{id:"1",display:{color:"white",text:"green"}}]}
execute if predicate game:yellow_team_skin/yellow run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[0].initial set value true
execute if predicate game:yellow_team_skin/green run data modify storage rocketriders:main match_components.dialog.inputs[-1].options[1].initial set value true

## Append config overridss (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:"",label_visible:false,width:200,options:[{id:"",display:{bold:true,text:"Config Overrides",underlined:true}}]}

execute if score $config_override.clutter_collector match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.clutter_collector"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.clutter_collector match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.clutter_collector"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.collision_control match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.collision_control"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.collision_control match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.collision_control"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.disable_cannoning match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_cannoning"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.disable_cannoning match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_cannoning"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.disable_hotbar_limit match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_hotbar_limit"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.disable_hotbar_limit match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_hotbar_limit"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.disable_overtime match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_overtime"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.disable_overtime match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_overtime"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.disable_pierce_prevention match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_pierce_prevention"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.disable_pierce_prevention match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_pierce_prevention"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.disable_team_balancing match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_team_balancing"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.disable_team_balancing match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_team_balancing"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.disable_tying match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_tying"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.disable_tying match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_tying"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.double_portal match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.double_portal"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.double_portal match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.double_portal"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.explosive match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.explosive"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.explosive match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.explosive"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.friendly_tnt_damage match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.friendly_tnt_damage"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.friendly_tnt_damage match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.friendly_tnt_damage"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.hardcore match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.hardcore"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.hardcore match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.hardcore"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.hobbits match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.hobbits"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.hobbits match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.hobbits"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.impact_utilities match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.impact_utilities"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.impact_utilities match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.impact_utilities"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.instamine match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.instamine"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.instamine match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.instamine"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.instant_tnt_explosions match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.instant_tnt_explosions"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.instant_tnt_explosions match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.instant_tnt_explosions"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.long_arms match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.long_arms"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.long_arms match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.long_arms"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.minute_mix match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.minute_mix"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.minute_mix match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.minute_mix"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.molerat match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.molerat"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.molerat match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.molerat"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.ninja_jump match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.ninja_jump"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.ninja_jump match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.ninja_jump"},width:300,options:[{id:"-10",display:"off"}]}

execute if score $config_override.no_fall_damage match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.no_fall_damage"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.no_fall_damage match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.no_fall_damage"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.punchable_tnt match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.punchable_tnt"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.punchable_tnt match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.punchable_tnt"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.rocket_residers match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.rocket_residers"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.rocket_residers match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.rocket_residers"},width:300,options:[{id:"-1",display:"off"}]}

execute if predicate game:feature_flags/1_4_0_update/on if score $config_override.rotting match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.rotting"},width:300,options:[{id:"1",display:"on"}]}
execute if predicate game:feature_flags/1_4_0_update/on if score $config_override.rotting match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.rotting"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.snipe_portals match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.snipe_portals"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.snipe_portals match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.snipe_portals"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.sonar match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.sonar"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.sonar match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.sonar"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.spam_click match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.spam_click"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.spam_click match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.spam_click"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.special_treatment match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.special_treatment"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.special_treatment match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.special_treatment"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.splash_streams match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.splash_streams"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.splash_streams match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.splash_streams"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.surprise_eggs match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.surprise_eggs"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.surprise_eggs match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.surprise_eggs"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.unstable_tnt match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.unstable_tnt"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.unstable_tnt match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.unstable_tnt"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.wind_down match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.wind_down"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.wind_down match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.wind_down"},width:300,options:[{id:"-1",display:"off"}]}

## Append item pool (locked)
data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:"",label_visible:false,width:200,options:[{id:"",display:{bold:true,text:"Item Overrides",underlined:true}}]}

execute if score $item_pool.arrow match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.arrow"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.arrow match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.arrow"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.canopy match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.canopy"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.canopy match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.canopy"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.cluster_fireball match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.cluster_fireball"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.cluster_fireball match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.cluster_fireball"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.fireball match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.fireball"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.fireball match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.fireball"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.icbm match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.icbm"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.icbm match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.icbm"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/ant match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/ant"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/ant match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/ant"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/auxiliary match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/auxiliary"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/auxiliary match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/auxiliary"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/blade match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/blade"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/blade match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/blade"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/broadsword match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/broadsword"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/broadsword match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/broadsword"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/bullet match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/bullet"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/bullet match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/bullet"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/catapult match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/catapult"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/catapult match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/catapult"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/chronullifier match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/chronullifier"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/chronullifier match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/chronullifier"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/citadel match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/citadel"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/citadel match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/citadel"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/duplex match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/duplex"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/duplex match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/duplex"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/elder_guardian match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/elder_guardian"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/elder_guardian match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/elder_guardian"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/gemini match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/gemini"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/gemini match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/gemini"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/hurricane match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/hurricane"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/hurricane match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/hurricane"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/hypersonic match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/hypersonic"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/hypersonic match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/hypersonic"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/juggerbuster match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/juggerbuster"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/juggerbuster match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/juggerbuster"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/lifter match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/lifter"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/lifter match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/lifter"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/rifter match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/rifter"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/rifter match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/rifter"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/slasher match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/slasher"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/slasher match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/slasher"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/thunderbolt match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/thunderbolt"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/thunderbolt match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/thunderbolt"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/tomatwo match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/tomatwo"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/tomatwo match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/tomatwo"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/warhead match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/warhead"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/warhead match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/warhead"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.nova_rocket match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.nova_rocket"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.nova_rocket match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.nova_rocket"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.obsidian_shield match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.obsidian_shield"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.obsidian_shield match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.obsidian_shield"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.shield match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.shield"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.shield match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.shield"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.splash match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.splash"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.splash match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.splash"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.vortex match_components matches 1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.vortex"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.vortex match_components matches -1 run data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.vortex"},width:300,options:[{id:"-1",display:"off"}]}

## Show Dialog
function custom:player/show_dialog with storage rocketriders:main match_components
tag @s add last_dialog_opened.match_components_ui
