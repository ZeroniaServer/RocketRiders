#team count
execute store result score @s yellowsCount run execute if entity @e[team=Yellow]
execute store result score @s bluesCount run execute if entity @e[team=Blue]

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
replaceitem entity @a[team=Lobby] hotbar.4 written_book{pages:["[\"\",{\"text\":\"\\n\"},{\"text\":\"Table of Contents:\",\"bold\":true,\"underlined\":true,\"color\":\"dark_purple\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"*Lobby Warps\",\"italic\":true,\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"change_page\",\"value\":2}},{\"text\":\"\\n\",\"color\":\"reset\",\"italic\":true},{\"text\":\"*Missiles\",\"italic\":true,\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"change_page\",\"value\":3}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"*Utility Items\",\"italic\":true,\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"change_page\",\"value\":4}},{\"text\":\"\\n \",\"color\":\"reset\"}]","[\"\",{\"text\":\"\\n      \"},{\"text\":\"Lobby Warps:\",\"bold\":true,\"underlined\":true,\"color\":\"dark_purple\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"*Lobby\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger LobbyWarp set 1\"}},{\"text\":\"\\n\",\"color\":\"dark_green\"},{\"text\":\"*Modification Room\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger LobbyWarp set 2\"}},{\"text\":\"\\n\",\"color\":\"dark_green\"},{\"text\":\"*Joinpad Blue\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger LobbyWarp set 3\"}},{\"text\":\"\\n\",\"color\":\"dark_green\"},{\"text\":\"*Joinpad Yellow\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger LobbyWarp set 4\"}},{\"text\":\"\\n\",\"color\":\"dark_green\"},{\"text\":\"*Joinpad Spectators\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger LobbyWarp set 5\"}},{\"text\":\"\\n \",\"color\":\"reset\"}]","{\"text\":\"WIP\"}","{\"text\":\"WIP\"}"],title:"Navigation Book",author:Zeronia,display:{Name:"{\"translate\":\"Navigation Book\",\"color\":\"dark_green\",\"bold\":true,\"italic\":false}",Lore:["A helpful book used to gain information and teleport around the lobby."]}}

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
scoreboard players add @a NullSpawned 0
scoreboard players add @a RifterSpawned 0
scoreboard players add @a SlashSpawned 0
scoreboard players add @a ThunSpawned 0
scoreboard players add @a TomaSpawned 0
scoreboard players add @a WarSpawned 0

#sandbox mode reset statistics
scoreboard players reset @a SBplaceSlime
scoreboard players reset @a SBplaceRS
scoreboard players reset @a SBplacePiston
scoreboard players reset @a SBplaceSPiston
scoreboard players reset @a SBplaceObs
scoreboard players reset @a SBplaceTNT
scoreboard players reset @a SBplaceBGlass
scoreboard players reset @a SBplaceYGlass
scoreboard players reset @a SBplaceBGlaze
scoreboard players reset @a SBplaceYGlaze
scoreboard players reset @a SBplaceBCon
scoreboard players reset @a SBplaceYCon