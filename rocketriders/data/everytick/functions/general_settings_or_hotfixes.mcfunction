#Missile Display area
function lobby:missiledisplay/placedisp

#full offhand check
tag @a[nbt=!{Inventory:[{Slot:-106b}]}] remove fullOffhand
tag @a[nbt={Inventory:[{Slot:-106b}]}] add fullOffhand

#full hotbar check
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar

#add throwplat 0 and countdown so void fall stuff doesn't break
scoreboard players add @a ThrowPlat 0
scoreboard players add @a[scores={ThrowPlat=1..16}] ThrowPlat 1
scoreboard players set @a[scores={ThrowPlat=17..}] ThrowPlat 0

#hotfix to identify new players and make them not take fall damage
#anyone with a firstJoined score of 0 is a new player
scoreboard players add @a firstJoined 0
scoreboard players set @a[scores={firstJoined=0}] LeaveGame 1
scoreboard players set @a[scores={firstJoined=0}] firstJoined 1

#auto update xp bar
execute as @a store result score @s xp_bar run xp query @s levels
execute as @a unless score @s xp_bar = @s XP run function everytick:update_xp_bar

#dummy vortex (lobby)
execute as @e[tag=VortexDummy] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0 0 3 force @a
execute as @e[tag=VortexDummy] at @s run particle dust 1 1 0 1 ~ ~ ~ 0.5 0.5 0 0 3 force @a
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
replaceitem entity @a[team=Lobby] hotbar.4 written_book{pages:['["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020","color":"reset"},{"text":"Lobby Teleports","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":" \\u0020 (click to teleport)","italic":true,"color":"gray"},{"text":"\\n\\n","color":"gray"},{"text":"* ","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 1"}},{"text":"Lobby","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 1"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"Join","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":" ","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"Blue","color":"blue","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 3"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"Join","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":" ","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"Yellow","color":"gold","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 4"}},{"text":"\\n","color":"reset"},{"text":"*","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":" ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"Join","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":" ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"Spectator","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 5"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 2"}},{"text":"Modification Room","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 2"}},{"text":"\\n","color":"reset"},{"text":"* ","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 6"}},{"text":"Missile Display Area","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 6"}},{"text":"\\n","color":"reset"},{"text":"*","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 7"}},{"text":" Parkour","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger LobbyWarp set 7"}},{"text":"\\n\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[How to Play]","color":"dark_gray","clickEvent":{"action":"change_page","value":2}},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020","color":"dark_gray"},{"text":"[Credits]","color":"dark_gray","clickEvent":{"action":"change_page","value":3}}]','["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020 \\u0020","color":"reset"},{"text":"How to Play","underlined":true,"color":"light_purple"},{"text":"\\nRocket Riders is a tactical game where 2 teams ride their missiles to the enemy base to destroy their portals.\\nIn the modification room you can customize the game to your needs with many gamemodes and settings to play with.","color":"reset"}]','["",{"text":" \\u0020 \\u0020 Rocket","color":"blue"},{"text":" Riders","color":"gold"},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020","color":"reset"},{"text":"Credits","underlined":true,"color":"light_purple"},{"text":"\\n","color":"reset"},{"text":"This game was made in ","color":"dark_gray"},{"text":"4+ years","color":"light_purple"},{"text":"!","color":"dark_gray"},{"text":"\\n","color":"reset"},{"text":"This game is brought to you by:\\n- ","color":"dark_gray"},{"text":"Evtema3","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC2R-J5Ik34sPqvUSBm2uUxQ"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"YZEROgame","color":"green","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UC7-j3tkiF9PeT2FVbI8WR4A"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"Chronos22Gamer","color":"blue","clickEvent":{"action":"open_url","value":"https://namemc.com/profile/Chronos22Gamer.1"}},{"text":"\\n","color":"reset"},{"text":"- ","color":"dark_gray"},{"text":"All ","color":"dark_purple"},{"text":"52","underlined":true,"color":"gold"},{"text":" playtesters","color":"dark_purple"},{"text":"\\n\\n","color":"reset"},{"text":"This lobby was made by the","color":"dark_gray"},{"text":" Cube","color":"dark_aqua"},{"text":"Krowd","color":"gold"},{"text":" \\u0020 \\u0020 build team.","color":"dark_gray"}]'],title:"Navigation Book",author:Zeronia,display:{Name:"{\"translate\":\"Navigation Book\",\"color\":\"dark_green\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A helpful book used to gain\",\"color\":\"purple\"}","{\"translate\":\"information and teleport\",\"color\":\"purple\"}","{\"translate\":\"around the lobby.\",\"color\":\"purple\"}"]}}

#Boots stuff.
#This now actually only works when the rankedmode is installed.
replaceitem entity @a[team=Lobby,scores={XP=..300}] armor.feet leather_boots{display:{Name:'[{"text":"Unranked Boots","color":"dark_gray","bold":true,"italic":false}]',color:4210752},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @a[team=Lobby,scores={XP=301..600}] armor.feet leather_boots{display:{Name:'[{"text":"Bronze Boots","color":"dark_red","bold":true,"italic":false}]',color:8468232},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @a[team=Lobby,scores={XP=601..900}] armor.feet chainmail_boots{display:{Name:'[{"text":"Silver Boots","color":"gray","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[team=Lobby,scores={XP=901..1200}] armor.feet golden_boots{display:{Name:'[{"text":"Gold Boots","color":"gold","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[team=Lobby,scores={XP=1201..1500}] armor.feet diamond_boots{display:{Name:'[{"text":"Diamond Boots","color":"aqua","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUIDLeast:361736,UUIDMost:646052,Slot:"feet"}]}
replaceitem entity @a[team=Lobby,scores={XP=1501..}] armor.feet leather_boots{display:{Name:'[{"text":"Champion Boots","color":"red","bold":true,"italic":false}]',color:16727614},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}

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
scoreboard players add @a BulletSpawned 0
scoreboard players add @a CataSpawned 0
scoreboard players add @a CitaSpawned 0
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