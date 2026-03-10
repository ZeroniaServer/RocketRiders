#management
tag @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_sandbox:arenaclear/customizer
execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] gamemodeID run function rr_sandbox:disable

#tips
function rr_sandbox:tip

#game
function rr_sandbox:game/gamestart
execute if predicate game:phase/match run function rr_sandbox:game/while_phase/match
execute if predicate game:phase/match/play run function rr_sandbox:game/while_phase/match/play
execute if predicate game:phase/match/closing run function rr_sandbox:game/while_phase/match/closing

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function game:edited_settings
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Game Mode: ","color":"#ca00ca"},{"text":"Sandbox","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Mess around to your heart's content!\n","color":"yellow"},{"text":"- Use the "},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to obtain every item in the game\n"},{"text":"- Items can stack and there is no hotbar limit\n"},{"text":"- A match still ends when the portals break\n"},{"text":"- Only one player needs to join!\n"},{"text":"Items:","color":"aqua"},{"text":" Every. Single. One.","italic":true}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tag @s add sandboxLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if predicate game:joinable_match_phase as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if predicate game:joinable_match_phase run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Game Mode: ","color":"#ca00ca"},{"text":"Sandbox","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Mess around to your heart's content!\n","color":"yellow"},{"text":"- Use the "},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to obtain every item in the game\n"},{"text":"- Items can stack and there is no hotbar limit\n"},{"text":"- A match still ends when the portals break\n"},{"text":"- Only one player needs to join!\n"},{"text":"Items:","color":"aqua"},{"text":" Every. Single. One.","italic":true}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if predicate game:joinable_match_phase if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
tag @a[x=0,tag=informMe] remove informMe