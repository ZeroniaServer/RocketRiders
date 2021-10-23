#management
execute unless score @s SetGamemode = @e[type=armor_stand,tag=rr_normal,limit=1] gamemodeID run function rr_normal:disable
data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection,scores={refreshsigns=..0}] SetGamemode 1"}}',Text2:'{"text":"Normal","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] refreshsigns 1"}}'}
execute if entity @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function rr_normal:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

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
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Normal ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"- Ride missiles to enemy base to destroy portals\n"},{"text":"- Protect your own team's portals\n"},{"text":"Items:","color":"aqua"},{"text":" Various missiles and utilities"}]}}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add normalLast
tag @e[type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Normal ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"- Ride missiles to enemy base to destroy portals\n"},{"text":"- Protect your own team's portals\n"},{"text":"Items:","color":"aqua"},{"text":" Various missiles and utilities"}]}}]
execute if entity @s[tag=EditedSettings] if entity @a[tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,scores={servermode=1}] as @a[tag=informMe] run function servermode:notifyitems
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[tag=informMe] run function gamemodes:informrepeat
tag @a[tag=informMe] remove informMe