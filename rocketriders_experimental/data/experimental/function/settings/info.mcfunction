data modify storage rocketriders:main settings.dialog set value {\
  "type": "minecraft:notice",\
  "title": "Rocket Riders",\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": [\
      "\n",\
      {\
        "color": "gray",\
        "text": "Rocket Riders Version: "\
      },\
      "Unknown",\
      "\n\n\n",\
      {\
        "color": "#FFFFFF",\
        "shadow_color": 0,\
        "player": {\
          "properties": [\
            {\
              "name": "textures",\
              "value": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmY1NTBhMGVmNmViOGFjN2U1OTY5ZTNiMWVkY2VmMmUyMTY5OGMwMmU4NDYzNjRlZGZhYTNkYWIzMDI5OTRlIn19fQ=="\
            }\
          ]\
        }\
      },\
      " ",\
      {\
        "color": "#5865F2",\
        "underlined": true,\
        "text": "Join our Discord server",\
        "hover_event": {\
          "action": "show_text",\
          "value": {\
            "color": "#5865F2",\
            "text": "Click to join our Discord community"\
          }\
        },\
        "click_event": {\
          "action": "open_url",\
          "url": "https://discord.gg/X9bZgw7"\
        }\
      },\
      " to report bugs and submit feedback!"\
    ],\
    "width": 600\
  },\
  "pause": false,\
  "action": {\
    "label": {\
      "translate": "gui.back"\
    },\
    "action": {\
      "type": "minecraft:show_dialog",\
      "dialog": "experimental:settings_menu"\
    }\
  }\
}

function custom:resolve_text_component {text_component:[{storage:"rocketriders:version",nbt:"name",interpret:true}],write_to:"storage rocketriders:main settings.dialog.body.contents[2]"}

function custom:player/show_dialog with storage rocketriders:main settings
