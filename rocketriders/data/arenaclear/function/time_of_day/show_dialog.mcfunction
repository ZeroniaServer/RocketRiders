data modify storage rocketriders:main time_of_day.dialog set value {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "Time of Day",\
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
            "command": "trigger set_time_of_day set 24000"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the time of day to Sunrise (0)"\
            }\
          }\
        },\
        "  ",\
        {\
          "text": "[Morning]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger set_time_of_day set 25000"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the time of day to Morning (1000)"\
            }\
          }\
        },\
        "  ",\
        {\
          "text": "[Noon]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger set_time_of_day set 30000"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the time of day to Noon (6000)"\
            }\
          }\
        },\
        "  ",\
        {\
          "text": "[Sunset]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger set_time_of_day set 37000"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the time of day to Sunset (13000)"\
            }\
          }\
        },\
        "  ",\
        {\
          "text": "[Midnight]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger set_time_of_day set 42000"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the time of day to Midnight (18000)"\
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
      "key": "time_of_day",\
      "label": "Time of Day",\
      "start": 0,\
      "end": 23999,\
      "step": 1,\
      "initial": 0\
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
        "template": "trigger set_time_of_day set $(time_of_day)"\
      }\
    }\
  ]\
}
execute store result storage rocketriders:main time_of_day.dialog.inputs[0].initial int 1 run time query daytime

function custom:show_dialog with storage rocketriders:main time_of_day

data remove storage rocketriders:main time_of_day
