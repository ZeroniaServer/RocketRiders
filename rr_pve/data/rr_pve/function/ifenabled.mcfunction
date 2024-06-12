#management
tag @e[x=0,type=armor_stand,tag=rr_pve,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_pve:arenaclear/customizer
execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_pve,limit=1] gamemodeID run function rr_pve:disable

#tips
execute unless entity @s[tag=SMCustom] run function rr_pve:tip

#game
function rr_pve:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_pve:game/ingame
execute if entity @s[tag=GameEnd] run function rr_pve:game/gameend
execute as @e[x=0,type=item] run function everytick:no_drop

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function rr_pve:arenaclear/baseplacement
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"PVE","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"- Ride missiles to enemy base to destroy portals\n"},{"text":"- Protect your own team's portals\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Yellow team consists of 12 artificially intelligent Bots\n"},{"text":"- Bots can spawn and ride missiles to your base\n"},{"text":"- Bots can fire arrows at you if you're in sight\n"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add pveLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"PVE","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"- Ride missiles to enemy base to destroy portals\n"},{"text":"- Protect your own team's portals\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Yellow team consists of 12 artificially intelligent Bots\n"},{"text":"- Bots can spawn and ride missiles to your base\n"},{"text":"- Bots can fire arrows at you if you're in sight\n"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[x=0,tag=informMe] run function gamemodes:informrepeat
tag @a[x=0,tag=informMe] remove informMe