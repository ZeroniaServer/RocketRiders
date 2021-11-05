#management
execute if entity @s[tag=SignsRefreshed] run function rr_sandbox:arenaclear/customizer
execute unless score @s SetGamemode = @e[type=armor_stand,tag=rr_sandbox,limit=1] gamemodeID run function rr_sandbox:disable

#tips
execute unless entity @s[tag=SMCustom] run function rr_sandbox:tip

#game
function rr_sandbox:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_sandbox:game/ingame
execute if entity @s[tag=GameEnd] run function rr_sandbox:game/gameend
function everytick:no_drop

#reset
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] run function rr_sandbox:arenaclear/baseplacement
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a remove informMe
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Normal","color":"light_purple","hoverEvent":{"action":"show_text","value":["",{"text":"In Sandbox Mode, players on each team receive items every so often to help them construct missiles and fly them out to the enemy base. The goal is still to destroy the enemy base and portal while protecting your own, but this time, you do it with your own missiles. (Note that players may not ride their missiles in this mode in order to prevent bridging.)","color":"white"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add sandboxLast
tag @e[type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Normal","color":"light_purple","hoverEvent":{"action":"show_text","value":["",{"text":"In Sandbox Mode, players on each team receive items every so often to help them construct missiles and fly them out to the enemy base. The goal is still to destroy the enemy base and portal while protecting your own, but this time, you do it with your own missiles. (Note that players may not ride their missiles in this mode in order to prevent bridging.)","color":"white"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[tag=informMe] run function gamemodes:informrepeat
tag @a[tag=informMe] remove informMe