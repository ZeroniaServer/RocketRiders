#management
execute unless score @s SetGamemode = @e[tag=rr_cursed,limit=1,type=armor_stand] gamemodeID run function rr_cursed:disable
data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection,scores={refreshsigns=..0},type=armor_stand] SetGamemode 1"}}',Text2: '{"text":"Cursed","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection,type=armor_stand] refreshsigns 1"}}'}
execute as @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"execute as @s run function rr_cursed:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#game
function rr_cursed:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_cursed:game/ingame
execute if entity @s[tag=GameEnd] run function rr_cursed:game/gameend
function everytick:saberfix
function everytick:no_drop
function everytick:team_balance

#teleport back to base from void
execute as @a[team=Yellow] at @s if entity @s[y=-2000,dy=1980,scores={ThrowPlat=..0}] run tp @s 12 64 -66 0 0
execute as @a[team=Blue] at @s if entity @s[y=-2000,dy=1980,scores={ThrowPlat=..0}] run tp @s 12 64 66 -180 0

#teleport back to base from portals
tp @a[team=Yellow,tag=portalKill] 12 64 -66 0 0
tp @a[team=Blue,tag=portalKill] 12 64 66 -180 0
tag @a[tag=portalKill] remove portalKill

#reset
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] run function rr_cursed:arenaclear/baseplacement
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"}]
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Cursed ","color":"light_purple"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Cursed Mode is as cursed as the name implies. You spawn on the enemy base, where you must destroy their portals with whatever items you get (your missiles will spawn in the opposite direction). The first team to destroy the other's portals wins!","color":"white"}]}}]
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
tag @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] add BasePlaced