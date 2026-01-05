#management
tag @e[x=0,type=armor_stand,tag=rr_crusade,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_crusade:arenaclear/customizer

execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_crusade,limit=1] gamemodeID run function rr_crusade:disable

#tips
function rr_crusade:tip

#game
function rr_crusade:game/gamestart
execute if predicate game:phase/match run function rr_crusade:game/while_phase/match
execute if predicate game:phase/match/play run function rr_crusade:game/while_phase/match/play
execute if predicate game:phase/match/over run function rr_crusade:game/while_phase/match/over
execute if entity @s[tag=SuddenDeath] run function rr_crusade:game/suddendeath

#kits
execute unless predicate game:phase/match/over if entity @s[tag=EditedSettings] run scoreboard players enable @a[x=0,predicate=custom:team/any_playing_team] crusadechange
execute unless predicate game:phase/match/play if predicate game:phase/match/over run scoreboard players reset @a[x=0] crusadechange
execute if predicate game:phase/match/play if predicate game:phase/match/over run scoreboard players reset @a[x=0,scores={deathCooldown=5}] crusadechange
execute unless predicate game:phase/match/play as @a[x=0,scores={crusadechange=1}] run function rr_crusade:items/kit/give/knight
execute unless predicate game:phase/match/play as @a[x=0,scores={crusadechange=2}] run function rr_crusade:items/kit/give/archer
execute unless predicate game:phase/match/play as @a[x=0,scores={crusadechange=3}] run function rr_crusade:items/kit/give/mage

execute if predicate game:phase/match/play as @a[x=0,tag=!CrusadeNoteKnight,scores={crusadechange=1}] run function rr_crusade:items/kit/notify/knight
execute if predicate game:phase/match/play as @a[x=0,tag=!CrusadeNoteArcher,scores={crusadechange=2}] run function rr_crusade:items/kit/notify/archer
execute if predicate game:phase/match/play as @a[x=0,tag=!CrusadeNoteMage,scores={crusadechange=3}] run function rr_crusade:items/kit/notify/mage

execute unless predicate game:phase/match/play run tag @a[x=0] remove CrusadeNoteKnight
execute unless predicate game:phase/match/play run tag @a[x=0] remove CrusadeNoteArcher
execute unless predicate game:phase/match/play run tag @a[x=0] remove CrusadeNoteMage

execute unless predicate game:phase/match/play run scoreboard players reset @a[x=0,scores={crusadechange=1..}] crusadechange

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function game:edited_settings
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:phase/match/play run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:phase/match/play as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:phase/match/play run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"Crusade","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy crystals and portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Players choose Kits at their bases\n"},{"text":"- Bases are castles made of deepslate bricks\n"},{"text":"- Platform between the bases allows close combat\n"},{"text":"- Destroy both enemy crystals to unlock enemy portal\n"},{"text":"- Item Stacking is enabled\n"},{"text":"Kits:\n","color":"aqua"},{"text":"- Archers get a Shooting Saber and lightning missiles\n"},{"text":"- Knights get a Knight Sword/Shield and heavy missiles\n"},{"text":"- Mages get a Spell Wand and normal missiles"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:phase/match/play run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] unless predicate game:phase/match/play run tag @s add crusadeLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"Crusade","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy crystals and portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Players choose Kits at their bases\n"},{"text":"- Bases are castles made of deepslate bricks\n"},{"text":"- Platform between the bases allows close combat\n"},{"text":"- Destroy both enemy crystals to unlock enemy portal\n"},{"text":"- Item Stacking is enabled\n"},{"text":"Kits:\n","color":"aqua"},{"text":"- Archers get a Shooting Saber and lightning missiles\n"},{"text":"- Knights get a Knight Sword/Shield and heavy missiles\n"},{"text":"- Mages get a Spell Wand and normal missiles"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings] if predicate rr:inform_late_joiners_about_items as @a[x=0,tag=informMe] run function servermode:notifyitems
execute if entity @s[tag=EditedSettings] if predicate game:repeat_settings/on if entity @a[x=0,tag=informMe] run function gamemodes:informrepeat
tag @a[x=0,tag=informMe] remove informMe