#leave midgame
function game:leavemidgame

#general
function rr_powerups:items/antidupe
function rr_powerups:items/spawnitems
function rr_powerups:everytick/powerup_platform
function rr_powerups:everytick/smoke_bomb
function rr_powerups:everytick/lava_splash
function rr_powerups:everytick/cancel_utility

#item RNG and spawnpoints
scoreboard players add @e[tag=Selection] RandomItem 1
execute if entity @e[scores={RandomItem=400..}] run function items:rng
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar
execute as @e[scores={RandomItem=400..}] as @a unless @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @e[scores={RandomItem=400..}] as @a[tag=fullHotbar] unless @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
scoreboard players reset @e[scores={RandomItem=400..}] RandomItem
spawnpoint @a[team=Blue] 12 64 -66
spawnpoint @a[team=Yellow] 12 64 66

#powerup RNG and spawnpoints
scoreboard players add @e[tag=Selection] powerupcount 1
execute as @e[scores={powerupcount=20}] run scoreboard players remove @s PowerupDisplay 1
execute as @e[scores={powerupcount=20}] run scoreboard players reset @s powerupcount

execute as @e[scores={PowerupDisplay=..0}] run tag @a add DelayActionbar
execute as @e[scores={PowerupDisplay=..0}] run function rr_powerups:items/rng
scoreboard players set @e[tag=Selection,scores={PowerupDisplay=..0}] PowerupDisplay 45

#win
execute if block 13 38 74 air run function rr_powerups:game/winblue
execute if block 11 38 74 air run function rr_powerups:game/winblue

execute if block 13 38 -74 air run function rr_powerups:game/winyellow
execute if block 11 38 -74 air run function rr_powerups:game/winyellow

#capture the point (+ optional gamemode stuff)
tag @a[tag=onCapturePoint] remove onCapturePoint
execute as @e[tag=captureMiddle] at @s as @e[type=player,team=Blue,distance=..7.1] at @s if entity @s[y=54,dy=1] run tag @s add onCapturePoint
execute as @e[tag=captureMiddle] at @s as @e[type=player,team=Yellow,distance=..7.1] at @s if entity @s[y=54,dy=1] run tag @s add onCapturePoint
#hotfix to prevent players from falling through the platform if they break the blocks beneath them
execute as @e[tag=captureMiddle] at @s as @e[type=player,tag=onCapturePoint,distance=..5.5] at @s if entity @s[y=53,dy=0.5] if block ~ ~-1 ~ air run tp @s ~ ~0.5 ~
execute as @e[type=player,tag=onCapturePoint] at @s unless entity @s[y=54,dy=1] unless entity @e[tag=captureMiddle,distance=..7.1,limit=1] run tag @s remove onCapturePoint

execute if entity @a[team=Blue,tag=onCapturePoint] unless entity @a[team=Yellow,tag=onCapturePoint] run scoreboard players add @e[tag=captureMiddle] captureBlue 1
execute if entity @a[team=Blue,tag=onCapturePoint] unless entity @a[team=Yellow,tag=onCapturePoint] run scoreboard players remove @e[tag=captureMiddle] captureYellow 1
execute if entity @a[team=Blue,tag=onCapturePoint] unless entity @a[team=Yellow,tag=onCapturePoint] run tag @e[tag=captureMiddle] remove contested

execute if entity @a[team=Yellow,tag=onCapturePoint] unless entity @a[team=Blue,tag=onCapturePoint] run scoreboard players add @e[tag=captureMiddle] captureYellow 1
execute if entity @a[team=Yellow,tag=onCapturePoint] unless entity @a[team=Blue,tag=onCapturePoint] run scoreboard players remove @e[tag=captureMiddle] captureBlue 1
execute if entity @a[team=Yellow,tag=onCapturePoint] unless entity @a[team=Blue,tag=onCapturePoint] run tag @e[tag=captureMiddle] remove contested

scoreboard players set @e[tag=captureMiddle,scores={captureBlue=200..}] capturePoint 1
scoreboard players set @e[tag=captureMiddle,scores={captureYellow=200..}] capturePoint 2

execute if entity @a[team=Yellow,tag=onCapturePoint] if entity @a[team=Blue,tag=onCapturePoint] run tag @e[tag=captureMiddle] add contested
scoreboard players set @e[tag=contested] capturePoint 0
scoreboard players remove @e[tag=contested] captureYellow 1
scoreboard players remove @e[tag=contested] captureBlue 1

execute as @e[tag=captureMiddle] unless entity @a[tag=onCapturePoint] run scoreboard players set @s capturePoint 0
execute as @e[tag=captureMiddle] unless entity @a[tag=onCapturePoint] run scoreboard players remove @s captureBlue 1
execute as @e[tag=captureMiddle] unless entity @a[tag=onCapturePoint] run scoreboard players remove @s captureYellow 1

#max scores and min scores
scoreboard players set @e[tag=captureMiddle,scores={captureYellow=..0}] captureYellow 0
scoreboard players set @e[tag=captureMiddle,scores={captureYellow=200..}] captureYellow 200
scoreboard players set @e[tag=captureMiddle,scores={captureBlue=..0}] captureBlue 0
scoreboard players set @e[tag=captureMiddle,scores={captureBlue=200..}] captureBlue 200

#bossbar
bossbar set rr_powerups:blue_capture_progress players @a[team=Blue]
bossbar set rr_powerups:yellow_capture_progress players @a[team=Yellow]

execute store result bossbar rr_powerups:blue_capture_progress value run scoreboard players get @e[tag=captureMiddle,limit=1] captureBlue
execute store result bossbar rr_powerups:yellow_capture_progress value run scoreboard players get @e[tag=captureMiddle,limit=1] captureYellow

execute if score @e[tag=captureMiddle,limit=1] capturePoint matches 1 run bossbar set rr_powerups:blue_capture_progress name [{"text":"Point Captured!","color":"blue","bold":"true"}]
execute unless score @e[tag=captureMiddle,limit=1] capturePoint matches 1 run bossbar set rr_powerups:blue_capture_progress name [{"text":"Capture Progress","color":"blue","bold":"true"}]

execute if score @e[tag=captureMiddle,limit=1] capturePoint matches 2 run bossbar set rr_powerups:yellow_capture_progress name [{"text":"Point Captured!","color":"gold","bold":"true"}]
execute unless score @e[tag=captureMiddle,limit=1] capturePoint matches 2 run bossbar set rr_powerups:yellow_capture_progress name [{"text":"Capture Progress","color":"gold","bold":"true"}]

#broken elytra replacing
execute as @a[team=Blue,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{Damage:431}}]}] run tag @s add BreakEly
execute as @a[team=Yellow,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{Damage:431}}]}] run tag @s add BreakEly
execute as @a[team=Blue,tag=BreakEly] run replaceitem entity @s armor.chest leather_chestplate{HideFlags:7,Unbreakable:1,display:{color:1247871},Enchantments:[{id:binding_curse,lvl:1}]} 1
execute as @a[team=Yellow,tag=BreakEly] run replaceitem entity @s armor.chest leather_chestplate{HideFlags:7,Unbreakable:1,display:{color:16768000},Enchantments:[{id:binding_curse,lvl:1}]} 1
tag @a[tag=BreakEly] remove BreakEly

#broken trident clearing
clear @a[team=Blue,nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{Damage:250}}]}] trident 1
clear @a[team=Yellow,nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{Damage:250}}]}] trident 1

#yellow trident auto riptide
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident"}}] store result score @s tridentSlot run data get entity @s SelectedItemSlot 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=0}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.0 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=1}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.1 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=2}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.2 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=3}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.3 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=4}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.4 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=5}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.5 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=6}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.6 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=7}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.7 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=8}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.8 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=0}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.0 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=1}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.1 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=2}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.2 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=3}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.3 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=4}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.4 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=5}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.5 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=6}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.6 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=7}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.7 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=8}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.8 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Yellow] unless entity @s[nbt={SelectedItem:{id:"minecraft:trident"}}] run scoreboard players reset @s tridentSlot

#blue trident auto riptide
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident"}}] store result score @s tridentSlot run data get entity @s SelectedItemSlot 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=0}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.0 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=1}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.1 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=2}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.2 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=3}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.3 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=4}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.4 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=5}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.5 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=6}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.6 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=7}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.7 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:10}]}}},scores={tridentSlot=8}] at @s if block ~ ~ ~ water run replaceitem entity @s hotbar.8 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:riptide",lvl:1},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=0}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.0 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=1}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.1 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=2}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.2 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=3}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.3 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=4}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.4 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=5}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.5 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=6}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.6 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=7}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.7 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:riptide",lvl:1}]}}},scores={tridentSlot=8}] at @s unless block ~ ~ ~ water run replaceitem entity @s hotbar.8 trident{HideFlags:7,Damage:242,Enchantments:[{id:"minecraft:impaling",lvl:2},{id:"minecraft:loyalty",lvl:10},{id:"minecraft:channeling",lvl:1}],display:{Name:"[{\"text\":\"Trident\",\"color\":\"dark_purple\",\"bold\":\"true\"}]"}} 1
execute as @a[team=Blue] unless entity @s[nbt={SelectedItem:{id:"minecraft:trident"}}] run scoreboard players reset @s tridentSlot

#actionbar
title @a[team=Yellow,tag=!DelayActionbar] actionbar ["",{"text":"A new powerup will be given out in ","color":"green"},{"score":{"name":"@e[tag=Selection]","objective":"PowerupDisplay"},"color":"dark_green"},{"text":" seconds!","color":"green"}]
title @a[team=Blue,tag=!DelayActionbar] actionbar ["",{"text":"A new powerup will be given out in ","color":"green"},{"score":{"name":"@e[tag=Selection]","objective":"PowerupDisplay"},"color":"dark_green"},{"text":" seconds!","color":"green"}]

#barricades autokill
execute as @e[tag=BlueBarricade] at @s unless block ~ ~ ~ blue_stained_glass run kill @s
execute as @e[tag=YellowBarricade] at @s unless block ~ ~ ~ yellow_stained_glass run kill @s