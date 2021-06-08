#management
execute unless score @s SetGamemode = @e[tag=rr_crusade,limit=1,type=armor_stand] gamemodeID run function rr_crusade:disable
data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection,scores={refreshsigns=..0},type=armor_stand] SetGamemode 1"}}',Text2: '{"text":"Crusade","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection,type=armor_stand] refreshsigns 1"}}'}
execute as @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"execute as @s run function rr_crusade:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#tips
execute unless entity @s[tag=SMCustom] run function rr_crusade:tip

#game
function rr_crusade:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_crusade:game/ingame
execute if entity @s[tag=GameEnd] run function rr_crusade:game/gameend
function everytick:saberfix
function everytick:no_drop

#reset
execute if entity @e[tag=PlacerClear,tag=Cleared,type=marker] run function rr_crusade:arenaclear/baseplacement
execute if entity @e[tag=PlacerClear,tag=Cleared,type=marker] if entity @s[tag=!GameStarted] run tag @a remove informMe
execute if entity @e[tag=PlacerClear,tag=Cleared,type=marker] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[tag=PlacerClear,tag=Cleared,type=marker] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @e[tag=PlacerClear,tag=Cleared,type=marker] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Crusade ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"In Cursade Mode, 2 teams fight using a variety of classes. Each class receives different items. Destroy the 2 knight structures on the sides of the base to expose the king structure at the front of the base. Destroy the king structure to win the game.","color":"white"}]}}]
execute if entity @e[tag=PlacerClear,tag=Cleared,type=marker] if entity @s[tag=!GameStarted] as @a run function modifiers:notifymodifiers
tag @e[tag=PlacerClear,tag=Cleared,type=marker] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Crusade ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"In Cursade Mode, 2 teams fight using a variety of classes. Each class receives different items. Destroy the 2 knight structures on the sides of the base to expose the king structure at the front of the base. Destroy the king structure to win the game.","color":"white"}]}}]
execute if entity @s[tag=EditedSettings] as @a[tag=informMe] run function modifiers:notifymodifiers
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[tag=informMe] run function gamemodes:informrepeat
tag @a[tag=informMe] remove informMe