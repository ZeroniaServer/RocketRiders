#disable arrows and enable canopies
tag @s[tag=rngArrows] add arrowsWasOn
tag @s remove rngArrows
tag @s[tag=!rngCanopy] add canopyWasOff
tag @s add rngCanopy
tag @s[tag=!rngUtil] add utilWasOff
tag @s add rngUtil
execute unless entity @s[tag=EditedSettings] run function rr_ctf:arenaclear/customizer

#management
execute unless score @s SetGamemode = @e[tag=rr_ctf,limit=1,type=armor_stand] gamemodeID run function rr_ctf:disable
data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection,scores={refreshsigns=..0},type=armor_stand] SetGamemode 1"}}',Text2: '{"text":"Capture the Flag","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection,type=armor_stand] refreshsigns 1"}}'}
execute as @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"execute as @s run function rr_ctf:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#game
function rr_ctf:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_ctf:game/ingame
execute if entity @s[tag=GameEnd] run function rr_ctf:game/gameend
function rr_ctf:everytick/pickaxefix
function everytick:no_drop

#pregame
execute if entity @s[tag=!GameStarted] positioned -90 202 95 unless block ~ ~ ~ magenta_stained_glass run setblock ~ ~ ~ magenta_stained_glass
execute if entity @s[tag=!GameStarted] positioned -100 202 95 unless block ~ ~ ~ magenta_stained_glass run setblock ~ ~ ~ magenta_stained_glass
execute if entity @s[tag=!GameStarted] positioned -90 202 61 unless block ~ ~ ~ magenta_stained_glass run setblock ~ ~ ~ magenta_stained_glass
execute if entity @s[tag=!GameStarted] positioned -100 202 61 unless block ~ ~ ~ magenta_stained_glass run setblock ~ ~ ~ magenta_stained_glass
execute if entity @s[tag=!GameStarted] positioned -90 203 95 unless block ~ ~ ~ yellow_banner[rotation=8] run setblock ~ ~ ~ yellow_banner[rotation=8]
execute if entity @s[tag=!GameStarted] positioned -100 203 95 unless block ~ ~ ~ yellow_banner[rotation=8] run setblock ~ ~ ~ yellow_banner[rotation=8]
execute if entity @s[tag=!GameStarted] positioned -90 203 61 unless block ~ ~ ~ blue_banner[rotation=0] run setblock ~ ~ ~ blue_banner[rotation=0]
execute if entity @s[tag=!GameStarted] positioned -100 203 61 unless block ~ ~ ~ blue_banner[rotation=0] run setblock ~ ~ ~ blue_banner[rotation=0]

#reset
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] run function rr_ctf:arenaclear/baseplacement
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"}]
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Capture the Flag ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Capture both enemy flags\n","color":"yellow"},{"text":"- Lower flags by breaking magenta glass at flagpoles\n"},{"text":"- Break white glass or run near lowered flags to steal them\n"},{"text":"- Capture flags by returning to own base\n"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Bases made of harder materials; no portals\n"},{"text":"- Players have Piercing Pickaxes to mine concrete\n"},{"text":"- Flag carrier's missiles travel back to own base\n"},{"text":"- Hold up to three Canopies at a time"}]}}]
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
tag @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] add BasePlaced