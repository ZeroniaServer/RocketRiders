#Player UUID storage
execute as @a store result score @s playerUUID run data get entity @s UUID[0]

#Missile Display area
function lobby:missiledisplay/placedisp

#Tutorial Advancements
function tutorial:advantriggers

#kill dragon's breath
kill @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"}]

#Handy tips for newcomers.
function everytick:tip

#full offhand check
tag @a[nbt=!{Inventory:[{Slot:-106b}]}] remove fullOffhand
tag @a[nbt={Inventory:[{Slot:-106b}]}] add fullOffhand

#Screw minehut render distance
execute as @a[team=Blue,gamemode=!spectator] at @s run particle minecraft:dust 0 0 1 2 ~ ~1 ~ 0.15 0.5 0.15 0 5 force @a[distance=50..]
execute as @a[team=Yellow,gamemode=!spectator] at @s run particle minecraft:dust 1 1 0 2 ~ ~1 ~ 0.15 0.5 0.15 0 5 force @a[distance=50..]
execute as @e[team=BlueBot] at @s run particle minecraft:dust 0 0 1 2 ~ ~1 ~ 0.15 0.5 0.15 0 5 force @a[distance=50..]
execute as @e[team=YellowBot] at @s run particle minecraft:dust 1 1 0 2 ~ ~1 ~ 0.15 0.5 0.15 0 5 force @a[distance=50..]

#Remove splash tags for lobby players. Just a failsave.
tag @a[team=!Blue,team=!Yellow] remove Winner
tag @a[team=!Blue,team=!Yellow] remove Loser

#full hotbar check
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar

#add throwplat 0 and countdown so void fall stuff doesn't break
scoreboard players add @a ThrowPlat 0
scoreboard players add @a[scores={ThrowPlat=1..16}] ThrowPlat 1
scoreboard players set @a[scores={ThrowPlat=17..}] ThrowPlat 0

#dummy vortex (lobby)
execute as @e[tag=VortexDummy] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @e[tag=VortexDummy] at @s run particle dust 0 0 1 1 ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @e[tag=VortexItemDummy] at @s unless entity @a[team=Lobby,distance=..6] run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=VortexItemDummy] at @s if entity @e[tag=VortexDummy,sort=nearest,limit=1,distance=..2] if entity @a[team=Lobby,distance=..6] run tp @s ~ ~ ~ facing entity @p[team=Lobby,distance=..6]

#enable trigger
scoreboard players enable @a LobbyWarp

#lobby players no items besides a book and boots
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
execute as @a[team=Lobby] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:written_book"}]}] run replaceitem entity @s hotbar.4 written_book{pages:['["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n\\u0020 \\u0020","color":"reset"},{"text":"Lobby Teleports","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":" \\u0020(Click to teleport)","italic":true,"color":"gray"},{"text":"\\n\\n","color":"gray"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Lobby.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 1"}},{"text":"Lobby","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Lobby.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 1"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"Blue","color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Blue join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"Yellow","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Yellow join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"\\n","color":"reset"},{"text":"*","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":" ","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"Join","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":" ","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"Spectator","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Spectator join pad.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Modification Room.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 2"}},{"text":"Modification Room","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Modification Room.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 2"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Missile Display Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 6"}},{"text":"Missile Display Area","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Missile Display Area.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 6"}},{"text":"\\n","color":"reset"},{"text":"*","color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Parkour.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 7"}},{"text":" Parkour","color":"dark_purple","hoverEvent":{"action":"show_text","value":["",{"text":"Click to teleport to the Parkour.","italic":true,"color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 7"}},{"text":"\\n\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[How to Play]","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to learn how to play Rocket Riders.","italic":true,"color":"white"}]},"clickEvent":{"action":"change_page","value":2}},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[Credits]","color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"Click to see credits.","italic":true,"color":"white"}]},"clickEvent":{"action":"change_page","value":3}}]','["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020 \\u0020","color":"reset"},{"text":"How to Play","underlined":true,"color":"light_purple"},{"text":"\\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\\n\\nIn the Modification Room, you can easily customize the game with many gamemodes, modifiers, and settings to play with.","color":"reset"}]','["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020 ","color":"reset"},{"text":"Credits","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"This game was made in ","color":"dark_gray"},{"text":"3+ years","color":"light_purple"},{"text":"!","color":"dark_gray"},{"text":"\\n","color":"reset"},{"text":"This game is brought to you by:\\n- ","color":"dark_gray"},{"text":"Evtema3","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out Evtema3.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC2R-J5Ik34sPqvUSBm2uUxQ"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"YZEROgame","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out YZEROgame.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC7-j3tkiF9PeT2FVbI8WR4A"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"Chronos22Gamer","color":"#0248e9","hoverEvent":{"action":"show_text","value":["",{"text":"Click to check out Chronos22Gamer.","italic":true,"color":"white"}]},"clickEvent":{"action":"open_url","value":"https://namemc.com/profile/Chronos22Gamer.1"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"All ","color":"dark_purple"},{"text":"60+","underlined":true,"color":"gold"},{"text":" playtesters","color":"dark_purple"},{"text":"\\n\\n","color":"reset"},{"text":"This lobby was made by the","color":"dark_gray"},{"text":" Cube","color":"dark_aqua"},{"text":"Krowd","color":"gold"},{"text":" \\u0020 \\u0020 build team.","color":"dark_gray"}]'],title:"Navigation Book",author:Zeronia,display:{Name:"{\"translate\":\"Navigation Book\",\"color\":\"dark_green\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A helpful book used to gain\",\"color\":\"purple\"}","{\"translate\":\"information and teleport\",\"color\":\"purple\"}","{\"translate\":\"around the lobby.\",\"color\":\"purple\"}"]}}

#lobby player armor
execute as @a[team=Lobby] run function game:givegear

#lobby player book anti-dupe
execute as @a[team=Lobby] store result score @s HasNavBook run clear @s written_book 0
clear @a[team=Lobby,scores={HasNavBook=2..}] written_book

#lobby player spawnpoint set
spawnpoint @a[team=Lobby] -43 211 78

#TEMP so that kickouts from the end dimension actually display titles and don't screw up horribly
title @a[tag=kickoutEnd,nbt={Dimension:0}] title ["",{"text":"Access Denied.","color":"red","bold":true}]
title @a[tag=kickoutEnd,nbt={Dimension:0}] subtitle ["",{"text":"You can't enter a staff only area!","color":"dark_red","bold":false}]
title @a[tag=kickoutEnd,nbt={Dimension:0}] times 5 30 5
tag @a[tag=kickoutEnd,nbt={Dimension:0}] remove kickoutEnd

#TEMP so that unofficial devs who leave the end are back to adventure mode + lobby
scoreboard players set @a[tag=unofficialDev,nbt={Dimension:0},tag=!unDevTeleporting] LeaveGame 1
tag @a[tag=unofficialDev,nbt={Dimension:0},tag=!unDevTeleporting] remove unofficialDev
tag @a[tag=unDevTeleporting] remove unDevTeleporting

#placeholder missile spawn score
scoreboard players add @a AuxSpawned 0
scoreboard players add @a AntsSpawned 0
scoreboard players add @a BladeSpawned 0
scoreboard players add @a BroadSpawned 0
scoreboard players add @a BSurpriseSpawned 0
scoreboard players add @a BulletSpawned 0
scoreboard players add @a CataSpawned 0
scoreboard players add @a CitaSpawned 0
scoreboard players add @a DuplexSpawned 0
scoreboard players add @a GemiSpawned 0
scoreboard players add @a GuardSpawned 0
scoreboard players add @a HurSpawned 0
scoreboard players add @a HyperSpawned 0
scoreboard players add @a JugbSpawned 0
scoreboard players add @a LifterSpawned 0
scoreboard players add @a NullSpawned 0
scoreboard players add @a RifterSpawned 0
scoreboard players add @a SlashSpawned 0
scoreboard players add @a ThunSpawned 0
scoreboard players add @a TomaSpawned 0
scoreboard players add @a WarSpawned 0
scoreboard players add @a YSurpriseSpawned 0