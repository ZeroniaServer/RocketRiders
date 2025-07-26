#management
tag @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_ctf:arenaclear/customizer
execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] gamemodeID run function rr_ctf:disable

#tips
execute unless entity @s[tag=SMCustom] run function rr_ctf:tip

#game
function rr_ctf:game/gamestart
execute if predicate game:game_started run function rr_ctf:game/ingame
execute if entity @s[tag=GameEnd] run function rr_ctf:game/gameend
# function rr_ctf:everytick/pickaxefix
execute as @e[x=0,type=item] run function everytick:no_drop

#pregame
execute unless predicate game:game_started if entity @s[tag=EditedSettings] positioned -90 202 95 unless block ~ ~ ~ #custom:glass run function rr_ctf:everytick/randomglass
execute unless predicate game:game_started if entity @s[tag=EditedSettings] positioned -100 202 95 unless block ~ ~ ~ #custom:glass run function rr_ctf:everytick/randomglass
execute unless predicate game:game_started if entity @s[tag=EditedSettings] positioned -90 202 61 unless block ~ ~ ~ #custom:glass run function rr_ctf:everytick/randomglass
execute unless predicate game:game_started if entity @s[tag=EditedSettings] positioned -100 202 61 unless block ~ ~ ~ #custom:glass run function rr_ctf:everytick/randomglass
execute unless predicate game:game_started if entity @s[tag=EditedSettings] positioned -90 203 95 unless block ~ ~ ~ yellow_banner[rotation=8] run setblock ~ ~ ~ yellow_banner[rotation=8]
execute unless predicate game:game_started if entity @s[tag=EditedSettings] positioned -100 203 95 unless block ~ ~ ~ yellow_banner[rotation=8] run setblock ~ ~ ~ yellow_banner[rotation=8]
execute unless predicate game:game_started if entity @s[tag=EditedSettings] positioned -90 203 61 unless block ~ ~ ~ blue_banner[rotation=0] run setblock ~ ~ ~ blue_banner[rotation=0]
execute unless predicate game:game_started if entity @s[tag=EditedSettings] positioned -100 203 61 unless block ~ ~ ~ blue_banner[rotation=0] run setblock ~ ~ ~ blue_banner[rotation=0]

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function rr_ctf:arenaclear/baseplacement
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=doTying,tag=!tyingOff] run data modify storage rocketriders:gamerules list[2] set value [{"text":"Overtime: ","color":"white"},{"text":"Enabled","color":"green","bold":true}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless entity @s[tag=doTying,tag=!tyingOff] run data modify storage rocketriders:gamerules list[2] set value [{"text":"Overtime: ","color":"white"},{"text":"Disabled","color":"red","bold":true}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:game_started run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:game_started as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:game_started run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"Capture the Flag","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Capture both enemy flags\n","color":"yellow"},{"text":"- Lower flags by breaking magenta glass at flagpoles\n"},{"text":"- Break white glass or run near lowered flags to steal them\n"},{"text":"- Capture flags by returning to own base\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Bases made of harder materials; no portals\n"},{"text":"- Players have Piercing Pickaxes to mine concrete\n"},{"text":"- Flag carrier's missiles travel back to own base\n"},{"text":"- Hold two Canopies at a time (three in Overtime)"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:game_started run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:game_started run tag @s add ctfLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"Capture the Flag","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Capture both enemy flags\n","color":"yellow"},{"text":"- Lower flags by breaking magenta glass at flagpoles\n"},{"text":"- Break white glass or run near lowered flags to steal them\n"},{"text":"- Capture flags by returning to own base\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Bases made of harder materials; no portals\n"},{"text":"- Players have Piercing Pickaxes to mine concrete\n"},{"text":"- Flag carrier's missiles travel back to own base\n"},{"text":"- Hold two Canopies at a time (three in Overtime)"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,scores={servermode=1}] as @a[x=0,tag=informMe] run function servermode:notifyitems
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[x=0,tag=informMe] run function gamemodes:informrepeat
tag @a[x=0,tag=informMe] remove informMe

#Kill everything below void
execute as @e[x=0,type=ender_pearl] at @s run kill @s[predicate=rr_ctf:in_void]
execute as @e[x=0,type=snowball] at @s run kill @s[predicate=rr_ctf:in_void]
execute as @e[x=0,type=dragon_fireball] at @s run kill @s[predicate=rr_ctf:in_void]
execute as @e[x=0,type=egg] at @s run kill @s[predicate=rr_ctf:in_void]
execute as @e[x=0,type=fireball] at @s run kill @s[predicate=rr_ctf:in_void]
execute as @e[x=0,type=tnt] at @s run kill @s[predicate=rr_ctf:in_void]
execute as @e[x=0,type=tnt_minecart] at @s run kill @s[predicate=rr_ctf:in_void]
execute as @e[x=0,type=marker,tag=novatracker] at @s run kill @s[predicate=rr_ctf:in_void]
execute as @e[x=0,type=firework_rocket,scores={novatimer=1..}] at @s run kill @s[predicate=rr_ctf:in_void]
execute as @e[x=0,type=#custom:potion] at @s run kill @s[predicate=rr_ctf:in_void]