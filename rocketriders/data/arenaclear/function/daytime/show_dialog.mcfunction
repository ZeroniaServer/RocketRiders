data modify storage rocketriders:main daytime.dialog set value {\
  "type": "minecraft:confirmation",\
  "title": {\
    "text": "Daytime",\
    "bold": true\
  },\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": [\
      "",\
      {\
        "text": "Determines the sky appearance.\n\n\n",\
        "color": "gray",\
        "italic": true\
      },\
      "Adjust the slider below to change the time, then press \"Confirm\".\n\n\nAlternatively, choose a preset from this list:\n",\
      [\
        {\
          "text": "",\
          "color": "aqua"\
        },\
        {\
          "text": "[Sunrise]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger daytime set 24000"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the daytime to Sunrise (0)"\
            }\
          }\
        },\
        "  ",\
        {\
          "text": "[Morning]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger daytime set 25000"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the daytime to Morning (1000)"\
            }\
          }\
        },\
        "  ",\
        {\
          "text": "[Noon]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger daytime set 30000"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the daytime to Noon (6000)"\
            }\
          }\
        },\
        "  ",\
        {\
          "text": "[Sunset]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger daytime set 37000"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the daytime to Sunset (13000)"\
            }\
          }\
        },\
        "  ",\
        {\
          "text": "[Midnight]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger daytime set 42000"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the daytime to Midnight (18000)"\
            }\
          }\
        }\
      ],\
      "\n\n"\
    ],\
    "width": 400\
  },\
  "inputs": [\
    {\
      "type": "minecraft:number_range",\
      "key": "daytime",\
      "label": "Daytime",\
      "start": 0,\
      "end": 23999,\
      "step": 1,\
      "initial": 0\
    }\
  ],\
  "pause": true,\
  "after_action": "close",\
  "yes": {\
    "label": "Confirm",\
    "action": {\
      "type": "minecraft:dynamic/run_command",\
      "template": "trigger daytime set $(daytime)"\
    }\
  },\
  "no": {\
    "label": "Cancel"\
  }\
}
execute store result storage rocketriders:main daytime.dialog.inputs[0].initial int 1 run time query daytime

function custom:show_dialog with storage rocketriders:main daytime

data remove storage rocketriders:main daytime
