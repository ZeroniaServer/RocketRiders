# dialog_name, trigger_input_id, item_loot_table, item_plain_name_singular, item_plain_name_plural, color

$data modify storage rocketriders:nomicon dialogs.$(dialog_name).dialog.body append value \
{\
  "type": "minecraft:item",\
  "item": {\
    "id": "minecraft:barrier"\
  },\
  "description": [\
    "",\
    {\
      "text": "$(item_plain_name_singular)",\
      "color": "$(color)",\
      "bold": true\
    },\
    [\
        {\
          "text": "\n",\
          "color": "white"\
        },\
        {\
          "text": "[4x]",\
          "hover_event": {\
            "action": "show_text",\
            "value": [\
                {\
                    "text": "Click to give yourself ",\
                    "color": "white"\
                },\
                {\
                    "text": "4",\
                    "bold": true\
                },\
                " $(item_plain_name_singular)"\
            ]\
          },\
          "click_event": {\
            "action": "run_command",\
            "command": "/trigger nomicon set $(trigger_input_id)01"\
          }\
        },\
        " ",\
        {\
          "text": "[8x]",\
          "hover_event": {\
            "action": "show_text",\
            "value": [\
                {\
                    "text": "Click to give yourself ",\
                    "color": "white"\
                },\
                {\
                    "text": "8",\
                    "bold": true\
                },\
                " $(item_plain_name_plural)"\
            ]\
          },\
          "click_event": {\
            "action": "run_command",\
            "command": "/trigger nomicon set $(trigger_input_id)02"\
          }\
        },\
        " ",\
        {\
          "text": "[16x]",\
          "hover_event": {\
            "action": "show_text",\
            "value": [\
                {\
                    "text": "Click to give yourself ",\
                    "color": "white"\
                },\
                {\
                    "text": "16",\
                    "bold": true\
                },\
                " $(item_plain_name_plural)"\
            ]\
          },\
          "click_event": {\
            "action": "run_command",\
            "command": "/trigger nomicon set $(trigger_input_id)04"\
          }\
        },\
        " ",\
        {\
          "text": "[64x]",\
          "hover_event": {\
            "action": "show_text",\
            "value": [\
                {\
                    "text": "Click to give yourself ",\
                    "color": "white"\
                },\
                {\
                    "text": "64",\
                    "bold": true\
                },\
                " $(item_plain_name_plural)"\
            ]\
          },\
          "click_event": {\
            "action": "run_command",\
            "command": "/trigger nomicon set $(trigger_input_id)16"\
          }\
        }\
    ],\
    "\n                               "\
  ],\
  "show_decorations": false,\
  "width": 20,\
  "height": 20\
}

item replace block 0 184 -16 container.0 with air
$loot replace block 0 184 -16 container.0 loot $(item_loot_table)
$data modify storage rocketriders:nomicon loaded_item set value {id:"minecraft:barrier",components:{"minecraft:item_name":"$(item_plain_name_singular)","minecraft:lore":[{text:"Invalid loot table!",bold:true,color:"red",italic:false},{text:"The loot table was missing or resulted in no item.",color:"gray",italic:false}]}}
data modify storage rocketriders:nomicon loaded_item set from block 0 184 -16 Items[{Slot:0b}]
data remove storage rocketriders:nomicon loaded_item.Slot
$data modify storage rocketriders:nomicon dialogs.$(dialog_name).dialog.body[-1].item set from storage rocketriders:nomicon loaded_item
