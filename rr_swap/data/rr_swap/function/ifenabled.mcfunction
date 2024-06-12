#management
tag @e[x=0,type=armor_stand,tag=rr_swap,limit=1] add enabled
tag @s add fireballOverride
execute if entity @s[tag=SignsRefreshed] run function rr_swap:arenaclear/customizer
execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_swap,limit=1] gamemodeID run function rr_swap:disable

#tips
execute unless entity @s[tag=SMCustom] run function rr_swap:tip

#game
function rr_swap:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_swap:game/ingame
execute if entity @s[tag=GameEnd] run function rr_swap:game/gameend
execute as @e[x=0,type=item] run function everytick:no_drop

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function rr_swap:arenaclear/baseplacement
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Swap","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Teams swap 'sides' between Light and Dark every minute\n"},{"text":"- Base materials and armor color change accordingly\n"},{"text":"Items:\n","color":"aqua"},{"text":"- Light team gets fast missiles and punchable utilities\n"},{"text":"- Dark team gets powerful missiles and throwable utilities\n"},{"text":"- Exclusive: Special Missiles, Cluster Fireballs, and ICBMs"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add swapLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Swap","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Teams swap 'sides' between Light and Dark every minute\n"},{"text":"- Base materials and armor color change accordingly\n"},{"text":"Items:\n","color":"aqua"},{"text":"- Light team gets fast missiles and punchable utilities\n"},{"text":"- Dark team gets powerful missiles and throwable utilities\n"},{"text":"- Exclusive: Special Missiles, Cluster Fireballs, and ICBMs"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,scores={servermode=1}] as @a[x=0,tag=informMe] run function servermode:swap_forcedsettings
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[x=0,tag=informMe] run function gamemodes:informrepeat
tag @a[x=0,tag=informMe] remove informMe