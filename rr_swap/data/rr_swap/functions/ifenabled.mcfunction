#special item disabling
tag @e[tag=Selection] add normalLocked
tag @e[tag=Selection,tag=rngNormal] add normalWasOn
tag @e[tag=Selection,tag=rngSplash] add splashWasOn
tag @e[tag=Selection] remove rngSplash
tag @e[tag=Selection,tag=rngCanopy] add canopyWasOn
tag @e[tag=Selection] remove rngCanopy
tag @e[tag=Selection,tag=rngNova] add novaWasOn
tag @e[tag=Selection] remove rngNova
tag @e[tag=Selection,tag=rngRift] add riftWasOn
tag @e[tag=Selection] remove rngRift
tag @e[tag=Selection,tag=rngJbuster] add jbusterWasOn
tag @e[tag=Selection] remove rngJbuster
execute unless entity @s[tag=EditedSettings] run function rr_swap:arenaclear/customizer

#management
execute unless score @s SetGamemode = @e[tag=rr_swap,limit=1] gamemodeID run function rr_swap:disable
data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"dark_purple","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection] SetGamemode 1"}}',Text2: '{"text":"Swap","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection] refreshsigns 1"}}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"execute as @s run function rr_swap:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#game
function rr_swap:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_swap:game/ingame
execute if entity @s[tag=GameEnd] run function rr_swap:game/gameend
function everytick:saberfix
function everytick:no_drop
function everytick:team_balance

#reset
execute if entity @e[tag=PlacerClear,tag=Cleared] run function rr_swap:arenaclear/baseplacement
execute if entity @e[tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"}]
execute if entity @e[tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Swap ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Swap is a strange gamemode. Teams start with a 'dark side' or a 'light side', every minute the game will swap around the sides. Items may do different things depending on the side they're on, and you get different missiles on different sides.","color":"white"}]}}]
execute if entity @e[tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
tag @e[tag=PlacerClear,tag=Cleared] add BasePlaced