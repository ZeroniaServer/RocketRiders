#management
tag @e[x=0,type=armor_stand,tag=rr_chase,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_chase:arenaclear/customizer
execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_chase,limit=1] gamemodeID run function rr_chase:disable

#tips
function rr_chase:tip

#game
function rr_chase:game/gamestart
execute if predicate game:phase/match run function rr_chase:game/while_phase/match
execute if predicate game:phase/match/play run function rr_chase:game/while_phase/match/play
execute if predicate game:phase/match/closing run function rr_chase:game/while_phase/match/closing

#disable yellow
tag @a[x=0] remove JoinYellow
execute as @a[x=0,predicate=custom:team/yellow] run function custom:leave

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function game:edited_settings
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"Chase","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Touch the chequered flag on the finishing base\n","color":"yellow"},{"text":"- Race against your enemies to the chequered flag\n"},{"text":"- Attack your enemies to stop them\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Special \"Chase Blocks\" spawn on the map\n"},{"text":"- Break Chase Blocks to obtain extra items\n"},{"text":"- End Crystal Chase Blocks fire a Crystal at the leader\n"},{"text":"- Item Stacking is enabled\n"},{"text":"- Obsidian stairs lead up to chequered flag\n"},{"text":"- No portals at bases"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tag @s add chaseLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if predicate game:joinable_match_phase as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if predicate game:joinable_match_phase run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"Chase","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Touch the chequered flag on the finishing base\n","color":"yellow"},{"text":"- Race against your enemies to the chequered flag\n"},{"text":"- Attack your enemies to stop them\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Item Stacking is enabled\n"},{"text":"- Special \"Chase Blocks\" spawn on the map, break them to obain extra items.\n"},{"text":"- End Crystal \"Chase Blocks\" fire an end crystal at the player who is in the lead\n"},{"text":"- Obsidian stairs lead up to chequered flag\n"},{"text":"- No portals at bases"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if predicate game:joinable_match_phase if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers

tag @a[x=0,tag=informMe] remove informMe