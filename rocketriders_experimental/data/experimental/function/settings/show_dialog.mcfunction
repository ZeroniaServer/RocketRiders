data modify storage rocketriders:main settings.dialog set value {\
  "type": "minecraft:notice",\
  "title": [\
    "",\
    {\
      "bold": true,\
      "color": "blue",\
      "text": "Rocket"\
    },\
    " ",\
    {\
      "bold": true,\
      "color": "gold",\
      "text": "Riders"\
    }\
  ],\
  "inputs": [\
    {\
      "type": "minecraft:single_option",\
      "key": "tips",\
      "label": "Show Tips",\
      "options": [\
        {\
          "id": "0",\
          "display": {\
            "translate": "options.off"\
          }\
        },\
        {\
          "id": "1",\
          "display": {\
            "translate": "options.on"\
          }\
        }\
      ]\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "parkour_instructions",\
      "label": "Show Parkour Instructions",\
      "options": [\
        {\
          "id": "0",\
          "display": {\
            "translate": "options.off"\
          }\
        },\
        {\
          "id": "1",\
          "display": {\
            "translate": "options.on"\
          }\
        }\
      ]\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "particles",\
      "label": "Particles",\
      "options": [\
        {\
          "id": "0",\
          "display": {\
            "translate": "options.off"\
          }\
        },\
        {\
          "id": "1",\
          "display": {\
            "translate": "options.on"\
          }\
        }\
      ]\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "do_hotbar_auto_fill",\
      "label": "Auto-Fill Hotbar",\
      "options": [\
        {\
          "id": "0",\
          "display": {\
            "translate": "options.off"\
          }\
        },\
        {\
          "id": "1",\
          "display": {\
            "translate": "options.on"\
          }\
        }\
      ]\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "crusade_kit",\
      "label": "Starting Crusade Kit",\
      "options": [\
        {\
          "id": "0",\
          "display": {"italic":true,"text":"Random"}\
        },\
        {\
          "id": "1",\
          "display": {"color":"dark_green","text":"Knight"}\
        },\
        {\
          "id": "2",\
          "display": {"color":"red","text":"Archer"}\
        },\
        {\
          "id": "3",\
          "display": {"color":"dark_purple","text":"Mage"}\
        }\
      ]\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "default_spell",\
      "label": "Default Spell Book",\
      "options": [\
        {\
          "id": "0",\
          "display": {"color":"gold","text":"Fire"}\
        },\
        {\
          "id": "1",\
          "display": {"color":"green","text":"Health"}\
        },\
        {\
          "id": "2",\
          "display": {"color":"dark_gray","text":"Damage"}\
        },\
        {\
          "id": "3",\
          "display": {"color":"aqua","text":"Wind"}\
        }\
      ]\
    },\
  ],\
  "action": {\
    "label": "Done",\
    "action": {\
      "type": "minecraft:dynamic/run_command",\
         "template": "trigger settings set 1000$(crusade_kit)$(default_spell)$(do_hotbar_auto_fill)$(particles)$(parkour_instructions)$(tips)"\
    }\
  }\
}

# Set current values
execute if entity @s[tag=!hideTips] run data modify storage rocketriders:main settings.dialog.inputs[{key:"tips"}].options[1].initial set value true
execute if entity @s[tag=!hideParkourTips] run data modify storage rocketriders:main settings.dialog.inputs[{key:"parkour_instructions"}].options[1].initial set value true
execute if entity @s[tag=!hideParticles] run data modify storage rocketriders:main settings.dialog.inputs[{key:"particles"}].options[1].initial set value true
execute if entity @s[tag=do_hotbar_auto_fill] run data modify storage rocketriders:main settings.dialog.inputs[{key:"do_hotbar_auto_fill"}].options[1].initial set value true
execute if score @s default_spell matches 1 run data modify storage rocketriders:main settings.dialog.inputs[{key:"default_spell"}].options[1].initial set value true
execute if score @s default_spell matches 2 run data modify storage rocketriders:main settings.dialog.inputs[{key:"default_spell"}].options[2].initial set value true
execute if score @s default_spell matches 3 run data modify storage rocketriders:main settings.dialog.inputs[{key:"default_spell"}].options[3].initial set value true
execute if score @s start_as_crusade_kit matches 1 run data modify storage rocketriders:main settings.dialog.inputs[{key:"crusade_kit"}].options[1].initial set value true
execute if score @s start_as_crusade_kit matches 2 run data modify storage rocketriders:main settings.dialog.inputs[{key:"crusade_kit"}].options[2].initial set value true
execute if score @s start_as_crusade_kit matches 3 run data modify storage rocketriders:main settings.dialog.inputs[{key:"crusade_kit"}].options[3].initial set value true

# Remove the parkour tips option on CK
execute unless predicate rr:has_parkour run data remove storage rocketriders:main settings.dialog.inputs[{key:"parkour_instructions"}]
execute unless predicate rr:has_parkour run data modify storage rocketriders:main settings.dialog.action.action.template set value "trigger settings set 1000$(crusade_kit)$(default_spell)$(do_hotbar_auto_fill)$(particles)0$(tips)"

# Remove the "default spell book" and "crusade kit" settings if Crusade Mode is not installed
execute unless entity @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_crusade] run data remove storage rocketriders:main settings.dialog.inputs[{key:"default_spell"}]
execute unless entity @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_crusade] run data remove storage rocketriders:main settings.dialog.inputs[{key:"crusade_kit"}]
execute unless entity @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_crusade] run execute if predicate rr:has_parkour run data modify storage rocketriders:main settings.dialog.action.action.template set value "trigger settings set 100000$(do_hotbar_auto_fill)$(particles)$(parkour_instructions)$(tips)"
execute unless entity @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_crusade] run execute unless predicate rr:has_parkour run data modify storage rocketriders:main settings.dialog.action.action.template set value "trigger settings set 100000$(do_hotbar_auto_fill)$(particles)0$(tips)"

# Show dialog
function custom:show_dialog with storage rocketriders:main settings
