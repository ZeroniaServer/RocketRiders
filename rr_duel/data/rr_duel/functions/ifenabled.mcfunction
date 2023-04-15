#management
tag @e[type=armor_stand,tag=rr_duel,limit=1] add enabled
tag @s remove customSpawns
execute if entity @s[tag=SignsRefreshed] run function rr_duel:arenaclear/customizer
execute unless score @s SetGamemode = @e[type=armor_stand,tag=rr_duel,limit=1] gamemodeID run function rr_duel:disable

#tips (disabled on duel servermode)
execute unless entity @s[scores={servermode=2}] unless entity @s[tag=SMCustom] run function rr_duel:tip

#game
function rr_duel:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_duel:game/ingame
execute if entity @s[tag=GameEnd] run function rr_duel:game/gameend
function everytick:no_drop
tag @s[tag=!GameStarted] remove CriteriaTrue

#leave teams
function game:leaveteams

#reset
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] run function rr_duel:arenaclear/baseplacement
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a[predicate=custom:indimension] remove informMe
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a[predicate=custom:indimension] at @s run function arenaclear:notifystart
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted,tag=!noYZELO] run tellraw @a[predicate=custom:indimension] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"1v1 Duel","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Whoever wins two rounds gains XP. Loser loses XP\n"},{"text":"- XP translates to ranks, which affects gains/losses\n"},{"text":"- Players who log out forfeit and get XP penalty\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No decorations, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted,tag=noYZELO] run tellraw @a[predicate=custom:indimension] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"1v1 Duel","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Leaving the game forfeits the duel and ends the game\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No decorations, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add duelLast
tag @e[type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners (non-forfeiters) of active settings
tag @a[predicate=custom:indimension,tag=Forfeiter] remove informMe
execute if entity @s[tag=EditedSettings,tag=!GameEnd] as @a[predicate=custom:indimension,tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings,tag=!noYZELO,tag=!GameEnd] run tellraw @a[predicate=custom:indimension,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"1v1 Duel","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Whoever wins two rounds gains XP. Loser loses XP\n"},{"text":"- XP translates to ranks, which affects gains/losses\n"},{"text":"- Players who log out forfeit and get XP penalty\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No decorations, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings,tag=noYZELO,tag=!GameEnd] run tellraw @a[predicate=custom:indimension,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"1v1 Duel","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Leaving the game forfeits the duel and ends the game\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No decorations, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings,tag=!GameEnd] run function modifiers:informmodifiers
execute if entity @s[tag=GameStarted,tag=!GameEnd] as @a[predicate=custom:indimension,tag=informMe] run function rr_duel:notifyitems
execute if entity @s[tag=EditedSettings,tag=Repeat,tag=!GameEnd] if entity @a[predicate=custom:indimension,tag=informMe] run function gamemodes:informrepeat
tag @a[predicate=custom:indimension,tag=informMe] remove informMe

#lock join pads
execute if entity @s[tag=EditedSettings] if entity @a[predicate=custom:indimension,team=Blue] run function game:cancelblue
execute if entity @s[tag=EditedSettings] if entity @a[predicate=custom:indimension,team=Yellow] run function game:cancelyellow
execute if entity @s[tag=EditedSettings,tag=!GameStarted] unless entity @a[predicate=custom:indimension,team=Blue] run function game:uncancelblue
execute if entity @s[tag=EditedSettings,tag=!GameStarted] unless entity @a[predicate=custom:indimension,team=Yellow] run function game:uncancelyellow

#fake game end
execute if entity @s[tag=FakeGameEnd] run function rr_duel:game/fakegameend