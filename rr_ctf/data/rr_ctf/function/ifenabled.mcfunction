#management
tag @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_ctf:arenaclear/customizer
execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] gamemodeID run function rr_ctf:disable

#tips
function rr_ctf:tip

#game
function rr_ctf:game/gamestart
execute if predicate game:phase/match run function rr_ctf:game/while_phase/match
execute if predicate game:phase/match/play run function rr_ctf:game/while_phase/match/play
execute if predicate game:phase/match/closing run function rr_ctf:game/while_phase/match/closing
# function rr_ctf:everytick/pickaxefix

#pregame
execute if predicate game:phase/staging/queue positioned -90 202 95 unless block ~ ~ ~ #custom:glass run function rr_ctf:everytick/randomglass
execute if predicate game:phase/staging/queue positioned -100 202 95 unless block ~ ~ ~ #custom:glass run function rr_ctf:everytick/randomglass
execute if predicate game:phase/staging/queue positioned -90 202 61 unless block ~ ~ ~ #custom:glass run function rr_ctf:everytick/randomglass
execute if predicate game:phase/staging/queue positioned -100 202 61 unless block ~ ~ ~ #custom:glass run function rr_ctf:everytick/randomglass
function game:place_facade/blue_flags with storage rocketriders:teams blue.block_palette
function game:place_facade/yellow_flags with storage rocketriders:teams yellow.block_palette

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function game:edited_settings
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:game_rules/disable_tying/on run data modify storage rocketriders:gamerules list[2] set value [{"text":"Overtime: ","color":"white"},{"text":"Enabled","color":"green","bold":true}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:game_rules/disable_tying/on run data modify storage rocketriders:gamerules list[2] set value [{"text":"Overtime: ","color":"white"},{"text":"Disabled","color":"red","bold":true}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Game Mode: ","color":"#ca00ca"},{"text":"Capture the Flag","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Capture both enemy flags\n","color":"yellow"},{"text":"- Lower flags by breaking magenta glass at flagpoles\n"},{"text":"- Break white glass or run near lowered flags to steal them\n"},{"text":"- Capture flags by returning to own base\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Bases made of harder materials; no portals\n"},{"text":"- Players have Piercing Pickaxes to mine concrete\n"},{"text":"- Flag carrier's missiles travel back to own base\n"},{"text":"- Hold two Canopies at a time (three in overtime)"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tag @s add ctfLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if predicate game:joinable_match_phase as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if predicate game:joinable_match_phase run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Game Mode: ","color":"#ca00ca"},{"text":"Capture the Flag","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Capture both enemy flags\n","color":"yellow"},{"text":"- Lower flags by breaking magenta glass at flagpoles\n"},{"text":"- Break white glass or run near lowered flags to steal them\n"},{"text":"- Capture flags by returning to own base\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Bases made of harder materials; no portals\n"},{"text":"- Players have Piercing Pickaxes to mine concrete\n"},{"text":"- Flag carrier's missiles travel back to own base\n"},{"text":"- Hold two Canopies at a time (three in overtime)"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if predicate game:joinable_match_phase if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
tag @a[x=0,tag=informMe] remove informMe
