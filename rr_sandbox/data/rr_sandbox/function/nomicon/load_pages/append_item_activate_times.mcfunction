# dialog_name, 30_seconds_trigger_input_id, permanent_trigger_input_id, deactivate_trigger_input_id, item_loot_table, item_plain_name, color

$data modify storage rocketriders:nomicon dialogs.$(dialog_name).dialog.body append value \
{\
  "type": "minecraft:item",\
  "item": {\
    "id": "minecraft:barrier"\
  },\
  "description": [\
    "",\
    {\
      "text": "$(item_plain_name)",\
      "color": "$(color)",\
      "bold": true\
    },\
    [\
        {\
          "text": "\n",\
          "color": "white"\
        },\
        {\
          "text": "[30 Seconds]",\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
                "text": "Click to activate $(item_plain_name) for 30 seconds",\
                "color": "white"\
              }\
          },\
          "click_event": {\
            "action": "run_command",\
            "command": "/trigger nomicon set $(30_seconds_trigger_input_id)01"\
          }\
        },\
        " ",\
        {\
          "text": "[On]",\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
                "text": "Click to activate $(item_plain_name)",\
                "color": "white"\
              }\
          },\
          "click_event": {\
            "action": "run_command",\
            "command": "/trigger nomicon set $(permanent_trigger_input_id)01"\
          }\
        },\
        " ",\
        {\
          "text": "[Off]",\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
                "text": "Click to deactivate $(item_plain_name)",\
                "color": "white"\
              }\
          },\
          "click_event": {\
            "action": "run_command",\
            "command": "/trigger nomicon set $(deactivate_trigger_input_id)01"\
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
$data modify storage rocketriders:nomicon loaded_item set value {id:"minecraft:barrier",components:{"minecraft:item_name":"$(item_plain_name)","minecraft:lore":[{text:"Invalid loot table!",bold:true,color:"red",italic:false},{text:"The loot table was missing or resulted in no item.",color:"gray",italic:false}]}}
data modify storage rocketriders:nomicon loaded_item set from block 0 184 -16 Items[{Slot:0b}]
data remove storage rocketriders:nomicon loaded_item.Slot
$data modify storage rocketriders:nomicon dialogs.$(dialog_name).dialog.body[-1].item set from storage rocketriders:nomicon loaded_item
