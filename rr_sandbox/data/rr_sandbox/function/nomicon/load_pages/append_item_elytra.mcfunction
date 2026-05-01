# dialog_name, normal_trigger_input_id, unbreakable_trigger_input_id, deactivate_trigger_input, color, include_in_full_list

$data modify storage rocketriders:nomicon dialogs.$(dialog_name).dialog.body append value \
{\
  "__include_in_full_list__": $(include_in_full_list)b,\
  "type": "minecraft:item",\
  "item": {\
    "id": "minecraft:barrier"\
  },\
  "description": [\
    "",\
    {\
      "text": "Elytra",\
      "color": "$(color)",\
      "bold": true\
    },\
    [\
        {\
          "text": "\n",\
          "color": "white"\
        },\
        {\
          "text": "[Normal]",\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
                "text": "Click to activate Elytra",\
                "color": "white"\
              }\
          },\
          "click_event": {\
            "action": "run_command",\
            "command": "/trigger nomicon set $(normal_trigger_input_id)01"\
          }\
        },\
        " ",\
        {\
          "text": "[Unbreakable]",\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
                "text": "Click to activate unbreakable Elytra",\
                "color": "white"\
              }\
          },\
          "click_event": {\
            "action": "run_command",\
            "command": "/trigger nomicon set $(unbreakable_trigger_input_id)01"\
          }\
        },\
        " ",\
        {\
          "text": "[Off]",\
          "hover_event": {\
            "action": "show_text",\
            "value": {\
                "text": "Click to deactivate Elytra",\
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
loot replace block 0 184 -16 container.0 loot items:item/elytra
data modify storage rocketriders:nomicon loaded_item set value {id:"minecraft:barrier",components:{"minecraft:item_name":"Elytra","minecraft:lore":[{text:"Invalid loot table!",bold:true,color:"red",italic:false},{text:"The loot table was missing or resulted in no item.",color:"gray",italic:false}]}}
data modify storage rocketriders:nomicon loaded_item set from block 0 184 -16 Items[{Slot:0b}]
data remove storage rocketriders:nomicon loaded_item.Slot
$data modify storage rocketriders:nomicon dialogs.$(dialog_name).dialog.body[-1].item set from storage rocketriders:nomicon loaded_item
