##Notifies specific players of active Modifiers
tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"}]
execute unless entity @s[tag=!Instamine,tag=!NoFall,tag=!Explosive,tag=!Residers,tag=!Sonar,tag=!Molerat,tag=!Minute,tag=!SurpriseEgg,tag=!WindDown,tag=!SplashStreams,tag=!SpamClick,tag=!NinjaJump,tag=!Hardcore,tag=!DoublePortal,tag=!ClutterCollector] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Modifiers:","color":"gray"},{"text":" (hover names for info)","color":"dark_gray","italic":true}]
execute if entity @s[tag=!Instamine,tag=!NoFall,tag=!Explosive,tag=!Residers,tag=!Sonar,tag=!Molerat,tag=!Minute,tag=!SurpriseEgg,tag=!WindDown,tag=!SplashStreams,tag=!SpamClick,tag=!NinjaJump,tag=!Hardcore,tag=!DoublePortal,tag=!ClutterCollector,scores={servermode=0}] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Modifiers:","color":"gray"},{"text":" None ","color":"aqua"}]
function modifiers:generatelist
function modifiers:printlistinform

#Also notifies about Game Rules (because I'm lazy)
tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"}]
tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Game Rules","color":"gray"},{"text":" (hover for info)","color":"dark_gray","italic":true,"hoverEvent":{"action":"show_text","value":[{"text":"test"}]}}]

execute if entity @s[scores={servermode=0},tag=!Repeat] run tellraw @a[tag=informMe] [{"text":""}]
execute if entity @s[scores={servermode=1}] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"}]
execute if entity @s[scores={servermode=2}] run tellraw @a[tag=informMe] [{"text":""}]