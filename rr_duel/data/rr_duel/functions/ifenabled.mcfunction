#management
execute unless score @s SetGamemode = @e[tag=rr_duel,limit=1] gamemodeID run function rr_duel:disable
data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"dark_purple","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection] SetGamemode 1"}}',Text2: '{"text":"1v1 Duel","color":"red","clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":"true","clickEvent":{"action":"run_command","value":"scoreboard players add @e[tag=Selection] refreshsigns 1"}}'}
execute as @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1: '{"text":"Gamemode:","color":"dark_purple"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"execute as @s run function rr_duel:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click player @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#game
function rr_duel:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_duel:game/ingame
execute if entity @s[tag=GameEnd] run function rr_duel:game/gameend
function everytick:saberfix
function everytick:no_drop
function everytick:team_balance
tag @s[tag=!GameStarted] remove CriteriaTrue

#reset
execute if entity @e[tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[tag=PlacerClear,tag=Cleared] run function rr_duel:arenaclear/baseplacement
execute if entity @e[tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"}]
execute if entity @e[tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"1v1 Duel ","color":"red"},{"text":"(hover for info)","italic":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"1v1 Duel is a competetive mode where players play for custom \"YZELO\" XP points. This mode uses its own ruleset. You play 1v1 matches for three rounds, and the player who wins two rounds wins the whole game, along with some XP points (the loser may take a hit, however). Ascend the ranks and make your way to the top! All settings are overridden in this gamemode, and a set of items is chosen automatically each round.","color":"white"}]}}]
execute if entity @e[tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
tag @e[tag=PlacerClear,tag=Cleared] add BasePlaced

#lock joinpads
execute as @s[tag=EditedSettings] if entity @a[team=Blue] run function game:cancelblue
execute as @s[tag=EditedSettings] if entity @a[team=Yellow] run function game:cancelyellow
execute as @s[tag=EditedSettings,tag=!GameStarted] unless entity @a[team=Blue] run function game:uncancelblue
execute as @s[tag=EditedSettings,tag=!GameStarted] unless entity @a[team=Yellow] run function game:uncancelyellow
execute as @s[tag=EditedSettings] unless entity @a[team=Blue] unless entity @a[team=Yellow] run tag @s remove Countdown

#fake game end
execute as @s[tag=FakeGameEnd] run function rr_duel:game/fakegameend

#forfeit prize/loss
execute as @s[scores={ForfeitTimeout=1200..}] run tag @a[tag=InRanked,team=Blue] add ForfeitWon
execute as @s[scores={ForfeitTimeout=1200..}] run tag @a[tag=InRanked,team=Yellow] add ForfeitWon
execute as @s[scores={ForfeitTimeout=1200..}] as @a[tag=ForfeitWon] run function rr_duel:forfeit/giveprize
scoreboard players reset @a[tag=!InRanked] ForfeitWin
scoreboard players reset @a[tag=!InRanked] ForfeitLoss
tag @s[scores={ForfeitTimeout=1200..}] remove TimeOut
scoreboard players reset @s[scores={ForfeitTimeout=1200..}] ForfeitTimeout
execute if entity @s[tag=!GameStarted] as @a[team=!Blue,team=!Yellow,tag=InRanked] run function rr_duel:forfeit/giveloss