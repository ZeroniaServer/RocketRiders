data modify storage rocketriders:main gamemode_components.dialog set value {\
  "type": "minecraft:confirmation",\
  "title": "Gamemode Components UI",\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": ["Gamemode: ", {"bold":true,"text":"","underlined":true}]\
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
      "template": "function game:gamemode_components_ui/set {game_mode:$(game_mode),arena__bedrock_frame:$(arena__bedrock_frame),arena__no_base_details:$(arena__no_base_details),armor__:$(armor__),arrow_pickup__:$(arrow_pickup__),main_item__:$(main_item__),custom_team_colors:$(custom_team_colors),decreased_shooting_saber_attack_damage:$(decreased_shooting_saber_attack_damage),explosions_crack_deepslate_bricks:$(explosions_crack_deepslate_bricks),friendly_fire:$(friendly_fire),lower_void:$(lower_void),neutral_items:$(neutral_items),no_feathered_vortices:$(no_feathered_vortices),no_item_timer:$(no_item_timer),__portal_type:$(__portal_type),one_team:$(one_team),red_for_blue:$(red_for_blue),no_achievements:$(no_achievements),arena__no_portal_details:$(arena__no_portal_details),decreased_icbm_flight_duration:$(decreased_icbm_flight_duration)}"\
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

## Gamemode
data modify storage rocketriders:main gamemode_components.dialog.body.contents[1].extra append from entity @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=enabled] CustomName
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"game_mode",label:{color:"gray",text:"🔒 Game Mode"},width:300,options:[{id:"",display:{color:"red",text:"unknown"}}]}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=normalEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[] merge value {id:"1",display:{color:"white",text:"normal"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=powerupsEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[] merge value {id:"2",display:{color:"white",text:"powerups"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=swapEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[] merge value {id:"3",display:{color:"white",text:"swap"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=ctfEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[] merge value {id:"4",display:{color:"white",text:"ctf"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[] merge value {id:"5",display:{color:"white",text:"chase"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[] merge value {id:"6",display:{color:"white",text:"duel"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[] merge value {id:"7",display:{color:"white",text:"crusade"}}
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[] merge value {id:"8",display:{color:"white",text:"sandbox"}}

## Components
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:"",label_visible:false,width:200,options:[{id:"",display:{bold:true,text:"Components",underlined:true}}]}

# arena/bedrock_frame
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__bedrock_frame",label:"arena/bedrock_frame",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/arena/bedrock_frame run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# arena/no_base_details
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__no_base_details",label:"arena/no_base_details",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/arena/no_base_details run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# arena/no_portal_details
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__no_portal_details",label:"arena/no_portal_details",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/arena/no_portal_details run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# armor/*
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"armor__",label:"armor/*",width:300,options:[{id:"0",display:{color:"white",text:"generic"}},{id:"1",display:{color:"white",text:"crusade_kit_dependent"}},{id:"2",display:{color:"white",text:"swap"}}]}
execute if predicate game:gamemode_components/armor/generic run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[0].initial set value true
execute if predicate game:gamemode_components/armor/crusade_kit_dependent run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true
execute if predicate game:gamemode_components/armor/swap run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[2].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!crusadeEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[{display:{text:"crusade_kit_dependent"}}].display.color set value "red"
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!swapEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[{display:{text:"swap"}}].display.color set value "red"

# arrow_pickup/*
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"arrow_pickup__",label:"arrow_pickup/*",width:300,options:[{id:"0",display:{color:"white",text:"anyone"}},{id:"1",display:{color:"white",text:"only_crusade_mode_archer_kit"}}]}
execute if predicate game:gamemode_components/arrow_pickup/only_crusade_mode_archer_kit run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[{display:{text:"only_crusade_mode_archer_kit"}}].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!crusadeEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[{display:{text:"only_crusade_mode_archer_kit"}}].display.color set value "red"

# cubekrowd/disable_all_but_5_non_lightning_missiles (locked)
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"cubekrowd__disable_all_but_5_non_lightning_missiles",label:"🔒 cubekrowd/disable_all_but_5_non_lightning_missiles",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:gamemode_components/cubekrowd/disable_all_but_5_non_lightning_missiles run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[].display.text set value "true"

# cubekrowd/disable_nova_rocket_or_fireball (locked)
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"cubekrowd__disable_nova_rocket_or_fireball",label:"🔒 cubekrowd/disable_nova_rocket_or_fireball",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:gamemode_components/cubekrowd/disable_nova_rocket_or_fireball run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[].display.text set value "true"

# cubekrowd/disable_one_lightning_missile (locked)
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"cubekrowd__disable_one_lightning_missile",label:"🔒 cubekrowd/disable_one_lightning_missile",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:gamemode_components/cubekrowd/disable_one_lightning_missile run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[].display.text set value "true"

# cubekrowd/disable_shield_or_obsidian_shield (locked)
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"cubekrowd__disable_shield_or_obsidian_shield",label:"🔒 cubekrowd/disable_shield_or_obsidian_shield",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:gamemode_components/cubekrowd/disable_shield_or_obsidian_shield run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[].display.text set value "true"

# custom_team_colors
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"custom_team_colors",label:"custom_team_colors",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/custom_team_colors run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# decreased_icbm_flight_duration
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"decreased_icbm_flight_duration",label:"decreased_icbm_flight_duration",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/decreased_icbm_flight_duration run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# decreased_shooting_saber_attack_damage
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"decreased_shooting_saber_attack_damage",label:"decreased_shooting_saber_attack_damage",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/decreased_shooting_saber_attack_damage run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# duel_settings_locked (locked)
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"duel_settings_locked",label:"🔒 duel_settings_locked",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:gamemode_components/duel_settings_locked run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[].display.text set value "true"

# explosions_crack_deepslate_bricks
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"explosions_crack_deepslate_bricks",label:"explosions_crack_deepslate_bricks",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/explosions_crack_deepslate_bricks run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# friendly_fire
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"friendly_fire",label:"friendly_fire",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/friendly_fire run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# has_flags (locked)
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"has_flags",label:"🔒 has_flags",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:gamemode_components/has_flags run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[].display.text set value "true"

# item_signs/replace_fireball_with_cluster_fireball (locked)
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"duel_settings_locked",label:"🔒 item_signs/replace_fireball_with_cluster_fireball",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[].display.text set value "true"

# item_signs/replace_vortex_with_icbm (locked)
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"duel_settings_locked",label:"🔒 item_signs/replace_vortex_with_icbm",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:gamemode_components/item_signs/replace_vortex_with_icbm run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[].display.text set value "true"

# lower_void
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"lower_void",label:"lower_void",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/lower_void run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# main_item/*
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"main_item__",label:"main_item/*",width:300,options:[{id:"0",display:{color:"white",text:"none"}},{id:"1",display:{color:"white",text:"shooting_saber"}},{id:"2",display:{color:"white",text:"piercing_pickaxe"}},{id:"3",display:{color:"white",text:"crusade_kit_dependent"}},{id:"4",display:{color:"white",text:"rocket_nomicon"}}]}
execute if predicate game:gamemode_components/main_item/shooting_saber run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true
execute if predicate game:gamemode_components/main_item/piercing_pickaxe run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[2].initial set value true
execute if predicate game:gamemode_components/main_item/crusade_kit_dependent run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[3].initial set value true
execute if predicate game:gamemode_components/main_item/rocket_nomicon run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[4].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!crusadeEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[3].display.color set value "red"
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[].display.color set value "red"
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[4].display.color set value "white"

# neutral_items
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"neutral_items",label:"neutral_items",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/neutral_items run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# no_achievements
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"no_achievements",label:"no_achievements",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/no_achievements run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# no_feathered_vortices
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"no_feathered_vortices",label:"no_feathered_vortices",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/no_feathered_vortices run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# no_item_timer
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"no_item_timer",label:"no_item_timer",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/no_item_timer run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=sandboxEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[{display:{text:"false"}}].display.color set value "red"
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!sandboxEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[{display:{text:"true"}}].display.color set value "red"

# one_team
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"one_team",label:"one_team",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/one_team run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

# portal_crystal_protection (locked)
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"portal_crystal_protection",label:"🔒 portal_crystal_protection",width:300,options:[{id:"",display:{color:"white",text:"false"}}]}
execute if predicate game:gamemode_components/portal_crystal_protection run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[].display.text set value "true"

# "portal_type"
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"__portal_type",label:"portal_type",width:300,options:[{id:"0",display:{color:"white",text:"none"}},{id:"1",display:{color:"white",text:"default"}},{id:"2",display:{color:"white",text:"small"}}]}
execute if predicate game:portal_type/none run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[{display:{text:"none"}}].initial set value true
execute if predicate game:portal_type/default run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[{display:{text:"default"}}].initial set value true
execute if predicate game:portal_type/small run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[{display:{text:"small"}}].initial set value true
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=!ctfEnabled,tag=!chaseEnabled] run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[0].display.color set value "red"

# red_for_blue
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"red_for_blue",label:"red_for_blue",width:300,options:[{id:"0",display:{color:"white",text:"false"}},{id:"1",display:{color:"white",text:"true"}}]}
execute if predicate game:gamemode_components/red_for_blue run data modify storage rocketriders:main gamemode_components.dialog.inputs[-1].options[1].initial set value true

## Append config overridss (locked)
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:"",label_visible:false,width:200,options:[{id:"",display:{bold:true,text:"Config Overrides",underlined:true}}]}

execute if score $config_override.clutter_collector gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.clutter_collector"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.clutter_collector gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.clutter_collector"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.collision_control gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.collision_control"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.collision_control gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.collision_control"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.disable_cannoning gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_cannoning"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.disable_cannoning gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_cannoning"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.disable_hotbar_limit gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_hotbar_limit"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.disable_hotbar_limit gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_hotbar_limit"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.disable_pierce_prevention gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_pierce_prevention"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.disable_pierce_prevention gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_pierce_prevention"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.disable_team_balancing gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_team_balancing"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.disable_team_balancing gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_team_balancing"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.disable_tying gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_tying"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.disable_tying gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.disable_tying"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.double_portal gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.double_portal"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.double_portal gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.double_portal"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.explosive gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.explosive"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.explosive gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.explosive"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.friendly_tnt_damage gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.friendly_tnt_damage"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.friendly_tnt_damage gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.friendly_tnt_damage"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.hardcore gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.hardcore"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.hardcore gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.hardcore"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.hobbits gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.hobbits"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.hobbits gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.hobbits"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.impact_utilities gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.impact_utilities"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.impact_utilities gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.impact_utilities"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.instamine gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.instamine"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.instamine gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.instamine"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.instant_tnt_explosions gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.instant_tnt_explosions"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.instant_tnt_explosions gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.instant_tnt_explosions"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.long_arms gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.long_arms"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.long_arms gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.long_arms"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.minute_mix gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.minute_mix"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.minute_mix gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.minute_mix"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.molerat gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.molerat"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.molerat gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.molerat"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.ninja_jump gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.ninja_jump"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.ninja_jump gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.ninja_jump"},width:300,options:[{id:"-10",display:"off"}]}

execute if score $config_override.no_fall_damage gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.no_fall_damage"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.no_fall_damage gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.no_fall_damage"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.punchable_tnt gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.punchable_tnt"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.punchable_tnt gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.punchable_tnt"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.rocket_residers gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.rocket_residers"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.rocket_residers gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.rocket_residers"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.snipe_portals gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.snipe_portals"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.snipe_portals gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.snipe_portals"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.sonar gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.sonar"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.sonar gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.sonar"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.spam_click gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.spam_click"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.spam_click gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.spam_click"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.special_treatment gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.special_treatment"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.special_treatment gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.special_treatment"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.splash_streams gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.splash_streams"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.splash_streams gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.splash_streams"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.surprise_eggs gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.surprise_eggs"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.surprise_eggs gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.surprise_eggs"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.unstable_tnt gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.unstable_tnt"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.unstable_tnt gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.unstable_tnt"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $config_override.wind_down gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.wind_down"},width:300,options:[{id:"1",display:"on"}]}
execute if score $config_override.wind_down gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"gray",text:"🔒 config_override.wind_down"},width:300,options:[{id:"-1",display:"off"}]}

## Append item pool (locked)
data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:"",label_visible:false,width:200,options:[{id:"",display:{bold:true,text:"Item Overrides",underlined:true}}]}

execute if score $item_pool.arrow gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.arrow"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.arrow gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.arrow"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.canopy gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.canopy"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.canopy gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.canopy"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.cluster_fireball gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.cluster_fireball"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.cluster_fireball gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.cluster_fireball"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.fireball gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.fireball"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.fireball gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.fireball"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.icbm gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.icbm"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.icbm gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.icbm"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/ant gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/ant"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/ant gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/ant"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/auxiliary gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/auxiliary"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/auxiliary gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/auxiliary"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/blade gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/blade"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/blade gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/blade"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/broadsword gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/broadsword"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/broadsword gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/broadsword"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/bullet gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/bullet"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/bullet gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/bullet"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/catapult gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/catapult"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/catapult gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/catapult"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/chronullifier gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/chronullifier"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/chronullifier gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/chronullifier"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/citadel gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/citadel"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/citadel gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/citadel"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/duplex gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/duplex"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/duplex gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/duplex"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/elder_guardian gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/elder_guardian"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/elder_guardian gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/elder_guardian"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/gemini gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/gemini"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/gemini gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/gemini"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/hurricane gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/hurricane"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/hurricane gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/hurricane"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/hypersonic gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/hypersonic"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/hypersonic gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/hypersonic"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/juggerbuster gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/juggerbuster"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/juggerbuster gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/juggerbuster"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/lifter gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/lifter"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/lifter gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/lifter"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/rifter gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/rifter"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/rifter gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/rifter"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/slasher gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/slasher"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/slasher gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/slasher"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/thunderbolt gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/thunderbolt"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/thunderbolt gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/thunderbolt"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/tomatwo gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/tomatwo"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/tomatwo gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/tomatwo"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.missile/warhead gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/warhead"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.missile/warhead gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.missile/warhead"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.nova_rocket gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.nova_rocket"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.nova_rocket gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.nova_rocket"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.obsidian_shield gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.obsidian_shield"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.obsidian_shield gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.obsidian_shield"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.shield gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.shield"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.shield gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.shield"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.splash gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.splash"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.splash gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.splash"},width:300,options:[{id:"-1",display:"off"}]}

execute if score $item_pool.vortex gamemode_components matches 1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.vortex"},width:300,options:[{id:"1",display:"on"}]}
execute if score $item_pool.vortex gamemode_components matches -1 run data modify storage rocketriders:main gamemode_components.dialog.inputs append value {type:"minecraft:single_option",key:"",label:{color:"#AFAFFF",text:"🔒 item_pool.vortex"},width:300,options:[{id:"-1",display:"off"}]}

## Show Dialog
function custom:show_dialog with storage rocketriders:main gamemode_components
tag @s add last_dialog_opened.gamemode_components_ui
