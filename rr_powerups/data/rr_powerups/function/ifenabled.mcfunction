#management
tag @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_powerups:arenaclear/customizer
execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] gamemodeID run function rr_powerups:disable

#tips
function rr_powerups:tip

#game
function rr_powerups:game/gamestart
execute if predicate game:phase/match run function rr_powerups:game/while_phase/match
execute if predicate game:phase/match/play run function rr_powerups:game/while_phase/match/play
execute if predicate game:phase/match/over run function rr_powerups:game/while_phase/match/over

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function game:edited_settings
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"Powerups","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Stand on Powerup Platform for 3 seconds to capture it\n"},{"text":"- The team that controls the Platform gets Powerup Items\n"},{"text":"- Platform becomes contested if both teams are on it\n"},{"text":"- Crystal Crafters placed when enemies control Platform\n"},{"text":"- Stand on Crystal Crafter to launch Crystals at Platform\n"},{"text":"- The Platform slowly breaks over time\n"},{"text":"- Crystals significantly speed up Platform breaking process\n"},{"text":"Powerup Items:\n","color":"dark_purple"},{"text":"Special Missiles, Tipped Arrows, Stinging Shield, Lava Splash, Trident, Elytra, Totem of Undying, Infinity Saber, Slap Fish"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tag @s add powerupsLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if predicate game:joinable_match_phase as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if predicate game:joinable_match_phase run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Gamemode: ","color":"#ca00ca"},{"text":"Powerups","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Stand on Powerup Platform for 3 seconds to capture it\n"},{"text":"- The team that controls the Platform gets Powerup Items\n"},{"text":"- Platform becomes contested if both teams are on it\n"},{"text":"- Crystal Crafters appear when enemies control the Powerup Platform\n"},{"text":"- Stand on Crystal Crafter to launch Crystals at Platform\n"},{"text":"- The Platform slowly breaks over time\n"},{"text":"- Crystals significantly speed up Platform breaking process\n"},{"text":"Powerup Items:\n","color":"dark_purple"},{"text":"Special Missiles, Tipped Arrows, Stinging Shield, Lava Splash, Trident, Elytra, Totem of Undying, Infinity Saber, Slap Fish"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if predicate game:joinable_match_phase if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
tag @a[x=0,tag=informMe] remove informMe
