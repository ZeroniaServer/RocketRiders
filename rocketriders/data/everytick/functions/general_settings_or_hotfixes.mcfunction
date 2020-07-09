#######################################################
## GENERAL SETTINGS OR HOTFIXES: Where miscellaneous ##
## things happen that don't really fit anywhere else ##
#######################################################

#Player UUID storage
execute as @a store result score @s playerUUID run data get entity @s UUID[0]

#Missile Display Area
function lobby:missiledisplay/placedisp

#Tutorial Advancements
function tutorial:advantriggers

#Handy tips for newcomers
function everytick:tip

#Disable trigger objectives when appropriate
execute as @a[team=!Lobby] run trigger MaxItemSec set 0
execute as @s[tag=EditedSettings] as @a run trigger MaxItemSec set 0
execute as @a[team=!Lobby] run trigger daytime set 0
execute as @s[tag=EditedSettings] as @a run trigger daytime set 0

#Launch pad in Modification Room
execute as @s[tag=!GameStarted] as @a[team=Lobby] at @s if entity @e[tag=modroomGoBack,limit=1,distance=..1,type=area_effect_cloud] run effect give @s jump_boost 1 20 true
execute as @s[tag=!GameStarted] as @a[team=Lobby] at @s unless entity @e[tag=modroomGoBack,limit=1,distance=..1,type=area_effect_cloud] run effect clear @s jump_boost

#Full offhand check
tag @a[nbt=!{Inventory:[{Slot:-106b}]}] remove fullOffhand
tag @a[nbt={Inventory:[{Slot:-106b}]}] add fullOffhand

#Full hotbar check
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar

#Distance particles (counteract low server render distance)
# execute as @a[team=Blue,gamemode=!spectator] at @s run particle minecraft:dust 0 0 1 2 ~ ~1 ~ 0.15 0.5 0.15 0 5 force @a[distance=50..]
# execute as @a[team=Yellow,gamemode=!spectator] at @s run particle minecraft:dust 1 1 0 2 ~ ~1 ~ 0.15 0.5 0.15 0 5 force @a[distance=50..]
# execute as @e[team=BlueBot,type=armor_stand] at @s run particle minecraft:dust 0 0 1 2 ~ ~1 ~ 0.15 0.5 0.15 0 5 force @a[distance=50..]
# execute as @e[team=YellowBot,type=armor_stand] at @s run particle minecraft:dust 1 1 0 2 ~ ~1 ~ 0.15 0.5 0.15 0 5 force @a[distance=50..]

#Remove Splash tags for Lobby players. Just a failsave
tag @a[team=!Blue,team=!Yellow] remove Winner
tag @a[team=!Blue,team=!Yellow] remove Loser

#For Canopies to continue operating (necessary for void falling)
scoreboard players add @a ThrowPlat 0
scoreboard players add @a[scores={ThrowPlat=1..16}] ThrowPlat 1
scoreboard players set @a[scores={ThrowPlat=17..}] ThrowPlat 0

#Decoy Vortex (Lobby)
execute as @e[tag=VortexDummy,type=area_effect_cloud] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @e[tag=VortexDummy,type=area_effect_cloud] at @s run particle dust 0 0 1 1 ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @e[tag=VortexItemDummy,type=armor_stand] at @s unless entity @a[team=Lobby,distance=..6] run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=VortexItemDummy,type=armor_stand] at @s if entity @e[tag=VortexDummy,sort=nearest,limit=1,distance=..2,type=area_effect_cloud] if entity @a[team=Lobby,distance=..6] run tp @s ~ ~ ~ facing entity @p[team=Lobby,distance=..6]

#Lobby players have no items besides a book (and boots, if Duel is present)
replaceitem entity @a[team=Lobby] hotbar.0 air
replaceitem entity @a[team=Lobby] hotbar.1 air
replaceitem entity @a[team=Lobby] hotbar.2 air
replaceitem entity @a[team=Lobby] hotbar.3 air
replaceitem entity @a[team=Lobby] hotbar.5 air
replaceitem entity @a[team=Lobby] hotbar.6 air
replaceitem entity @a[team=Lobby] hotbar.7 air
replaceitem entity @a[team=Lobby] hotbar.8 air
replaceitem entity @a[team=Lobby] armor.head air
replaceitem entity @a[team=Lobby] armor.chest air
replaceitem entity @a[team=Lobby] armor.legs air
execute as @a[team=Lobby] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:written_book"}]}] run replaceitem entity @s hotbar.4 written_book{pages:['["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n\\u0020 \\u0020 \\u0020 ","color":"reset"},{"text":"Lobby Warps","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":" \\u0020(Click to teleport)","italic":true,"color":"gray"},{"text":"\\n\\n","color":"gray"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Lobby.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 1"}},{"text":"Lobby","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Lobby.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 1"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"Blue","color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"Yellow","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"\\n","color":"reset"},{"text":"*","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":" ","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":" ","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"Spectator","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Modification Room.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 2"}},{"text":"Modification Room","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Modification Room.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 2"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Missile Display Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 6"}},{"text":"Missile Display Area","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Missile Display Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 6"}},{"text":"\\n","color":"reset"},{"text":"*","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Parkour.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 7"}},{"text":" Parkour","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Parkour.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 7"}},{"text":"\\n\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[How to Play]","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to learn how to play Rocket Riders.","italic":true,"color":"white"}]},"clickEvent":{"action":"change_page","value":2}},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[Credits]","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to see credits.","italic":true,"color":"white"}]},"clickEvent":{"action":"change_page","value":3}}]','["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020 \\u0020","color":"reset"},{"text":"How to Play","underlined":true,"color":"light_purple"},{"text":"\\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\\n\\nIn the Modification Room, you can easily customize the game with many gamemodes, modifiers, and settings to play with.","color":"reset"}]','["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020 ","color":"reset"},{"text":"Credits","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"This game was made in ","color":"dark_gray"},{"text":"3+ years","color":"light_purple"},{"text":"!","color":"dark_gray"},{"text":"\\n","color":"reset"},{"text":"This game is brought to you by:\\n- ","color":"dark_gray"},{"text":"Evtema3","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out Evtema3.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC2R-J5Ik34sPqvUSBm2uUxQ"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"YZEROgame","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out YZEROgame.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC7-j3tkiF9PeT2FVbI8WR4A"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"Chronos22Gamer","color":"#0248e9","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out Chronos22Gamer.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCK1WeblW__mSmkjV4jJ5h-Q/featured"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"All ","color":"dark_purple"},{"text":"60+","underlined":true,"color":"gold"},{"text":" playtesters","color":"dark_purple"},{"text":"\\n\\n","color":"reset"},{"text":"This lobby was made by the","color":"dark_gray"},{"text":" Cube","color":"dark_aqua"},{"text":"Krowd","color":"gold"},{"text":" \\u0020 \\u0020 build team.","color":"dark_gray"}]'],title:"Navigation Book",author:Zeronia,display:{Name:"{\"translate\":\"Navigation Book\",\"color\":\"dark_green\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A helpful book used to gain\",\"color\":\"purple\"}","{\"translate\":\"information and teleport\",\"color\":\"purple\"}","{\"translate\":\"around the lobby.\",\"color\":\"purple\"}"]}}

#Lobby player book anti-dupe
execute as @a[team=Lobby] store result score @s HasNavBook run clear @s written_book 0
clear @a[team=Lobby,scores={HasNavBook=2..}] written_book

##TODO REMOVE
#TEMP so that kickouts from the end dimension actually display titles and don't screw up horribly
title @a[tag=kickoutEnd,nbt={Dimension:0}] title ["",{"text":"Access Denied.","color":"red","bold":true}]
title @a[tag=kickoutEnd,nbt={Dimension:0}] subtitle ["",{"text":"You can't enter a staff only area!","color":"dark_red","bold":false}]
title @a[tag=kickoutEnd,nbt={Dimension:0}] times 5 30 5
tag @a[tag=kickoutEnd,nbt={Dimension:0}] remove kickoutEnd

#TEMP so that unofficial devs who leave the end are back to adventure mode + lobby
scoreboard players set @a[tag=unofficialDev,nbt={Dimension:0},tag=!unDevTeleporting] LeaveGame 1
tag @a[tag=unofficialDev,nbt={Dimension:0},tag=!unDevTeleporting] remove unofficialDev
tag @a[tag=unDevTeleporting] remove unDevTeleporting