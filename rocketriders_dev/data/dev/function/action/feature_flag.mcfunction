data modify storage rocketriders:main dev.dialog set value {\
  "type": "minecraft:notice",\
  "title": "RR Developer Actions: Feature Flags",\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": [\
      "",\
      ["",{"bold":true,"text":"???"},"\n","Missing description.","\n"],\
    ],\
    "width": 400\
  },\
  "after_action": "wait_for_response",\
  "exit_action": {\
    "label": "Back",\
    "action": {\
      "type": "minecraft:show_dialog",\
      "dialog": "dev:quick_actions/feature_flags"\
    }\
  },\
  "action": {\
    "label": "Back",\
    "action": {\
      "type": "minecraft:show_dialog",\
      "dialog": "dev:quick_actions/feature_flags"\
    }\
  }\
}

# Feature Flags
function dev:__impl__/feature_flag/option {name:"Colored Portal Frames",description:"Tint the obsidian around portals to match the team color.",index:0,config_id:"colored_portal_frames"}
function dev:__impl__/feature_flag/option {name:"1.4.0 Update",description:"Adds features intended for version 1.4.0.",index:1,config_id:"1_4_0_update"}
function dev:__impl__/feature_flag/option {name:"Geysers",description:"Adds geyser interaction between fireballs and water.",index:2,config_id:"geysers"}

# Show Dialog
function custom:player/show_dialog with storage rocketriders:main dev
