#management
tag @e[x=0,type=armor_stand,tag=rr_duel,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_duel:arenaclear/customizer
execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_duel,limit=1] gamemodeID run function rr_duel:disable

#tips
function rr_duel:tip

#game
function rr_duel:game/gamestart
execute if predicate game:game_running run function rr_duel:game/game_running
execute if predicate game:match_in_play run function rr_duel:game/match_in_play
execute if predicate game:match_over run function rr_duel:game/match_over
execute unless predicate game:match_in_play run tag @s remove CriteriaTrue

#leave teams
function game:leaveteams

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function game:edited_settings
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:match_in_play run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:match_in_play as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:match_in_play if entity @s[tag=!noYZELO] run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"1v1 Duel","color":"red","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Whoever wins two rounds gains XP. Loser loses XP\n"},{"text":"- XP translates to ranks, which affects gains/losses\n"},{"text":"- Players who log out forfeit and get XP penalty\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No base details, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:match_in_play if entity @s[tag=noYZELO] run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"1v1 Duel","color":"red","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Leaving the game forfeits the duel and ends the game\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No base details, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:match_in_play run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:match_in_play run tag @s add duelLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners (non-forfeiters) of active settings
tag @a[x=0,tag=Forfeiter] remove informMe
execute unless predicate game:match_over if entity @s[tag=EditedSettings] as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute unless predicate game:match_over if entity @s[tag=EditedSettings,tag=!noYZELO] run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"1v1 Duel","color":"red","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Whoever wins two rounds gains XP. Loser loses XP\n"},{"text":"- XP translates to ranks, which affects gains/losses\n"},{"text":"- Players who log out forfeit and get XP penalty\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No base details, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute unless predicate game:match_over if entity @s[tag=EditedSettings,tag=noYZELO] run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"1v1 Duel","color":"red","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Best of three against opponent\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Two players duel each other for three rounds\n"},{"text":"- Leaving the game forfeits the duel and ends the game\n"},{"text":"- Wind Down modifier is always on (no others are)\n"},{"text":"- Forced settings: No base details, no ties, etc.\n"},{"text":"Items:","color":"aqua"},{"text":" A set of 12 random items is generated each round"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute unless predicate game:match_over if entity @s[tag=EditedSettings] if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
execute if predicate game:match_in_play unless predicate game:match_over as @a[x=0,tag=informMe] run function rr_duel:notifyitems
execute unless predicate game:match_over if entity @s[tag=EditedSettings] if predicate game:repeat_settings/on if entity @a[x=0,tag=informMe] run function gamemodes:informrepeat
tag @a[x=0,tag=informMe] remove informMe

#lock join pads
execute if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/blue] run function game:cancelblue
execute if entity @s[tag=EditedSettings] if entity @a[x=0,predicate=custom:team/yellow] run function game:cancelyellow
execute unless predicate game:match_in_play if entity @s[tag=EditedSettings] unless entity @a[x=0,predicate=custom:team/blue] run function game:uncancelblue
execute unless predicate game:match_in_play if entity @s[tag=EditedSettings] unless entity @a[x=0,predicate=custom:team/yellow] run function game:uncancelyellow

#fake game end
execute if entity @s[tag=FakeGameEnd] run function rr_duel:game/fakegameend