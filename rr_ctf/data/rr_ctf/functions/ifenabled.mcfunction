#management
tag @e[predicate=custom:indimension,type=armor_stand,tag=rr_ctf,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_ctf:arenaclear/customizer
execute unless score @s SetGamemode = @e[predicate=custom:indimension,type=armor_stand,tag=rr_ctf,limit=1] gamemodeID run function rr_ctf:disable

#tips
execute unless entity @s[tag=SMCustom] run function rr_ctf:tip

#game
function rr_ctf:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_ctf:game/ingame
execute if entity @s[tag=GameEnd] run function rr_ctf:game/gameend
# function rr_ctf:everytick/pickaxefix
function everytick:no_drop

#pregame
execute if entity @s[tag=!GameStarted,tag=EditedSettings] positioned -90 202 95 unless block ~ ~ ~ #custom:glass run function rr_ctf:everytick/randomglass
execute if entity @s[tag=!GameStarted,tag=EditedSettings] positioned -100 202 95 unless block ~ ~ ~ #custom:glass run function rr_ctf:everytick/randomglass
execute if entity @s[tag=!GameStarted,tag=EditedSettings] positioned -90 202 61 unless block ~ ~ ~ #custom:glass run function rr_ctf:everytick/randomglass
execute if entity @s[tag=!GameStarted,tag=EditedSettings] positioned -100 202 61 unless block ~ ~ ~ #custom:glass run function rr_ctf:everytick/randomglass
execute if entity @s[tag=!GameStarted,tag=EditedSettings] positioned -90 203 95 unless block ~ ~ ~ yellow_banner[rotation=8] run setblock ~ ~ ~ yellow_banner[rotation=8]
execute if entity @s[tag=!GameStarted,tag=EditedSettings] positioned -100 203 95 unless block ~ ~ ~ yellow_banner[rotation=8] run setblock ~ ~ ~ yellow_banner[rotation=8]
execute if entity @s[tag=!GameStarted,tag=EditedSettings] positioned -90 203 61 unless block ~ ~ ~ blue_banner[rotation=0] run setblock ~ ~ ~ blue_banner[rotation=0]
execute if entity @s[tag=!GameStarted,tag=EditedSettings] positioned -100 203 61 unless block ~ ~ ~ blue_banner[rotation=0] run setblock ~ ~ ~ blue_banner[rotation=0]

#reset
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] run function rr_ctf:arenaclear/baseplacement
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=doTying,tag=!tyingOff] run data modify storage rocketriders:gamerules list[2] set value '[{"text":"Overtime: ","color":"white"},{"text":"Enabled","color":"green","bold":true}]'
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] unless entity @s[tag=doTying,tag=!tyingOff] run data modify storage rocketriders:gamerules list[2] set value '[{"text":"Overtime: ","color":"white"},{"text":"Disabled","color":"red","bold":true}]'
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a[predicate=custom:indimension] remove informMe
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a[predicate=custom:indimension] at @s run function arenaclear:notifystart
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a[predicate=custom:indimension] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Capture the Flag","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Capture both enemy flags\n","color":"yellow"},{"text":"- Lower flags by breaking magenta glass at flagpoles\n"},{"text":"- Break white glass or run near lowered flags to steal them\n"},{"text":"- Capture flags by returning to own base\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Bases made of harder materials; no portals\n"},{"text":"- Players have Piercing Pickaxes to mine concrete\n"},{"text":"- Flag carrier's missiles travel back to own base\n"},{"text":"- Hold two Canopies at a time (three in Overtime)"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add ctfLast
tag @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[predicate=custom:indimension,tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[predicate=custom:indimension,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Capture the Flag","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Capture both enemy flags\n","color":"yellow"},{"text":"- Lower flags by breaking magenta glass at flagpoles\n"},{"text":"- Break white glass or run near lowered flags to steal them\n"},{"text":"- Capture flags by returning to own base\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Bases made of harder materials; no portals\n"},{"text":"- Players have Piercing Pickaxes to mine concrete\n"},{"text":"- Flag carrier's missiles travel back to own base\n"},{"text":"- Hold two Canopies at a time (three in Overtime)"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[predicate=custom:indimension,tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,scores={servermode=1}] as @a[predicate=custom:indimension,tag=informMe] run function servermode:notifyitems
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[predicate=custom:indimension,tag=informMe] run function gamemodes:informrepeat
tag @a[predicate=custom:indimension,tag=informMe] remove informMe