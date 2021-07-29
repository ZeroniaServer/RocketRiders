#item disabling/enabling
tag @s[tag=!rngArrows] add arrowsWasOff
tag @s add rngArrows
tag @s[tag=!rngFireball] add fireballWasOff
tag @s add rngFireball
tag @s[tag=!rngVortex] add vortexWasOff
tag @s add rngVortex
tag @s[tag=!rngShield] add shieldWasOff
tag @s add rngShield
tag @s[tag=!rngObshield] add obshieldWasOff
tag @s add rngObshield
tag @s[tag=rngSplash] add splashWasOn
tag @s remove rngSplash
tag @s[tag=rngCanopy] add canopyWasOn
tag @s remove rngCanopy
tag @s[tag=rngNova] add novaWasOn
tag @s remove rngNova
tag @s[tag=!rngUtil] add utilWasOff
tag @s add rngUtil

tag @s[tag=!rngAux] add auxWasOff
tag @s add rngAux
tag @s[tag=!rngWar] add warWasOff
tag @s add rngWar
tag @s[tag=rngRift] add riftWasOn
tag @s remove rngRift
tag @s[tag=rngJbuster] add jbusterWasOn
tag @s remove rngJbuster
tag @s[tag=!rngHeavy] add heavyWasOff
tag @s add rngHeavy

tag @s[tag=!rngHur] add hurWasOff
tag @s add rngHur
tag @s[tag=!rngThun] add thunWasOff
tag @s add rngThun
tag @s[tag=!rngLightning] add lightningWasOff
tag @s add rngLightning

tag @s[tag=rngNormal] add normalWasOn
tag @s add normalLocked

execute unless entity @s[tag=EditedSettings] run function rr_swap:arenaclear/customizer

#management
execute unless score @s SetGamemode = @e[type=armor_stand,tag=rr_swap,limit=1] gamemodeID run function rr_swap:disable
data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection,scores={refreshsigns=..0}] SetGamemode 1"}}',Text2:'{"text":"Swap","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] refreshsigns 1"}}'}
execute if entity @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function rr_swap:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#tips
execute unless entity @s[tag=SMCustom] run function rr_swap:tip

#game
function rr_swap:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_swap:game/ingame
execute if entity @s[tag=GameEnd] run function rr_swap:game/gameend
function everytick:no_drop

#reset
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] run function rr_swap:arenaclear/baseplacement
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a remove informMe
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Swap ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Teams swap 'sides' between Light and Dark every minute\n"},{"text":"- Base materials and armor color change accordingly\n"},{"text":"Items:\n","color":"aqua"},{"text":"- Light team gets Lightning Missiles and punchable utilities\n"},{"text":"- Dark team gets Heavy Missiles and throwable utilities\n"},{"text":"- Exclusive: Special Missiles, Cluster Fireballs, and ICBMs"}]}}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a run function modifiers:notifymodifiers
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add swapLast
tag @e[type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Swap ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Teams swap 'sides' between Light and Dark every minute\n"},{"text":"- Base materials and armor color change accordingly\n"},{"text":"Items:\n","color":"aqua"},{"text":"- Light team gets Lightning Missiles and punchable utilities\n"},{"text":"- Dark team gets Heavy Missiles and throwable utilities\n"},{"text":"- Exclusive: Special Missiles, Cluster Fireballs, and ICBMs"}]}}]
execute if entity @s[tag=EditedSettings] as @a[tag=informMe] run function modifiers:notifymodifiers
execute if entity @s[tag=EditedSettings,scores={servermode=1}] as @a[tag=informMe] run function servermode:swap_forcedsettings
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[tag=informMe] run function gamemodes:informrepeat
tag @a[tag=informMe] remove informMe