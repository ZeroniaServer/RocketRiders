#leave midgame
execute if entity @s[tag=!SMActive] run function game:leavemidgame

#spawnables
function rr_powerups:everytick/spawnables
function rr_powerups:everytick/cancel_utility

#crystal pads
execute if entity @e[type=marker,tag=captureMiddle,scores={captureYellow=1..}] run function rr_powerups:everytick/crystalpadblue
execute if entity @e[type=marker,tag=captureMiddle,scores={captureBlue=1..}] run function rr_powerups:everytick/crystalpadyellow

#Short-ranged ambient sound for crystals
scoreboard players add @e[type=end_crystal,tag=PUCrystal] CmdData 1
execute as @e[type=end_crystal,tag=PUCrystal,scores={CmdData=5}] at @s run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.45 1.4
scoreboard players reset @e[type=end_crystal,tag=PUCrystal,scores={CmdData=20..}] CmdData
execute unless entity @e[type=end_crystal,tag=PUCrystal] run stopsound @a master minecraft:block.beacon.ambient


#extra stuff for obsidian border
fill -15 64 67 10 64 67 obsidian
fill 14 64 67 39 64 67 obsidian
fill -15 64 -67 10 64 -67 obsidian
fill 14 64 -67 39 64 -67 obsidian
fill -15 33 67 39 33 67 obsidian
fill -15 33 -67 39 33 -67 obsidian
fill -15 63 67 -15 34 67 obsidian
fill 39 63 67 39 34 67 obsidian
fill -15 63 -67 -15 34 -67 obsidian
fill 39 63 -67 39 34 -67 obsidian

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!doStacking] RandomItem matches ..1 as @a unless entity @s[team=!Blue,team=!Yellow] run function item:antidupe
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function items:minutemix

#Spawnpoints
execute as @a[team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute as @a[team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#powerup RNG
execute if entity @e[type=marker,tag=captureMiddle,scores={capturePoint=1..}] run scoreboard players add @s powerupcount 1
execute if entity @e[type=marker,tag=captureMiddle,scores={capturePoint=0}] run scoreboard players set @s powerupcount 0
execute if entity @s[scores={powerupcount=20}] run scoreboard players remove @s PowerupDisplay 1
execute if entity @s[scores={powerupcount=20}] run scoreboard players reset @s powerupcount
execute if entity @e[type=marker,scores={capturePoint=0,captureBlue=0,captureYellow=0}] run scoreboard players set @s PowerupDisplay 12
execute if entity @s[scores={PowerupDisplay=..0}] run function rr_powerups:items/rng
scoreboard players set @s[scores={PowerupDisplay=..0}] PowerupDisplay 12

#tracking for lockdown achievement
execute as @e[type=marker,tag=captureMiddle,scores={capturePoint=1,bCapturedTime=..1200}] run scoreboard players add @s bCapturedTime 1
execute as @e[type=marker,tag=captureMiddle,scores={capturePoint=2,yCapturedTime=..1200}] run scoreboard players add @s yCapturedTime 1
execute as @e[type=marker,tag=captureMiddle,scores={capturePoint=0}] run scoreboard players set @s bCapturedTime 0
execute as @e[type=marker,tag=captureMiddle,scores={capturePoint=0}] run scoreboard players set @s yCapturedTime 0

#capture the point (+ optional gamemode stuff)
tag @a[tag=onCapturePoint] remove onCapturePoint
execute as @e[type=marker,tag=captureMiddle] at @s as @e[type=player,team=Blue,distance=..7.1] at @s if entity @s[y=54,dy=1] run tag @s add onCapturePoint
execute as @e[type=marker,tag=captureMiddle] at @s as @e[type=player,team=Yellow,distance=..7.1] at @s if entity @s[y=54,dy=1] run tag @s add onCapturePoint
#hotfix to prevent players from falling through the platform if they break the blocks beneath them
execute as @e[type=marker,tag=captureMiddle] at @s as @e[type=player,tag=onCapturePoint,distance=..5.5] at @s if entity @s[y=53,dy=0.5] if block ~ ~-1 ~ air run tp @s ~ ~0.1 ~
execute as @e[type=player,tag=onCapturePoint] at @s unless entity @s[y=54,dy=1] unless entity @e[type=marker,tag=captureMiddle,distance=..7.1,limit=1] run tag @s remove onCapturePoint

execute if entity @a[team=Blue,tag=onCapturePoint] unless entity @a[team=Yellow,tag=onCapturePoint] run scoreboard players add @e[type=marker,tag=captureMiddle,scores={captureYellow=0},tag=!contested] captureBlue 2
execute if entity @a[team=Blue,tag=onCapturePoint] unless entity @a[team=Yellow,tag=onCapturePoint] run tag @e[type=marker,tag=captureMiddle] remove contested

execute if entity @a[team=Yellow,tag=onCapturePoint] unless entity @a[team=Blue,tag=onCapturePoint] run scoreboard players add @e[type=marker,tag=captureMiddle,scores={captureBlue=0},tag=!contested] captureYellow 2
execute if entity @a[team=Yellow,tag=onCapturePoint] unless entity @a[team=Blue,tag=onCapturePoint] run tag @e[type=marker,tag=captureMiddle] remove contested

execute unless entity @a[tag=onCapturePoint] run tag @e[type=marker,tag=captureMiddle] remove contested

scoreboard players set @e[type=marker,tag=captureMiddle,tag=!contested,scores={captureBlue=99..}] capturePoint 1
scoreboard players set @e[type=marker,tag=captureMiddle,tag=!contested,scores={captureYellow=99..}] capturePoint 2

execute if entity @a[team=Yellow,tag=onCapturePoint] if entity @a[team=Blue,tag=onCapturePoint] if entity @e[type=marker,tag=captureMiddle,tag=!contested] run function rr_powerups:items/tetrisreset
execute if entity @a[team=Yellow,tag=onCapturePoint] if entity @a[team=Blue,tag=onCapturePoint] run tag @e[type=marker,tag=captureMiddle] add contested
scoreboard players remove @e[type=marker,tag=contested] captureBlue 1
scoreboard players remove @e[type=marker,tag=contested] captureYellow 1

execute as @e[type=marker,tag=captureMiddle,tag=!contested,scores={captureBlue=1..}] if score @s captureBlue >= @s captureYellow run function rr_powerups:game/fancyblue
execute as @e[type=marker,tag=captureMiddle,tag=!contested,scores={captureYellow=1..}] if score @s captureYellow >= @s captureBlue run function rr_powerups:game/fancyyellow
execute as @e[type=marker,tag=captureMiddle,tag=contested] run function rr_powerups:game/fancycontested

execute as @e[type=marker,tag=captureMiddle,scores={captureBlue=99..}] if entity @a[team=Yellow,tag=onCapturePoint] run scoreboard players remove @s captureBlue 1
execute as @e[type=marker,tag=captureMiddle,scores={captureYellow=99..}] if entity @a[team=Blue,tag=onCapturePoint] run scoreboard players remove @s captureYellow 1
execute as @e[type=marker,tag=captureMiddle,scores={captureBlue=1..99}] unless entity @a[team=Blue,tag=onCapturePoint] run scoreboard players remove @s captureBlue 1
execute as @e[type=marker,tag=captureMiddle,scores={captureYellow=1..99}] unless entity @a[team=Yellow,tag=onCapturePoint] run scoreboard players remove @s captureYellow 1
execute as @e[type=marker,tag=captureMiddle,scores={captureYellow=..0,captureBlue=..0}] run scoreboard players set @s capturePoint 0

#powerup platform design
execute as @e[type=marker,tag=captureMiddle] at @s run function rr_powerups:everytick/powerup_platform

#max scores and min scores
scoreboard players set @e[type=marker,tag=captureMiddle,scores={captureYellow=..0}] captureYellow 0
scoreboard players set @e[type=marker,tag=captureMiddle,scores={captureYellow=100..}] captureYellow 100
scoreboard players set @e[type=marker,tag=captureMiddle,scores={captureBlue=..0}] captureBlue 0
scoreboard players set @e[type=marker,tag=captureMiddle,scores={captureBlue=100..}] captureBlue 100

#bossbar
bossbar set rr_powerups:capture_progress style progress
bossbar set rr_powerups:capture_progress players @a[team=!Lobby]

execute as @e[type=marker,tag=captureMiddle] if score @s captureBlue >= @s captureYellow store result bossbar rr_powerups:capture_progress value run scoreboard players get @s captureBlue
execute as @e[type=marker,tag=captureMiddle,tag=!contested] if score @s captureBlue > @s captureYellow run bossbar set rr_powerups:capture_progress color blue
execute as @e[type=marker,tag=captureMiddle] if score @s captureYellow >= @s captureBlue store result bossbar rr_powerups:capture_progress value run scoreboard players get @s captureYellow
execute as @e[type=marker,tag=captureMiddle,tag=!contested] if score @s captureYellow > @s captureBlue run bossbar set rr_powerups:capture_progress color yellow
execute as @e[type=marker,tag=captureMiddle,tag=!contested] if score @s captureBlue matches ..0 if score @s captureYellow matches ..0 run bossbar set rr_powerups:capture_progress color white
execute as @e[type=marker,tag=captureMiddle,tag=contested] run bossbar set rr_powerups:capture_progress color red

execute as @e[type=marker,tag=captureMiddle,tag=!contested,limit=1] if score @s capturePoint matches 0 if score @s captureBlue >= @s captureYellow if score @s captureBlue matches 1.. run bossbar set rr_powerups:capture_progress name [{"text":"Blue Capturing...","color":"blue","bold":true}]
execute as @e[type=marker,tag=captureMiddle,tag=!contested,limit=1] if score @s capturePoint matches 0 if score @s captureYellow >= @s captureBlue if score @s captureYellow matches 1.. run bossbar set rr_powerups:capture_progress name [{"text":"Yellow Capturing...","color":"yellow","bold":true}]
execute as @e[type=marker,tag=captureMiddle,tag=!contested,limit=1] if score @s capturePoint matches 0 if score @s captureBlue matches ..0 if score @s captureYellow matches ..0 run bossbar set rr_powerups:capture_progress name [{"text":"Capture Progress","color":"white","bold":true}]
execute as @e[type=marker,tag=captureMiddle,tag=contested] run bossbar set rr_powerups:capture_progress name [{"text":"Contested!","color":"dark_red","bold":true}]

execute as @e[type=marker,tag=captureMiddle,tag=!contested,limit=1] if score @s capturePoint matches 1 run bossbar set rr_powerups:capture_progress name [{"text":"Blue Captured!","color":"blue","bold":true}]
execute as @e[type=marker,tag=captureMiddle,tag=!contested,limit=1] if score @s capturePoint matches 2 run bossbar set rr_powerups:capture_progress name [{"text":"Yellow Captured!","color":"yellow","bold":true}]

#broken elytra replacing
execute as @a[team=Blue,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b}]}] at @s if predicate custom:canopy_nearyellow run tag @s add BreakEly
execute as @a[team=Yellow,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b}]}] at @s if predicate custom:canopy_nearblue run tag @s add BreakEly

execute as @a[team=Blue,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{Damage:431}}]}] run tag @s add BreakEly
execute as @a[team=Yellow,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{Damage:431}}]}] run tag @s add BreakEly

execute as @a[tag=BreakEly] run title @s title ["",{"text":" "}]
execute as @a[tag=BreakEly] run title @s subtitle ["",{"text":"Elytra ","color":"dark_red","italic":true,"bold":true},{"text":"expired!","color":"red"}]
execute as @a[tag=BreakEly] at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 0.6 1
execute as @a[tag=BreakEly] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.4 1.2
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Blue,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Yellow,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Blue,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[team=Yellow,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}
tag @a[tag=BreakEly] remove BreakEly

#broken trident clearing
clear @a[team=Blue,nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{Damage:250}}]}] trident 1
clear @a[team=Yellow,nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{Damage:250}}]}] trident 1

#trident auto riptide
execute as @a[nbt={Inventory:[{id:"minecraft:trident"}]}] unless entity @s[team=!Yellow,team=!Blue] run function rr_powerups:everytick/auto_riptide

#trident antidupe
tag @e[type=trident,nbt={inGround:1b}] add return
execute as @e[type=trident,tag=return] store result score @s playerUUID run data get entity @s Owner[0]
execute if entity @s[tag=!doStacking] as @e[type=trident,tag=return] at @s run function rr_powerups:everytick/trident_antidupe
tag @a[tag=tridentChecked] remove tridentChecked

#slap fish
execute as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_powerups:everytick/slap_fish

#infinity saber
execute as @a[tag=Infinity] if entity @s[team=!Yellow,team=!Blue] run tag @s remove Infinity
execute if score $infinity PowerupDisplay matches 1.. run scoreboard players add $infinity powerupcount 1
execute if score $infinity powerupcount matches 20.. if score $infinity PowerupDisplay matches 1.. run scoreboard players remove $infinity PowerupDisplay 1
execute if score $infinity powerupcount matches 20.. run scoreboard players set $infinity powerupcount 0
execute if score $infinity PowerupDisplay matches 0 as @a[tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 1.5
execute if score $infinity PowerupDisplay matches 0 as @a[tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run clear @s bow
execute if score $infinity PowerupDisplay matches 0 as @a[team=Yellow,tag=Infinity] run function game:saberyellow
execute if score $infinity PowerupDisplay matches 0 as @a[team=Blue,tag=Infinity] run function game:saberblue
execute if score $infinity PowerupDisplay matches 0 as @a[tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar [{"text":"Infinity Saber expired.","color":"red"}]
execute if score $infinity PowerupDisplay matches 0 as @a[tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute if score $infinity PowerupDisplay matches 0 as @a[tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run tag @s remove Infinity

#actionbar
execute if entity @e[type=marker,tag=captureMiddle,scores={capturePoint=1}] if entity @s[scores={PowerupDisplay=2..}] as @a[team=Blue,tag=!DelayActionbar,tag=!Infinity] run title @s actionbar ["",{"text":"A new Powerup will be given out in ","color":"light_purple"},{"score":{"name":"@e[type=armor_stand,tag=Selection,limit=1]","objective":"PowerupDisplay"},"color":"dark_purple","bold":true},{"text":" seconds!","color":"light_purple"}]
execute if entity @e[type=marker,tag=captureMiddle,scores={capturePoint=1}] if entity @s[scores={PowerupDisplay=..1}] as @a[team=Blue,tag=!DelayActionbar,tag=!Infinity] run title @s actionbar ["",{"text":"A new Powerup will be given out in ","color":"light_purple"},{"score":{"name":"@e[type=armor_stand,tag=Selection,limit=1]","objective":"PowerupDisplay"},"color":"dark_purple","bold":true},{"text":" second!","color":"light_purple"}]
execute if entity @e[type=marker,tag=captureMiddle,scores={capturePoint=2}] if entity @s[scores={PowerupDisplay=2..}] as @a[team=Yellow,tag=!DelayActionbar,tag=!Infinity] run title @s actionbar ["",{"text":"A new Powerup will be given out in ","color":"dark_purple"},{"score":{"name":"@e[type=armor_stand,tag=Selection,limit=1]","objective":"PowerupDisplay"},"color":"light_purple","bold":true},{"text":" seconds!","color":"dark_purple"}]
execute if entity @e[type=marker,tag=captureMiddle,scores={capturePoint=2}] if entity @s[scores={PowerupDisplay=..1}] as @a[team=Yellow,tag=!DelayActionbar,tag=!Infinity] run title @s actionbar ["",{"text":"A new Powerup will be given out in ","color":"dark_purple"},{"score":{"name":"@e[type=armor_stand,tag=Selection,limit=1]","objective":"PowerupDisplay"},"color":"light_purple","bold":true},{"text":" second!","color":"dark_purple"}]

#win
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 74 nether_portal unless block 13 38 -74 nether_portal run function rr_powerups:game/winboth
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 -74 nether_portal run function rr_powerups:game/winboth
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 74 nether_portal unless block 11 38 -74 nether_portal run function rr_powerups:game/winboth
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 74 nether_portal unless block 11 38 -74 nether_portal run function rr_powerups:game/winboth
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run function rr_powerups:game/winboth

execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!DoublePortal] unless block 13 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!DoublePortal] unless block 11 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal run function game:winblue

execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=DoublePortal] unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run function game:winyellow