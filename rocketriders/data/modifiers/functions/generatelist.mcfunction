#Generates list of modifiers as JSON text components in storage
data modify storage rocketriders:modifiers list set value []
execute if entity @s[tag=Instamine] run data modify storage rocketriders:modifiers list append value '{"text":"Instamine","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Players receive Haste 255 and can mine (most) blocks instantly.","color":"white"}]}}'
execute if entity @s[tag=NoFall] run data modify storage rocketriders:modifiers list append value '{"text":"No Fall","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Players are immune to fall damage.","color":"white"}]}}'
execute if entity @s[tag=Explosive] run data modify storage rocketriders:modifiers list append value '{"text":"Explosive","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"TNT, Fireballs, Nova Rockets, and the Vortex all do more explosion damage.","color":"white"}]}}'
execute if entity @s[tag=Residers] run data modify storage rocketriders:modifiers list append value '{"text":"Residers","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Players cannot leave their bases.","color":"white"}]}}'
execute if entity @s[tag=Sonar] run data modify storage rocketriders:modifiers list append value '{"text":"Sonar","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Players lose Night Vision so they cannot see blocks. Other players, projectiles, TNT, and utilities have glowing outlines.","color":"white"}]}}'
execute if entity @s[tag=Molerat] run data modify storage rocketriders:modifiers list append value '{"text":"Molerat","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"A big block of glass spawns in the center of the map, which players must break through to damage the other base.","color":"white"}]}}'
execute if entity @s[tag=Minute] run data modify storage rocketriders:modifiers list append value '{"text":"Minute","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Players receive a new set of 8 items every minute.","color":"white"}]}}'
execute if entity @s[tag=SurpriseEgg] run data modify storage rocketriders:modifiers list append value '{"text":"Surprise Egg","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Players can receive a special spawn egg that spawns a random missile. These can stack up to 3.","color":"white"}]}}'
execute if entity @s[tag=WindDown] run data modify storage rocketriders:modifiers list append value '{"text":"Wind Down","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"After every item given, the time between receiving items decreases, intensifying the game as it continues.","color":"white"}]}}'
execute if entity @s[tag=SplashStreams] run data modify storage rocketriders:modifiers list append value '{"text":"Splash Streams","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Liquids placed by Splash bottles are permanent.","color":"white"}]}}'
execute if entity @s[tag=SpamClick] run data modify storage rocketriders:modifiers list append value '{"text":"Spam Click","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Players have no delay between melee attacks on enemies.","color":"white"}]}}'
execute if entity @s[tag=NinjaJump] run data modify storage rocketriders:modifiers list append value '{"text":"Ninja Jump","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Players have increased speed and jump height.","color":"white"}]}}'
execute if entity @s[tag=Hardcore] run data modify storage rocketriders:modifiers list append value '{"text":"Hardcore","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Players have three hearts of health and bases are one block thick.","color":"white"}]}}'
execute if entity @s[tag=DoublePortal] run data modify storage rocketriders:modifiers list append value '{"text":"Double Portal","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Both portals must be broken to win the game.","color":"white"}]}}'
execute if entity @s[tag=ClutterCollector] run data modify storage rocketriders:modifiers list append value '{"text":"Clutter Collector","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Explosions do no block damage between the bases.","color":"white"}]}}'

#Creates companion list of each modifier's name length
data modify storage rocketriders:modifiers length set value []
execute if entity @s[tag=Instamine] run data modify storage rocketriders:modifiers length append value 9
execute if entity @s[tag=NoFall] run data modify storage rocketriders:modifiers length append value 7
execute if entity @s[tag=Explosive] run data modify storage rocketriders:modifiers length append value 9
execute if entity @s[tag=Residers] run data modify storage rocketriders:modifiers length append value 7
execute if entity @s[tag=Sonar] run data modify storage rocketriders:modifiers length append value 5
execute if entity @s[tag=Molerat] run data modify storage rocketriders:modifiers length append value 7
execute if entity @s[tag=Minute] run data modify storage rocketriders:modifiers length append value 6
execute if entity @s[tag=SurpriseEgg] run data modify storage rocketriders:modifiers length append value 12
execute if entity @s[tag=WindDown] run data modify storage rocketriders:modifiers length append value 9
execute if entity @s[tag=SplashStreams] run data modify storage rocketriders:modifiers length append value 14
execute if entity @s[tag=SpamClick] run data modify storage rocketriders:modifiers length append value 10
execute if entity @s[tag=NinjaJump] run data modify storage rocketriders:modifiers length append value 10
execute if entity @s[tag=Hardcore] run data modify storage rocketriders:modifiers length append value 8
execute if entity @s[tag=DoublePortal] run data modify storage rocketriders:modifiers length append value 13
execute if entity @s[tag=ClutterCollector] run data modify storage rocketriders:modifiers length append value 17

#Splits this list into lines for chat legibility
data modify storage rocketriders:modifiers line set value []
data modify storage rocketriders:modifiers line append value []
function modifiers:splitlist