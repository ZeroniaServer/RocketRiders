#management
execute if entity @s[tag=SignsRefreshed] run function rr_normal:arenaclear/customizer
execute unless score @s SetGamemode = @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID run function rr_normal:disable

#tips
execute unless entity @s[tag=SMCustom] run function rr_normal:tip

#game
function rr_normal:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_normal:game/ingame
execute if entity @s[tag=GameEnd] run function rr_normal:game/gameend
function everytick:no_drop

#reset
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] run function rr_normal:arenaclear/baseplacement
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a remove informMe
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Normal","color":"light_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"- Ride missiles to enemy base to destroy portals\n"},{"text":"- Protect your own team's portals\n"},{"text":"Items:","color":"aqua"},{"text":" Various missiles and utilities"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add normalLast
tag @e[type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Normal","color":"light_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"- Ride missiles to enemy base to destroy portals\n"},{"text":"- Protect your own team's portals\n"},{"text":"Items:","color":"aqua"},{"text":" Various missiles and utilities"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,scores={servermode=1}] as @a[tag=informMe] run function servermode:notifyitems
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[tag=informMe] run function gamemodes:informrepeat
tag @a[tag=informMe] remove informMe