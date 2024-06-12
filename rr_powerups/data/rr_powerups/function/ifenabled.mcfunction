#management
tag @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_powerups:arenaclear/customizer
execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_powerups,limit=1] gamemodeID run function rr_powerups:disable

#tips
execute unless entity @s[tag=SMCustom] run function rr_powerups:tip

#game
function rr_powerups:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_powerups:game/ingame
execute if entity @s[tag=GameEnd] run function rr_powerups:game/gameend
execute as @e[x=0,type=item] run function everytick:no_drop
execute if entity @e[x=0,type=arrow,tag=!GameEnd] run function rr_powerups:everytick/tipped_arrow_pickup

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function rr_powerups:arenaclear/baseplacement
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Powerups","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Stand on Powerup Platform for 3 seconds to capture it\n"},{"text":"- The team that controls the Platform gets Powerup Items\n"},{"text":"- Platform becomes contested if both teams are on it\n"},{"text":"- Crystal Crafters placed when enemies control Platform\n"},{"text":"- Stand on Crystal Crafter to launch Crystals at Platform\n"},{"text":"- The Platform slowly breaks over time\n"},{"text":"- Crystals significantly speed up Platform breaking process\n"},{"text":"Powerup Items:\n","color":"dark_purple"},{"text":"Special Missiles, Tipped Arrows, Stinging Shield, Lava Splash, Trident, Elytra, Totem of Undying, Infinity Saber, Slap Fish"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add powerupsLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Powerups","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Stand on Powerup Platform for 3 seconds to capture it\n"},{"text":"- The team that controls the Platform gets Powerup Items\n"},{"text":"- Platform becomes contested if both teams are on it\n"},{"text":"- Crystal Crafters appear when enemies control the Powerup Platform\n"},{"text":"- Stand on Crystal Crafter to launch Crystals at Platform\n"},{"text":"- The Platform slowly breaks over time\n"},{"text":"- Crystals significantly speed up Platform breaking process\n"},{"text":"Powerup Items:\n","color":"dark_purple"},{"text":"Special Missiles, Tipped Arrows, Stinging Shield, Lava Splash, Trident, Elytra, Totem of Undying, Infinity Saber, Slap Fish"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,scores={servermode=1}] as @a[x=0,tag=informMe] run function servermode:notifyitems
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[x=0,tag=informMe] run function gamemodes:informrepeat
tag @a[x=0,tag=informMe] remove informMe

#set bossbar max to 100
execute unless entity @e[x=0,type=marker,tag=captureMiddle,tag=BrokenPlatform] run bossbar set rr_powerups:capture_progress max 100