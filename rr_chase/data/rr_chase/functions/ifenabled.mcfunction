#management
execute if entity @s[tag=SignsRefreshed] run function rr_chase:arenaclear/customizer
execute unless score @s SetGamemode = @e[type=armor_stand,tag=rr_chase,limit=1] gamemodeID run function rr_chase:disable

#tips
execute unless entity @s[tag=SMCustom] run function rr_chase:tip

#game
function rr_chase:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_chase:game/ingame
execute if entity @s[tag=GameEnd] run function rr_chase:game/gameend
function everytick:no_drop

#disable yellow
tag @a remove JoinYellow
execute as @a[team=Yellow] run function custom:leave

#reset
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] run function rr_chase:arenaclear/baseplacement
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a remove informMe
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Chase","color":"light_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Touch Finish Flag on Yellow base\n","color":"yellow"},{"text":"- Race against your teammates to Yellow base\n"},{"text":"- Attack your teammates to stop them (friendly fire)\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Arrows given upon join/death (four maximum)\n"},{"text":"- Vortex and Nova Rocket both work against teammates\n"},{"text":"- Obsidian stairs lead up to Finish Flag\n"},{"text":"- No portals at bases"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add chaseLast
tag @e[type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Chase","color":"light_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Touch Finish Flag on Yellow base\n","color":"yellow"},{"text":"- Race against your teammates to Yellow base\n"},{"text":"- Attack your teammates to stop them (friendly fire)\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Arrows given upon join/death (four maximum)\n"},{"text":"- Vortex and Nova Rocket both work against teammates\n"},{"text":"- Obsidian stairs lead up to Finish Flag\n"},{"text":"- No portals at bases"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[tag=informMe] run function gamemodes:informrepeat
tag @a[tag=informMe] remove informMe