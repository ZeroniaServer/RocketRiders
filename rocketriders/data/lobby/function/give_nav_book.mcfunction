$loot replace entity @s hotbar.4 loot {\
  "pools": [\
    {\
      "rolls": 1,\
      "entries": [\
        {\
          "type": "minecraft:item",\
          "name": "minecraft:written_book",\
          "functions": [\
            {\
              "function": "minecraft:set_components",\
              "components": {\
                "minecraft:item_model": "minecraft:knowledge_book",\
                "minecraft:item_name": {\
                  "translate": "Navigation Book",\
                  "bold": true,\
                  "color": "dark_green"\
                },\
                "minecraft:lore": [\
                  {\
                    "translate": "A helpful book used to gain"\
                  },\
                  {\
                    "translate": "information and teleport"\
                  },\
                  {\
                    "translate": "around the Lobby."\
                  }\
                ],\
                "minecraft:custom_data": {\
                  "navbook": true\
                },\
                "minecraft:written_book_content": {\
                  "title": "",\
                  "author": "Zeronia"\
                }\
              }\
            },\
            {\
              "function": "minecraft:set_written_book_pages",\
              "pages": [\
                [\
                  "",\
                  {\
                    "text": "   Rocket",\
                    "color": "blue",\
                    "bold": true\
                  },\
                  {\
                    "text": " Riders",\
                    "color": "gold",\
                    "bold": true\
                  },\
                  "\n      ",\
                  {\
                    "text": "Lobby Warps",\
                    "underlined": true,\
                    "color": "light_purple"\
                  },\
                  "\n",\
                  {\
                    "text": "   (Click to teleport)",\
                    "color": "gray"\
                  },\
                  "\n\n",\
                  {\
                    "text": "* ",\
                    "color": "gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Lobby.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 1"\
                    }\
                  },\
                  {\
                    "text": "Lobby",\
                    "color": "dark_purple",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Lobby.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 1"\
                    }\
                  },\
                  "\n",\
                  {\
                    "text": "* ",\
                    "color": "gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Blue join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 3"\
                    }\
                  },\
                  {\
                    "text": "Join",\
                    "color": "dark_purple",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Blue join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 3"\
                    }\
                  },\
                  {\
                    "text": " ",\
                    "color": "gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Blue join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 3"\
                    }\
                  },\
                  {\
                    "text": "Blue",\
                    "color": "blue",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Blue join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 3"\
                    }\
                  },\
                  "\n",\
                  {\
                    "text": "* ",\
                    "color": "gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Yellow join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 4"\
                    }\
                  },\
                  {\
                    "text": "Join",\
                    "color": "dark_purple",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Yellow join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 4"\
                    }\
                  },\
                  {\
                    "text": " ",\
                    "color": "gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Yellow join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 4"\
                    }\
                  },\
                  {\
                    "text": "Yellow",\
                    "color": "gold",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Yellow join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 4"\
                    }\
                  },\
                  "\n",\
                  {\
                    "text": "*",\
                    "color": "gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Spectator join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 5"\
                    }\
                  },\
                  {\
                    "text": " ",\
                    "color": "gold",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Spectator join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 5"\
                    }\
                  },\
                  {\
                    "text": "Join",\
                    "color": "dark_purple",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Spectator join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 5"\
                    }\
                  },\
                  {\
                    "text": " ",\
                    "color": "gold",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Spectator join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 5"\
                    }\
                  },\
                  {\
                    "text": "Spectator",\
                    "color": "dark_gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Spectator join pad.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 5"\
                    }\
                  },\
                  {\
                    "text": "",\
                    "extra": $(modroom)\
                  },\
                  "\n",\
                  {\
                    "text": "* ",\
                    "color": "gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Missile Display Area.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 6"\
                    }\
                  },\
                  {\
                    "text": "Missile Display Area",\
                    "color": "dark_purple",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Missile Display Area.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 6"\
                    }\
                  },\
                  "\n",\
                  {\
                    "text": "*",\
                    "color": "gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Parkour Area.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 7"\
                    }\
                  },\
                  {\
                    "text": " Parkour Area",\
                    "color": "dark_purple",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to teleport to the Parkour Area.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger LobbyWarp set 7"\
                    }\
                  },\
                  "\n\n      ",\
                  {\
                    "text": "[How to Play]",\
                    "color": "dark_gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": [\
                        "",\
                        {\
                          "text": "Click to learn how to play Rocket Riders.",\
                          "italic": true,\
                          "color": "white"\
                        }\
                      ]\
                    },\
                    "click_event": {\
                      "action": "change_page",\
                      "page": 2\
                    }\
                  },\
                  "\n  ",\
                  {\
                    "text": "[Settings]",\
                    "color": "dark_gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to configure player settings.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "change_page",\
                      "page": 3\
                    }\
                  },\
                  " ",\
                  {\
                    "text": "[Credits]",\
                    "color": "dark_gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to see credits.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "change_page",\
                      "page": 4\
                    }\
                  }\
                ],\
                [\
                  "",\
                  {\
                    "text": "   Rocket",\
                    "color": "blue",\
                    "bold": true\
                  },\
                  {\
                    "text": " Riders",\
                    "color": "gold",\
                    "bold": true\
                  },\
                  "\n       ",\
                  {\
                    "text": "How to Play",\
                    "underlined": true,\
                    "color": "light_purple"\
                  },\
                  $(description)\
                ],\
                [\
                  "",\
                  {\
                    "text": "   Rocket",\
                    "color": "blue",\
                    "bold": true\
                  },\
                  {\
                    "text": " Riders",\
                    "color": "gold",\
                    "bold": true\
                  },\
                  "\n         ",\
                  {\
                    "text": "Settings",\
                    "underlined": true,\
                    "color": "light_purple"\
                  },\
                  "\n",\
                  {\
                    "text": "    (Click to toggle)",\
                    "color": "gray"\
                  },\
                  "\n\n      ",\
                  {\
                    "text": "[Ingame Tips]",\
                    "color": "dark_gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to toggle ingame tips.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger toggleTips set 1"\
                    }\
                  },\
                  {\
                    "text": "",\
                    "extra": $(parkourtips)\
                  },\
                  {\
                    "text": "\n\n      ",\
                    "bold": true\
                  },\
                  {\
                    "text": "[Particles]",\
                    "color": "dark_gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to toggle particles from Rocket Riders gameplay elements.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger toggleParticles set 1"\
                    }\
                  },\
                  {\
                    "text": "",\
                    "extra": $(default_spell_setting)\
                  },\
                  {\
                    "text": "\n\n ",\
                    "bold": true\
                  },\
                  "  ",\
                  {\
                    "text": "[Auto-Fill Hotbar]",\
                    "color": "dark_gray",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to toggle automatic hotbar filling.",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "run_command",\
                      "command": "/trigger toggleHotbarAutoFill set 1"\
                    }\
                  }\
                ],\
                [\
                  "",\
                  {\
                    "text": "   Rocket",\
                    "color": "blue",\
                    "bold": true\
                  },\
                  {\
                    "text": " Riders",\
                    "color": "gold",\
                    "bold": true\
                  },\
                  "\n         ",\
                  {\
                    "text": "Credits",\
                    "underlined": true,\
                    "color": "light_purple"\
                  },\
                  "\n\n",\
                  {\
                    "text": "This game was made in ",\
                    "color": "dark_gray"\
                  },\
                  {\
                    "text": "8+ years",\
                    "color": "light_purple"\
                  },\
                  {\
                    "text": "!",\
                    "color": "dark_gray"\
                  },\
                  "\n",\
                  {\
                    "text": "\nBrought to you by:\n- ",\
                    "color": "dark_gray"\
                  },\
                  {\
                    "text": "Evtema3",\
                    "color": "red",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to check out Evtema3!",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "open_url",\
                      "url": "https://www.youtube.com/Evtema3"\
                    }\
                  },\
                  "\n",\
                  {\
                    "text": "- ",\
                    "color": "dark_gray"\
                  },\
                  {\
                    "text": "YZEROgame",\
                    "color": "#00DB19",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to check out YZEROgame!",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "open_url",\
                      "url": "https://www.youtube.com/channel/UC7-j3tkiF9PeT2FVbI8WR4A"\
                    }\
                  },\
                  "\n",\
                  {\
                    "text": "- ",\
                    "color": "dark_gray"\
                  },\
                  {\
                    "text": "Chronos22",\
                    "color": "#0248e9",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to check out Chronos22!",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "open_url",\
                      "url": "https://www.youtube.com/channel/UCK1WeblW__mSmkjV4jJ5h-Q"\
                    }\
                  },\
                  "\n",\
                  {\
                    "text": "- ",\
                    "color": "dark_gray"\
                  },\
                  {\
                    "text": "DorkOrc",\
                    "color": "#FF9900",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to check out DorkOrc!",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "open_url",\
                      "url": "https://github.com/DorkOrc"\
                    }\
                  },\
                  "\n",\
                  {\
                    "text": "- ",\
                    "color": "dark_gray"\
                  },\
                  {\
                    "text": "Cube",\
                    "color": "dark_aqua",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to check out CubeKrowd!",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "open_url",\
                      "url": "https://cubekrowd.net/"\
                    }\
                  },\
                  {\
                    "text": "Krowd",\
                    "color": "gold",\
                    "hover_event": {\
                      "action": "show_text",\
                      "value": {\
                        "text": "Click to check out CubeKrowd!",\
                        "italic": true\
                      }\
                    },\
                    "click_event": {\
                      "action": "open_url",\
                      "url": "https://cubekrowd.net/"\
                    }\
                  },\
                  "\n",\
                  {\
                    "text": "- ",\
                    "color": "dark_gray"\
                  },\
                  {\
                    "text": "All ",\
                    "color": "dark_purple"\
                  },\
                  {\
                    "text": "80+",\
                    "underlined": true,\
                    "color": "gold"\
                  },\
                  {\
                    "text": " playtesters",\
                    "color": "dark_purple"\
                  }\
                ]\
              ],\
              "mode": "replace_all"\
            }\
          ]\
        }\
      ]\
    }\
  ]\
}