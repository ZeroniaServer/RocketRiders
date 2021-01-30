#management
execute unless score @s SetGamemode = @e[tag=rr_duel,limit=1,type=armor_stand] gamemodeID run function rr_duel:disable
data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection,scores={refreshsigns=..0},type=armor_stand] SetGamemode 1"}}',Text2: '{"text":"1v1 Duel","color":"red","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection,type=armor_stand] refreshsigns 1"}}'}
execute as @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"execute as @s run function rr_duel:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#game
function rr_duel:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_duel:game/ingame
execute if entity @s[tag=GameEnd] run function rr_duel:game/gameend
function everytick:saberfix
function everytick:no_drop
tag @s[tag=!GameStarted] remove CriteriaTrue

#leave teams
function game:leaveteams

#reset
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] run function rr_duel:arenaclear/baseplacement
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"}]
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"1v1 Duel ","color":"red"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Whoever wins two rounds gains XP. Loser loses XP\n"},{"text":"- XP translates to ranks, which affects gains/losses\n"},{"text":"- Players who log out forfeit and get XP penalty\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No decorations, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}}]
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] if entity @s[tag=!GameStarted,scores={servermode=2}] run tellraw @a [{"text":""}]
tag @e[tag=PlacerClear,tag=Cleared,type=area_effect_cloud] add BasePlaced

#lock joinpads
execute as @s[tag=EditedSettings] if entity @a[team=Blue] run function game:cancelblue
execute as @s[tag=EditedSettings] if entity @a[team=Yellow] run function game:cancelyellow
execute as @s[tag=EditedSettings,tag=!GameStarted] unless entity @a[team=Blue] run function game:uncancelblue
execute as @s[tag=EditedSettings,tag=!GameStarted] unless entity @a[team=Yellow] run function game:uncancelyellow

#fake game end
execute as @s[tag=FakeGameEnd] run function rr_duel:game/fakegameend

#forfeit prize/loss
execute as @s[scores={ForfeitTimeout=1200..}] run tag @a[tag=InRanked,team=Blue] add ForfeitWon
execute as @s[scores={ForfeitTimeout=1200..}] run tag @a[tag=InRanked,team=Yellow] add ForfeitWon
execute as @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] as @a[tag=ForfeitWon] run function rr_duel:forfeit/giveprize
scoreboard players reset @a[tag=!InRanked] ForfeitWin
scoreboard players reset @a[tag=!InRanked] ForfeitLoss
tag @s[scores={ForfeitTimeout=1200..}] remove TimeOut
scoreboard players reset @s[scores={ForfeitTimeout=1200..}] ForfeitTimeout
execute if entity @s[tag=!GameStarted,tag=!noYZELO] as @a[team=!Blue,team=!Yellow,tag=InRanked] run function rr_duel:forfeit/giveloss