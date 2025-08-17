data modify storage rocketriders:main itemdelay.dialog set value {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "Item Delay",\
    "bold": true\
  },\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": [\
      "",\
      {\
        "text": "How long it takes to give items.\n\n\n",\
        "color": "gray",\
        "italic": true\
      },\
      "Adjust the slider below to change the time, then press \"Confirm\".\n\n"\
    ],\
    "width": 400\
  },\
  "inputs": [\
    {\
      "type": "minecraft:number_range",\
      "key": "itemdelay",\
      "label": [\
        "Second",\
        {\
          "text": "(s)",\
          "italic": true\
        }\
      ],\
      "label_format": "%2$s %1$s",\
      "start": 5,\
      "end": 30,\
      "step": 1,\
      "initial": 5\
    }\
  ],\
  "pause": true,\
  "after_action": "close",\
  "exit_action": {\
    "label": "Cancel"\
  },\
  "actions": [\
    {\
      "label": "Confirm",\
      "action": {\
        "type": "minecraft:dynamic/run_command",\
        "template": "trigger MaxItemSec set $(itemdelay)"\
      }\
    }\
  ]\
}
execute store result storage rocketriders:main itemdelay.dialog.inputs[0].initial int 1 run scoreboard players get @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,tag=!EditedSettings] MaxItemSec

function custom:show_dialog with storage rocketriders:main itemdelay

data remove storage rocketriders:main itemdelay
