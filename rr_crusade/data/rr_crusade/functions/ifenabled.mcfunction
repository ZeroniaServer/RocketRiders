#item disabling/enabling
tag @s[tag=!rngArrows] add arrowsWasOff
tag @s add rngArrows
tag @s[tag=!rngFireball] add fireballWasOff
tag @s add rngFireball
tag @s[tag=!rngVortex] add vortexWasOff
tag @s add rngVortex
tag @s[tag=!rngShield] add shieldWasOff
tag @s add rngShield
tag @s[tag=!rngObshield] add obshieldWasOff
tag @s add rngObshield
tag @s[tag=!rngSplash] add splashWasOff
tag @s add rngSplash
tag @s[tag=!rngCanopy] add canopyWasOff
tag @s add rngCanopy
tag @s[tag=!rngNova] add novaWasOff
tag @s add rngNova
tag @s[tag=!rngUtil] add utilWasOff
tag @s add rngUtil

tag @s[tag=!rngAux] add auxWasOff
tag @s add rngAux
tag @s[tag=!rngWar] add warWasOff
tag @s add rngWar
tag @s[tag=!rngJbuster] add jbusterWasOff
tag @s add rngJbuster
tag @s[tag=rngRift] add riftWasOn
tag @s remove rngRift
tag @s[tag=!rngHeavy] add heavyWasOff
tag @s add rngHeavy

tag @s[tag=!rngHur] add hurWasOff
tag @s add rngHur
tag @s[tag=!rngThun] add thunWasOff
tag @s add rngThun
tag @s[tag=!rngLightning] add lightningWasOff
tag @s add rngLightning

tag @s[tag=!rngAnt] add antWasOff
tag @s add rngAnt
tag @s[tag=!rngBlade] add bladeWasOff
tag @s add rngBlade
tag @s[tag=!rngCata] add cataWasOff
tag @s add rngCata
tag @s[tag=!rngCitadel] add citadelWasOff
tag @s add rngCitadel
tag @s[tag=rngEguard] add eguardWasOn
tag @s remove rngEguard
tag @s[tag=!rngGemi] add gemiWasOff
tag @s add rngGemi
tag @s[tag=!rngLift] add liftWasOff
tag @s add rngLift
tag @s[tag=!rngNull] add nullWasOff
tag @s add rngNull
tag @s[tag=!rngSlash] add slashWasOff
tag @s add rngSlash
tag @s[tag=!rngToma] add tomaWasOff
tag @s add rngToma
tag @s[tag=!rngNormal] add normalWasOff
tag @s add rngNormal

execute unless entity @s[tag=EditedSettings] run function rr_crusade:arenaclear/customizer

#management
execute unless score @s SetGamemode = @e[type=armor_stand,tag=rr_crusade,limit=1] gamemodeID run function rr_crusade:disable
data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection,scores={refreshsigns=..0}] SetGamemode 1"}}',Text2:'{"text":"Crusade","color":"light_purple","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"scoreboard players add @e[type=armor_stand,tag=Selection] refreshsigns 1"}}'}
execute if entity @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function rr_crusade:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"playsound ui.button.click master @a ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

#tips
execute unless entity @s[tag=SMCustom] run function rr_crusade:tip

#game
function rr_crusade:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_crusade:game/ingame
execute if entity @s[tag=GameEnd] run function rr_crusade:game/gameend
function everytick:no_drop

scoreboard players reset @a[team=!Blue,team=!Yellow] crusadekit

#Arrow pickup
execute as @s[tag=!GameEnd] if entity @e[type=arrow] run function rr_crusade:game/arrow_pickup

#kits
execute as @s[tag=EditedSettings,tag=!GameEnd] run scoreboard players enable @a[team=!Lobby,team=!Developer,team=!Spectator] crusadechange
execute as @s[tag=GameEnd,tag=!GameStarted] as @a run trigger crusadechange set 0
execute as @s[tag=GameEnd,tag=GameStarted] as @a[scores={deathCooldown=5}] at @s run trigger crusadechange set 0
execute if entity @s[scores={servermode=0},tag=!SMCustom] unless entity @s[tag=GameStarted] as @a[scores={crusadechange=1}] run function rr_crusade:items/kit/give/knight
execute if entity @s[scores={servermode=0},tag=!SMCustom] unless entity @s[tag=GameStarted] as @a[scores={crusadechange=2}] run function rr_crusade:items/kit/give/archer
execute if entity @s[scores={servermode=0},tag=!SMCustom] unless entity @s[tag=GameStarted] as @a[scores={crusadechange=3}] run function rr_crusade:items/kit/give/mage
execute unless entity @s[scores={servermode=0},tag=!SMCustom] unless entity @s[tag=GameStarted] as @a[scores={crusadechange=1}] run function servermode:crusadekit/knight
execute unless entity @s[scores={servermode=0},tag=!SMCustom] unless entity @s[tag=GameStarted] as @a[scores={crusadechange=2}] run function servermode:crusadekit/archer
execute unless entity @s[scores={servermode=0},tag=!SMCustom] unless entity @s[tag=GameStarted] as @a[scores={crusadechange=3}] run function servermode:crusadekit/mage

execute as @s[tag=GameStarted] as @a[tag=!CrusadeNoteKnight,scores={crusadechange=1}] run function rr_crusade:items/kit/notify/knight
execute as @s[tag=GameStarted] as @a[tag=!CrusadeNoteArcher,scores={crusadechange=2}] run function rr_crusade:items/kit/notify/archer
execute as @s[tag=GameStarted] as @a[tag=!CrusadeNoteMage,scores={crusadechange=3}] run function rr_crusade:items/kit/notify/mage

execute as @s[tag=!GameStarted] run tag @a remove CrusadeNoteKnight
execute as @s[tag=!GameStarted] run tag @a remove CrusadeNoteArcher
execute as @s[tag=!GameStarted] run tag @a remove CrusadeNoteMage

execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[tag=GameStarted] as @a[scores={crusadechange=1,deathCooldown=5}] unless score @s crusadechange = @s crusadekit run function rr_crusade:items/kit/give/knight
execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[tag=GameStarted] as @a[scores={crusadechange=2,deathCooldown=5}] unless score @s crusadechange = @s crusadekit run function rr_crusade:items/kit/give/archer
execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[tag=GameStarted] as @a[scores={crusadechange=3,deathCooldown=5}] unless score @s crusadechange = @s crusadekit run function rr_crusade:items/kit/give/mage
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[tag=GameStarted] as @a[scores={crusadechange=1,deathCooldown=5}] unless score @s crusadechange = @s crusadekit run function servermode:crusadekit/knight
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[tag=GameStarted] as @a[scores={crusadechange=2,deathCooldown=5}] unless score @s crusadechange = @s crusadekit run function servermode:crusadekit/archer
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[tag=GameStarted] as @a[scores={crusadechange=3,deathCooldown=5}] unless score @s crusadechange = @s crusadekit run function servermode:crusadekit/mage

execute if entity @s[tag=GameStarted] run scoreboard players reset @a[scores={crusadechange=-2147483647..-1}] crusadechange
execute unless entity @s[tag=GameStarted] run scoreboard players reset @a[scores={crusadechange=1..}] crusadechange
execute if entity @s[tag=GameStarted] run scoreboard players reset @a[scores={crusadechange=1..,deathCooldown=5}] crusadechange

#reset
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] run function rr_crusade:arenaclear/baseplacement
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a remove informMe
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Crusade","color":"light_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy crystals and portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Players choose Kits at their bases\n"},{"text":"- Bases are castles made of deepslate bricks\n"},{"text":"- Platform between the bases allows close combat\n"},{"text":"- Destroy both enemy crystals to unlock enemy portal\n"},{"text":"- Item Stacking is enabled\n"},{"text":"Kits:\n","color":"aqua"},{"text":"- Archers get a Shooting Saber and lightning missiles\n"},{"text":"- Knights get a Knight Sword/Shield and heavy missiles\n"},{"text":"- Mages get a Fire Wand and normal missiles"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add crusadeLast
tag @e[type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @s[tag=EditedSettings] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Crusade","color":"light_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy crystals and portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Players choose Kits at their bases\n"},{"text":"- Bases are castles made of deepslate bricks\n"},{"text":"- Platform between the bases allows close combat\n"},{"text":"- Destroy both enemy crystals to unlock enemy portal\n"},{"text":"- Item Stacking is enabled\n"},{"text":"Kits:\n","color":"aqua"},{"text":"- Archers get a Shooting Saber and lightning missiles\n"},{"text":"- Knights get a Knight Sword/Shield and heavy missiles\n"},{"text":"- Mages get a Fire Wand and normal missiles"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[tag=informMe] run function gamemodes:informrepeat
tag @a[tag=informMe] remove informMe