#management
execute unless score @s SetGamemode = @e[tag=rr_pve,limit=1] gamemodeID run function rr_pve:disable
data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"dark_purple","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection] SetGamemode 1"}}',Text2: '{"text":"PVE","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"execute as @s run function rr_pve:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#game
function rr_pve:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_pve:game/ingame
execute if entity @s[tag=GameEnd] run function rr_pve:game/gameend
function everytick:saberfix
function everytick:no_drop

#reset
execute if entity @e[tag=PlacerClear] run function rr_pve:arenaclear/baseplacement
execute if entity @e[tag=PlacerClear] if entity @s[tag=!GameStarted] run tellraw @a[team=Lobby] {"text":"PVE Mode is enabled.","color":"light_purple","bold":"true"}
execute if entity @e[tag=PlacerClear] if entity @s[tag=!GameStarted] run 
tag @e[tag=PlacerClear] add BasePlaced