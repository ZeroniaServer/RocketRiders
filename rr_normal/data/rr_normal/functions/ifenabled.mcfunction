#management
execute unless score @s SetGamemode = @e[tag=rr_normal,limit=1] gamemodeID run function rr_normal:disable
data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"light_purple","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection] SetGamemode 1"}}',Text2: '{"text":"Normal","color":"dark_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"dark_purple","clickEvent":{"action":"run_command","value":"execute as @s run function rr_normal:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#game
function rr_normal:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_normal:game/ingame
execute if entity @s[tag=GameEnd] run function rr_normal:game/gameend
function everytick:saberfix
function everytick:no_drop
function everytick:team_balance

#reset
execute if entity @e[tag=PlacerClear] run function rr_normal:arenaclear/baseplacement
execute if entity @e[tag=PlacerClear] if entity @s[tag=!GameStarted] run tellraw @a[team=Lobby] {"text":"Normal Mode is enabled.","color":"dark_green","bold":"true"}
tag @e[tag=PlacerClear] add BasePlaced