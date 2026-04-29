data modify storage rocketriders:main tie_window_length.dialog set value {\
  "type": "minecraft:multi_action",\
  "title": {\
    "text": "Tie Window",\
    "bold": true\
  },\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": [\
      "",\
      {\
        "text": "The number of seconds after a portal is broken in which a tiebreaker can be started.\n\n\n",\
        "color": "gray",\
        "italic": true\
      },\
      "Adjust the slider below to change the tie window length, then press \"Confirm\".\n\n"\
    ],\
    "width": 400\
  },\
  "inputs": [\
    {\
      "type": "minecraft:number_range",\
      "key": "tie_window_length",\
      "label": "Second(s)",\
      "label_format": "%2$s %1$s",\
      "start": 0,\
      "end": 10,\
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
        "template": "trigger set_tie_window set $(tie_window_length)"\
      }\
    }\
  ]\
}
execute store result storage rocketriders:main tie_window_length.dialog.inputs[0].initial int 1 run function game:config/get_tie_window_length

function custom:player/show_dialog with storage rocketriders:main tie_window_length

data remove storage rocketriders:main tie_window_length
