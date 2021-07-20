#disable arrows and enable canopies
tag @s[tag=rngArrows] add arrowsWasOn
tag @s remove rngArrows
tag @s[tag=!rngCanopy] add canopyWasOff
tag @s add rngCanopy
tag @s[tag=!rngFireball] add fireballWasOff
tag @s add rngFireball
tag @s[tag=!rngUtil] add utilWasOff
tag @s add rngUtil
execute unless entity @s[tag=EditedSettings] run function rr_ctf:arenaclear/customizer

#management
execute unless score @s SetGamemode = @e[type=armor_stand,tag=rr_ctf,limit=1] gamemodeID run function rr_ctf:disable
data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection,scores={refreshsigns=..0}] SetGamemode 1"}}',Text2:'{"text":"Capture the Flag","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] refreshsigns 1"}}'}
execute if entity @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function rr_ctf:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#tips
execute unless entity @s[tag=SMCustom] run function rr_ctf:tip

#game
function rr_ctf:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_ctf:game/ingame
execute if entity @s[tag=GameEnd] run function rr_ctf:game/gameend
function rr_ctf:everytick/pickaxefix
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
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] run function rr_ctf:arenaclear/baseplacement
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a remove informMe
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Capture the Flag ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Capture both enemy flags\n","color":"yellow"},{"text":"- Lower flags by breaking magenta glass at flagpoles\n"},{"text":"- Break white glass or run near lowered flags to steal them\n"},{"text":"- Capture flags by returning to own base\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Bases made of harder materials; no portals\n"},{"text":"- Players have Piercing Pickaxes to mine concrete\n"},{"text":"- Flag carrier's missiles travel back to own base\n"},{"text":"- Hold up to two Canopies at a time"}]}}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a run function modifiers:notifymodifiers
tag @e[type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Capture the Flag ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Capture both enemy flags\n","color":"yellow"},{"text":"- Lower flags by breaking magenta glass at flagpoles\n"},{"text":"- Break white glass or run near lowered flags to steal them\n"},{"text":"- Capture flags by returning to own base\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Bases made of harder materials; no portals\n"},{"text":"- Players have Piercing Pickaxes to mine concrete\n"},{"text":"- Flag carrier's missiles travel back to own base\n"},{"text":"- Hold up to three Canopies at a time"}]}}]
execute if entity @s[tag=EditedSettings] as @a[tag=informMe] run function modifiers:notifymodifiers
execute if entity @s[tag=EditedSettings,scores={servermode=1}] as @a[tag=informMe] run function servermode:notifyitems
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[tag=informMe] run function gamemodes:informrepeat
tag @a[tag=informMe] remove informMe