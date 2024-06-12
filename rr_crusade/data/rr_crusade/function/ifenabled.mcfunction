#management
tag @e[x=0,type=armor_stand,tag=rr_crusade,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_crusade:arenaclear/customizer
execute if score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_crusade,limit=1] gamemodeID unless entity @s[tag=decosLocked] run scoreboard players add @s refreshsigns 1
execute if score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_crusade,limit=1] gamemodeID unless entity @s[tag=decosLocked] run function arenaclear:lockdecos

execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_crusade,limit=1] gamemodeID run function rr_crusade:disable

#tips
execute unless entity @s[tag=SMCustom] run function rr_crusade:tip

#game
function rr_crusade:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_crusade:game/ingame
execute if entity @s[tag=GameEnd] run function rr_crusade:game/gameend
execute if entity @s[tag=SuddenDeath] run function rr_crusade:game/suddendeath
execute as @e[x=0,type=item] run function everytick:no_drop

#Arrow pickup
execute if entity @s[tag=!GameEnd] if entity @e[x=0,type=arrow] run function rr_crusade:game/arrow_pickup

#kits
execute if entity @s[tag=EditedSettings,tag=!GameEnd] run scoreboard players enable @a[x=0,team=!Lobby,team=!Developer,team=!Spectator] crusadechange
execute if entity @s[tag=GameEnd,tag=!GameStarted] as @a[x=0] run trigger crusadechange set 0
execute if entity @s[tag=GameEnd,tag=GameStarted] as @a[x=0,scores={deathCooldown=5}] at @s run trigger crusadechange set 0
execute if entity @s[scores={servermode=0},tag=!SMCustom] unless entity @s[tag=GameStarted] as @a[x=0,scores={crusadechange=1}] run function rr_crusade:items/kit/give/knight
execute if entity @s[scores={servermode=0},tag=!SMCustom] unless entity @s[tag=GameStarted] as @a[x=0,scores={crusadechange=2}] run function rr_crusade:items/kit/give/archer
execute if entity @s[scores={servermode=0},tag=!SMCustom] unless entity @s[tag=GameStarted] as @a[x=0,scores={crusadechange=3}] run function rr_crusade:items/kit/give/mage
execute unless entity @s[scores={servermode=0},tag=!SMCustom] unless entity @s[tag=GameStarted] as @a[x=0,scores={crusadechange=1}] run function servermode:kitcrusade/knight
execute unless entity @s[scores={servermode=0},tag=!SMCustom] unless entity @s[tag=GameStarted] as @a[x=0,scores={crusadechange=2}] run function servermode:kitcrusade/archer
execute unless entity @s[scores={servermode=0},tag=!SMCustom] unless entity @s[tag=GameStarted] as @a[x=0,scores={crusadechange=3}] run function servermode:kitcrusade/mage

execute if entity @s[tag=GameStarted] as @a[x=0,tag=!CrusadeNoteKnight,scores={crusadechange=1}] run function rr_crusade:items/kit/notify/knight
execute if entity @s[tag=GameStarted] as @a[x=0,tag=!CrusadeNoteArcher,scores={crusadechange=2}] run function rr_crusade:items/kit/notify/archer
execute if entity @s[tag=GameStarted] as @a[x=0,tag=!CrusadeNoteMage,scores={crusadechange=3}] run function rr_crusade:items/kit/notify/mage

execute if entity @s[tag=!GameStarted] run tag @a[x=0] remove CrusadeNoteKnight
execute if entity @s[tag=!GameStarted] run tag @a[x=0] remove CrusadeNoteArcher
execute if entity @s[tag=!GameStarted] run tag @a[x=0] remove CrusadeNoteMage

execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[tag=GameStarted] as @a[x=0,scores={crusadechange=1,deathCooldown=5}] unless score @s crusadechange = @s crusadekit run function rr_crusade:items/kit/give/knight
execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[tag=GameStarted] as @a[x=0,scores={crusadechange=2,deathCooldown=5}] unless score @s crusadechange = @s crusadekit run function rr_crusade:items/kit/give/archer
execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[tag=GameStarted] as @a[x=0,scores={crusadechange=3,deathCooldown=5}] unless score @s crusadechange = @s crusadekit run function rr_crusade:items/kit/give/mage
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[tag=GameStarted] as @a[x=0,scores={crusadechange=1,deathCooldown=5}] unless score @s crusadechange = @s crusadekit run function servermode:kitcrusade/knight
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[tag=GameStarted] as @a[x=0,scores={crusadechange=2,deathCooldown=5}] unless score @s crusadechange = @s crusadekit run function servermode:kitcrusade/archer
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[tag=GameStarted] as @a[x=0,scores={crusadechange=3,deathCooldown=5}] unless score @s crusadechange = @s crusadekit run function servermode:kitcrusade/mage

execute if entity @s[tag=GameStarted] run scoreboard players reset @a[x=0,scores={crusadechange=-2147483647..-1}] crusadechange
execute unless entity @s[tag=GameStarted] run scoreboard players reset @a[x=0,scores={crusadechange=1..}] crusadechange
execute if entity @s[tag=GameStarted] run scoreboard players reset @a[x=0,scores={crusadechange=1..,deathCooldown=5}] crusadechange

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function rr_crusade:arenaclear/baseplacement
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Crusade","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy crystals and portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Players choose Kits at their bases\n"},{"text":"- Bases are castles made of deepslate bricks\n"},{"text":"- Platform between the bases allows close combat\n"},{"text":"- Destroy both enemy crystals to unlock enemy portal\n"},{"text":"- Item Stacking is enabled\n"},{"text":"Kits:\n","color":"aqua"},{"text":"- Archers get a Shooting Saber and lightning missiles\n"},{"text":"- Knights get a Knight Sword/Shield and heavy missiles\n"},{"text":"- Mages get a Fire Wand and normal missiles"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add crusadeLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Crusade","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy crystals and portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Players choose Kits at their bases\n"},{"text":"- Bases are castles made of deepslate bricks\n"},{"text":"- Platform between the bases allows close combat\n"},{"text":"- Destroy both enemy crystals to unlock enemy portal\n"},{"text":"- Item Stacking is enabled\n"},{"text":"Kits:\n","color":"aqua"},{"text":"- Archers get a Shooting Saber and lightning missiles\n"},{"text":"- Knights get a Knight Sword/Shield and heavy missiles\n"},{"text":"- Mages get a Fire Wand and normal missiles"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,scores={servermode=1}] as @a[x=0,tag=informMe] run function servermode:notifyitems
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[x=0,tag=informMe] run function gamemodes:informrepeat
tag @a[x=0,tag=informMe] remove informMe