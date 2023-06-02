#management
tag @e[predicate=custom:indimension,type=armor_stand,tag=rr_sandbox,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_sandbox:arenaclear/customizer
execute unless score @s SetGamemode = @e[predicate=custom:indimension,type=armor_stand,tag=rr_sandbox,limit=1] gamemodeID run function rr_sandbox:disable

#tips
execute unless entity @s[tag=SMCustom] run function rr_sandbox:tip

#game
function rr_sandbox:game/gamestart
execute if entity @s[tag=GameStarted] run function rr_sandbox:game/ingame
execute if entity @s[tag=GameEnd] run function rr_sandbox:game/gameend
function everytick:no_drop

#reset
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] run function rr_sandbox:arenaclear/baseplacement
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @a remove informMe
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] as @a at @s run function arenaclear:notifystart
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Sandbox","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"In Sandbox Mode, players receive Piercing Pickaxes and a special Rocket-nomicon book which gives them access to every missile/utility item from Rocket Riders. This is just a practice gamemode to let players explore all that Rocket Riders has to offer in a non-competitive setting.","color":"white"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run function modifiers:notifymodifiers
execute if entity @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] if entity @s[tag=!GameStarted] run tag @s add sandboxLast
tag @e[predicate=custom:indimension,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if entity @s[tag=EditedSettings] as @a[predicate=custom:indimension,tag=informMe] run function arenaclear:notifystart
execute if entity @s[tag=EditedSettings] run tellraw @a[predicate=custom:indimension,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Gamemode: ","color":"gray"},{"text":"Normal","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"In Sandbox Mode, players receive Piercing Pickaxes and a special Rocket-nomicon book which gives them access to every missile/utility item from Rocket Riders. This is just a practice gamemode to let players explore all that Rocket Riders has to offer in a non-competitive setting.","color":"white"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @s[tag=EditedSettings] if entity @a[predicate=custom:indimension,tag=informMe] run function modifiers:informmodifiers
execute if entity @s[tag=EditedSettings,tag=Repeat] if entity @a[predicate=custom:indimension,tag=informMe] run function gamemodes:informrepeat
tag @a[predicate=custom:indimension,tag=informMe] remove informMe