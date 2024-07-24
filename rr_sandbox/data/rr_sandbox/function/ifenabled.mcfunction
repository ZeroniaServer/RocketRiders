#management
tag @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_sandbox:arenaclear/customizer
execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] gamemodeID run function rr_sandbox:disable

#tips
execute unless entity @s[tag=SMCustom] run function rr_sandbox:tip

#game
function rr_sandbox:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_sandbox:game/ingame
execute if entity @s[scores={SDtime=1}] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run function rr_sandbox:items/givenomicon
execute if entity @s[tag=GameEnd] run function rr_sandbox:game/gameend
execute as @e[x=0,type=item] run function everytick:no_drop

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function rr_sandbox:arenaclear/baseplacement
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Sandbox","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Mess around to your heart's content!\n","color":"yellow"},{"text":"- Use the "},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to obtain every item in the game\n"},{"text":"- Items can stack and there is no hotbar limit\n"},{"text":"- The game still ends when the portals break\n"},{"text":"- Only one player needs to join!\n"},{"text":"Items:","color":"aqua"},{"text":" Every. Single. One.","italic":true}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add sandboxLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Sandbox","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Mess around to your heart's content!\n","color":"yellow"},{"text":"- Use the "},{"text":"Rocket","color":"blue","bold":true,"italic":false},{"text":"-","color":"gray","bold":true,"italic":false},{"text":"nomicon","color":"gold","bold":true,"italic":false},{"text":" to obtain every item in the game\n"},{"text":"- Items can stack and there is no hotbar limit\n"},{"text":"- The game still ends when the portals break\n"},{"text":"- Only one player needs to join!\n"},{"text":"Items:","color":"aqua"},{"text":" Every. Single. One.","italic":true}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[x=0,tag=informMe] run function gamemodes:informrepeat
tag @a[x=0,tag=informMe] remove informMe