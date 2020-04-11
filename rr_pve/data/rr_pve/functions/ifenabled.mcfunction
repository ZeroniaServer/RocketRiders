#management
execute unless score @s SetGamemode = @e[tag=rr_pve,limit=1] gamemodeID run function rr_pve:disable
data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"light_purple","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection] SetGamemode 1"}}',Text2: '{"text":"PVE","color":"dark_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"}}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"dark_purple","clickEvent":{"action":"run_command","value":"execute as @s run function rr_pve:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#game
#function game:cancelyellow
function rr_pve:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_pve:game/ingame
execute if entity @s[tag=GameEnd] run function rr_pve:game/gameend
function everytick:saberfix
function everytick:no_drop

#arenaclear
execute if entity @e[tag=PlacerClear] run function rr_pve:arenaclear/baseplacement
tag @e[tag=PlacerClear] add BasePlaced