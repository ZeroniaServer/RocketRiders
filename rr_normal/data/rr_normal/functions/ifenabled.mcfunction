#management
execute unless score @s SetGamemode = @e[tag=rr_normal,limit=1] gamemodeID run function rr_normal:disable
data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"dark_purple","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection] SetGamemode 1"}}',Text2: '{"text":"Normal","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection] refreshsigns 1"}}'}
execute as @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"dark_purple"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"execute as @s run function rr_normal:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#game
function rr_normal:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_normal:game/ingame
execute if entity @s[tag=GameEnd] run function rr_normal:game/gameend
function everytick:saberfix
function everytick:no_drop
function everytick:team_balance

#reset
execute if entity @e[tag=PlacerClear,tag=Cleared] run function rr_normal:arenaclear/baseplacement
execute if entity @e[tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"}]
execute if entity @e[tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Normal ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Normal Mode is the default mode for Rocket Riders. In this mode, two teams fight against each other using a wide variety of missiles and defensive items. The goal is to destroy the enemy base and blow up the portal behind it while protecting your own.","color":"white"}]}}]
execute if entity @e[tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
tag @e[tag=PlacerClear,tag=Cleared] add BasePlaced