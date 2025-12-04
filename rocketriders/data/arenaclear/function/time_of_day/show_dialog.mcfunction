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
            "command": "trigger set_time_of_day set -4200"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the time of day to Sunrise (600)"\
            }\
          }\
        },\
        "  ",\
        {\
          "text": "[Morning]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger set_time_of_day set -4100"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the time of day to Morning (700)"\
            }\
          }\
        },\
        "  ",\
        {\
          "text": "[Noon]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger set_time_of_day set -3600"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the time of day to Noon (1200)"\
            }\
          }\
        },\
        "  ",\
        {\
          "text": "[Sunset]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger set_time_of_day set -2900"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the time of day to Sunset (1900)"\
            }\
          }\
        },\
        "  ",\
        {\
          "text": "[Midnight]",\
          "click_event": {\
            "action": "run_command",\
            "command": "trigger set_time_of_day set -4800"\
          },\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
              "text": "Click to set the time of day to Midnight (0)"\
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
      "end": 2300,\
      "step": 100,\
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

execute store result score $displayed_hour var run time query daytime
scoreboard players remove $displayed_hour var 18000
scoreboard players add $displayed_hour var 500
scoreboard players operation $displayed_hour var %= $24000 constant
execute store result storage rocketriders:main time_of_day.dialog.inputs[0].initial int 100 run scoreboard players operation $displayed_hour var /= $1000 constant

function custom:show_dialog with storage rocketriders:main time_of_day

data remove storage rocketriders:main time_of_day
