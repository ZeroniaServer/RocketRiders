#management
tag @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_normal:arenaclear/customizer
execute unless score @s SetGamemode = @e[predicate=custom:indimension,type=armor_stand,tag=rr_normal,limit=1] gamemodeID run function rr_normal:disable

#tips
execute unless entity @s[tag=SMCustom] run function rr_normal:tip

#game
function rr_normal:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_normal:game/ingame
execute if entity @s[tag=GameEnd] run function rr_normal:game/gameend
function everytick:no_drop

#reset
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] run function rr_normal:arenaclear/baseplacement
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a[predicate=custom:indimension] remove informMe
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a[predicate=custom:indimension] at @s run function arenaclear:notifystart
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a[predicate=custom:indimension] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Normal","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"- Ride missiles to enemy base to destroy portals\n"},{"text":"- Protect your own team's portals\n"},{"text":"Items:","color":"aqua"},{"text":" Various missiles and utilities"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add normalLast
tag @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[predicate=custom:indimension,tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[predicate=custom:indimension,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Normal","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"- Ride missiles to enemy base to destroy portals\n"},{"text":"- Protect your own team's portals\n"},{"text":"Items:","color":"aqua"},{"text":" Various missiles and utilities"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[predicate=custom:indimension,tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,scores={servermode=1}] as @a[predicate=custom:indimension,tag=informMe] run function servermode:notifyitems
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[predicate=custom:indimension,tag=informMe] run function gamemodes:informrepeat
tag @a[predicate=custom:indimension,tag=informMe] remove informMe