#management
execute unless score @s SetGamemode = @e[tag=rr_powerups,limit=1,type=armor_stand] gamemodeID run function rr_powerups:disable
data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection,scores={refreshsigns=..0},type=armor_stand] SetGamemode 1"}}',Text2: '{"text":"Powerups","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection,type=armor_stand] refreshsigns 1"}}'}
execute as @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"execute as @s run function rr_powerups:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#game
function rr_powerups:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_powerups:game/ingame
execute if entity @s[tag=GameEnd] run function rr_powerups:game/gameend
function everytick:saberfix
function everytick:no_drop

#reset
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] run function rr_powerups:arenaclear/baseplacement
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"}]
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Powerups ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Stand on Powerup Platform for 5 seconds to capture it\n"},{"text":"- The team that controls the Platform gets Powerup Items\n"},{"text":"- Platform becomes contested if both teams are on it\n"},{"text":"Powerup Items:\n","color":"dark_purple"},{"text":"Special Missiles, Tipped Arrows, Stinging Shield, Lava Splash, Trident, Elytra, Totem of Undying, Infinity Saber, Slap Fish"}]}}]
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
tag @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] add BasePlaced