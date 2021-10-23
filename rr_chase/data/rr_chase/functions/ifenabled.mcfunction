#enable arrows
tag @s[tag=!rngArrows] add arrowsWasOff
tag @s add rngArrows
tag @s[tag=!rngUtil] add utilWasOff
tag @s add rngUtil
execute unless entity @s[tag=EditedSettings] run function rr_chase:arenaclear/customizer

#management
execute unless score @s SetGamemode = @e[type=armor_stand,tag=rr_chase,limit=1] gamemodeID run function rr_chase:disable
data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection,scores={refreshsigns=..0}] SetGamemode 1"}}',Text2:'{"text":"Chase","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] refreshsigns 1"}}'}
execute if entity @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function rr_chase:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

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
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Chase ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Touch Finish Flag on Yellow base\n","color":"yellow"},{"text":"- Race against your teammates to Yellow base\n"},{"text":"- Attack your teammates to stop them (friendly fire)\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Arrows given upon join/death (four maximum)\n"},{"text":"- Vortex and Nova Rocket both work against teammates\n"},{"text":"- Obsidian stairs lead up to Finish Flag\n"},{"text":"- No portals at bases"}]}}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add chaseLast
tag @e[type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Chase ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Touch Finish Flag on Yellow base\n","color":"yellow"},{"text":"- Race against your teammates to Yellow base\n"},{"text":"- Attack your teammates to stop them (friendly fire)\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Arrows given upon join/death (four maximum)\n"},{"text":"- Vortex and Nova Rocket both work against teammates\n"},{"text":"- Hold up to three Canopies at a time\n"},{"text":"- Obsidian stairs lead up to Finish Flag\n"},{"text":"- No portals at bases"}]}}]
execute if entity @s[tag=EditedSettings] if entity @a[tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[tag=informMe] run function gamemodes:informrepeat
tag @a[tag=informMe] remove informMe