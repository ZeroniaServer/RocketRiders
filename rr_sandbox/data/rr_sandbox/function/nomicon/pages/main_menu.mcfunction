function custom:show_dialog {dialog:\
  {\
    "type": "minecraft:multi_action",\
    "title": [\
      {\
        "text": "Rocket",\
        "color": "blue",\
        "bold": true\
      },\
      {\
        "text": "-",\
        "color": "gray"\
      },\
      {\
        "text": "nomicon",\
        "color": "gold"\
      }\
    ],\
    "pause": false,\
    "after_action": "none",\
    "columns": 1,\
    "body": {\
      "type": "minecraft:plain_message",\
      "contents": [\
        {\
          "text": "Your one-stop shop for every item in Rocket Riders!\n",\
          "italic": true,\
          "color": "gray"\
        },\
        {\
          "text": "\n\nSelect a category below and choose what items you want to obtain.\nClick the number below the item name to get that amount.\n",\
          "italic": false,\
          "color": "white"\
        }\
      ],\
      "width": 400\
    },\
    "actions": [\
      {\
        "label": {"text":"Browse All","italic":true},\
        "width": 100,\
        "action": {\
          "type": "run_command",\
          "command": "trigger sandbox.rocket_nomicon set 1000004"\
        }\
      },\
      {\
        "label": "🗡 Weapons/Tools 🏹",\
        "action": {\
          "type": "run_command",\
          "command": "trigger sandbox.rocket_nomicon set 1000006"\
        }\
      },\
      {\
        "label": "🚀 Missiles 🚀",\
        "action": {\
          "type": "run_command",\
          "command": "trigger sandbox.rocket_nomicon set 1000003"\
        }\
      },\
      {\
        "label": "🛠 Utilities 🛠",\
        "action": {\
          "type": "run_command",\
          "command": "trigger sandbox.rocket_nomicon set 1000002"\
        }\
      },\
      {\
        "label": "✨ Powerups ✨",\
        "action": {\
          "type": "run_command",\
          "command": "trigger sandbox.rocket_nomicon set 1000005"\
        }\
      },\
      {\
        "label": {\
          "text": "Experimental/Unused",\
          "italic": true\
        },\
        "action": {\
          "type": "run_command",\
          "command": "trigger sandbox.rocket_nomicon set 1000007"\
        }\
      },\
      {\
        "label": {\
          "color": "aqua",\
          "text": "Switch Team"\
        },\
        "width": 90,\
        "action": {\
          "type": "run_command",\
          "command": "trigger sandbox.rocket_nomicon set 2000001"\
        }\
      },\
      {\
        "label": {\
          "color": "red",\
          "text": "Clear Inventory"\
        },\
        "width": 90,\
        "action": {\
          "type": "run_command",\
          "command": "trigger sandbox.rocket_nomicon set 2000002"\
        }\
      }\
    ],\
    "exit_action": {\
      "label": "Done",\
      "action": {\
        "type": "run_command",\
        "command": "trigger sandbox.rocket_nomicon set 1000001"\
      }\
    }\
  }\
}
