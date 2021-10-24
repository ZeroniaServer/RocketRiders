##Notifies all players of active Modifiers
execute unless entity @s[scores={servermode=1},tag=!WindDownForce] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"}]
execute unless entity @s[scores={servermode=1},tag=!WindDownForce] unless entity @s[tag=!Instamine,tag=!NoFall,tag=!Explosive,tag=!Residers,tag=!Sonar,tag=!Molerat,tag=!Minute,tag=!SurpriseEgg,tag=!WindDown,tag=!SplashStreams,tag=!SpamClick,tag=!NinjaJump,tag=!Hardcore,tag=!DoublePortal,tag=!ClutterCollector] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Modifiers:","color":"gray"},{"text":" (hover names for info)","color":"dark_gray","italic":true}]
execute unless entity @s[tag=!Instamine,tag=!NoFall,tag=!Explosive,tag=!Residers,tag=!Sonar,tag=!Molerat,tag=!Minute,tag=!SurpriseEgg,tag=!WindDown,tag=!SplashStreams,tag=!SpamClick,tag=!NinjaJump,tag=!Hardcore,tag=!DoublePortal,tag=!ClutterCollector,scores={servermode=0}] run function modifiers:generatelist
execute unless entity @s[tag=!Instamine,tag=!NoFall,tag=!Explosive,tag=!Residers,tag=!Sonar,tag=!Molerat,tag=!Minute,tag=!SurpriseEgg,tag=!WindDown,tag=!SplashStreams,tag=!SpamClick,tag=!NinjaJump,tag=!Hardcore,tag=!DoublePortal,tag=!ClutterCollector,scores={servermode=0}] run function modifiers:printlist
execute if entity @s[tag=!Instamine,tag=!NoFall,tag=!Explosive,tag=!Residers,tag=!Sonar,tag=!Molerat,tag=!Minute,tag=!SurpriseEgg,tag=!WindDown,tag=!SplashStreams,tag=!SpamClick,tag=!NinjaJump,tag=!Hardcore,tag=!DoublePortal,tag=!ClutterCollector,scores={servermode=0}] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Selected Modifiers:","color":"gray"},{"text":" None ","color":"aqua"}]

#Also notifies about Game Rules
execute unless entity @s[scores={servermode=1},tag=!WindDownForce] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"}]
execute unless entity @s[scores={servermode=1},tag=!WindDownForce] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Game Rules","color":"gold","hoverEvent":{"action":"show_text","contents":[{"storage":"rocketriders:gamerules","nbt":"list[]","interpret":true,"separator":{"text":"\n"}}]}},{"text":" (hover for info)","color":"dark_gray","italic":true}]

execute if entity @s[scores={servermode=0}] unless entity @s[tag=Repeat,tag=!RepeatForever] run tellraw @a [{"text":""}]
execute if entity @s[scores={servermode=1},tag=WindDownForce] run tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"}]
execute if entity @s[scores={servermode=2}] run tellraw @a [{"text":""}]