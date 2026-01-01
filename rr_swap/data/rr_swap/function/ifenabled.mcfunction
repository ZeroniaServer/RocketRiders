#management
tag @e[x=0,type=armor_stand,tag=rr_swap,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_swap:arenaclear/customizer
execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_swap,limit=1] gamemodeID run function rr_swap:disable

#tips
function rr_swap:tip

#game
function rr_swap:game/gamestart
execute if predicate game:phase/match run function rr_swap:game/game_running
execute if predicate game:phase/match/play run function rr_swap:game/match_in_play
execute if predicate game:phase/match/over run function rr_swap:game/match_over

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function game:edited_settings
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:phase/match/play run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:phase/match/play as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:phase/match/play run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"Swap","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Teams swap 'sides' between Light and Dark every minute\n"},{"text":"- Base materials and armor color change accordingly\n"},{"text":"Items:\n","color":"aqua"},{"text":"- Light team gets fast missiles and punchable utilities\n"},{"text":"- Dark team gets powerful missiles and throwable utilities\n"},{"text":"- Exclusive: Special Missiles, Cluster Fireballs, and ICBMs"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:phase/match/play run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:phase/match/play run tag @s add swapLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"Swap","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Teams swap 'sides' between Light and Dark every minute\n"},{"text":"- Base materials and armor color change accordingly\n"},{"text":"Items:\n","color":"aqua"},{"text":"- Light team gets fast missiles and punchable utilities\n"},{"text":"- Dark team gets powerful missiles and throwable utilities\n"},{"text":"- Exclusive: Special Missiles, Cluster Fireballs, and ICBMs"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings] if predicate rr:inform_late_joiners_about_items as @a[x=0,tag=informMe] run function servermode:swap_forcedsettings
execute if entity @s[tag=EditedSettings] if predicate game:repeat_settings/on if entity @a[x=0,tag=informMe] run function gamemodes:informrepeat
tag @a[x=0,tag=informMe] remove informMe