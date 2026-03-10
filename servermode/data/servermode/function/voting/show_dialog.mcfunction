data modify storage rocketriders:main voting.dialog set value {\
  "type": "minecraft:multi_action",\
  "title": "Voting",\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": ["",{"text":"Rocket ","bold":true,"color":"blue","extra":[{"text":"Riders","bold":true,"color":"gold"},{"text":" | ","color":"dark_gray"},{"text":"C","bold":true,"color":"dark_aqua"},{"text":"K","bold":true,"color":"gold"},{"text":" Server Mode: ","bold":true,"color":"light_purple"}],"click_event":{"action":"open_url","url":"https://www.planetminecraft.com/project/rocket-riders/"},"hover_event":{"action":"show_text","value":[{"text":"Here on ","color":"white"},{"text":"Cube","bold":true,"color":"dark_aqua"},{"text":"Krowd","bold":true,"color":"gold"},{"text":" we use a modified version of ","color":"white"},{"text":"Rocket ","bold":true,"color":"blue"},{"text":"Riders","bold":true,"color":"gold"},{"text":". Players vote to select the next game mode and map design instead of using the Modification Room.\n","color":"white"},"\n",{"text":"Available Game Modes:","color":"gray"},"\n",{"text":"- Normal Mode","color":"green"},"\n",{"text":"- Powerups Mode","color":"green"},"\n",{"text":"- Swap Mode","color":"green"},"\n",{"text":"- Capture The Flag","color":"green"},"\n",{"text":"- Crusade Mode","color":"green"},"\n","\n",{"text":"Unavailable Game Modes:","color":"gray"},"\n",{"text":"- 1v1 Duel Mode ","color":"red"},{"text":"(playable in /rr3 or /rr4)","color":"gray"},"\n",{"text":"- Chase Mode ","color":"red"},"\n",{"text":"- Sandbox Mode ","color":"red"},"\n\n",{"text":"(To get access to unavailable ","color":"white"},{"text":"Rocket ","bold":true,"color":"blue"},{"text":"Riders","bold":true,"color":"gold"},{"text":" features, go to ","color":"white"},{"text":"/rr0","bold":true,"color":"aqua"},{"text":" (","color":"gray"},{"text":"[","color":"dark_gray"},{"text":"M","color":"white"},{"text":"]","color":"dark_gray"},{"text":"+/","color":"gray"},{"text":"Donators","color":"yellow"},{"text":" only)","color":"gray"},{"text":" or ","color":"white"},{"text":"click now","color":"dark_aqua","underlined":true},{"text":" to visit the public download page!)","color":"white"}]}},{"text":"\n"},{"text":"Click below or use ","color":"dark_purple"},{"text":"/vote ","color":"light_purple","bold":true},{"text":"to vote for game modes and maps:","color":"dark_purple"}]\
  },\
  "after_action": "close",\
  "columns": 1,\
  "actions": [\
    {\
      "label": "Normal Mode",\
      "width": 200,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger VoteServerMode set 1"\
      }\
    },\
    {\
      "label": "Powerups Mode",\
      "width": 200,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger VoteServerMode set 2"\
      }\
    },\
    {\
      "label": "Swap Mode",\
      "width": 200,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger VoteServerMode set 3"\
      }\
    },\
    {\
      "label": "Capture The Flag",\
      "width": 200,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger VoteServerMode set 4"\
      }\
    },\
    {\
      "label": "Crusade Mode",\
      "width": 200,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger VoteServerMode set 5"\
      }\
    },\
    {\
      "label": "Chase Mode",\
      "width": 200,\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger VoteServerMode set 6"\
      }\
    }\
  ]\
}

function custom:resolve_text_component {text_component:[{color:"gold",text:"Normal Mode"},{color:"#494949",shadow_color:0,text:" + "},{color:"#65cecf","selector":"@e[x=0,tag=Maps,tag=ServermodeSet1,limit=1]"}],write_to:"storage rocketriders:main voting.dialog.actions[0].label"}
function custom:resolve_text_component {text_component:[{color:"gold",text:"Powerups Mode"},{color:"#494949",shadow_color:0,text:" + "},{color:"#65cecf","selector":"@e[x=0,tag=Maps,tag=ServermodeSet2,limit=1]"}],write_to:"storage rocketriders:main voting.dialog.actions[1].label"}
function custom:resolve_text_component {text_component:[{color:"gold",text:"Swap Mode"},{color:"#494949",shadow_color:0,text:" + "},{color:"#65cecf","selector":"@e[x=0,tag=Maps,tag=ServermodeSet3,limit=1]"}],write_to:"storage rocketriders:main voting.dialog.actions[2].label"}
function custom:resolve_text_component {text_component:[{color:"gold",text:"Capture The Flag"},{color:"#494949",shadow_color:0,text:" + "},{color:"#65cecf","selector":"@e[x=0,tag=Maps,tag=ServermodeSet4,limit=1]"}],write_to:"storage rocketriders:main voting.dialog.actions[3].label"}
function custom:resolve_text_component {text_component:[{color:"gold",text:"Crusade Mode"},{color:"#494949",shadow_color:0,text:" + "},{color:"#65cecf","selector":"@e[x=0,tag=Maps,tag=ServermodeSet5,limit=1]"}],write_to:"storage rocketriders:main voting.dialog.actions[4].label"}
function custom:resolve_text_component {text_component:[{color:"gold",text:"Chase Mode"},{color:"#494949",shadow_color:0,text:" + "},{color:"#65cecf","selector":"@e[x=0,tag=Maps,tag=ServermodeSet6,limit=1]"}],write_to:"storage rocketriders:main voting.dialog.actions[5].label"}

execute unless entity @e[limit=1,x=0,type=marker,tag=Set6] run data remove storage rocketriders:main voting.dialog.actions[5]

function custom:show_dialog with storage rocketriders:main voting
