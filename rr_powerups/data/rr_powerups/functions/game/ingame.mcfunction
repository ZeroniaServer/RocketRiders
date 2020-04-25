#leave midgame
function game:leavemidgame

#general
function rr_powerups:items/antidupe
function rr_powerups:items/spawnitems
function rr_powerups:everytick/smoke_bomb
function rr_powerups:everytick/lava_splash
function rr_powerups:everytick/cancel_utility

#item RNG and spawnpoints
function items:tetris
scoreboard players add @e[tag=Selection] RandomItem 1
execute if entity @e[scores={RandomItem=300..}] run function items:rng
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar
execute as @e[scores={RandomItem=300..}] as @a unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @e[scores={RandomItem=300..}] as @a[tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
scoreboard players reset @e[scores={RandomItem=300..}] RandomItem
spawnpoint @a[team=Blue] 12 64 -66
spawnpoint @a[team=Yellow] 12 64 66

#powerup RNG and spawnpoints
execute if entity @e[tag=captureMiddle,scores={capturePoint=1..}] run scoreboard players add @e[tag=Selection] powerupcount 1
execute if entity @e[tag=captureMiddle,scores={capturePoint=0}] run scoreboard players set @e[tag=Selection] powerupcount 0
execute as @e[scores={powerupcount=20}] run scoreboard players remove @s PowerupDisplay 1
execute as @e[scores={powerupcount=20}] run scoreboard players reset @s powerupcount
execute if entity @e[scores={capturePoint=0}] run scoreboard players set @e[tag=Selection] PowerupDisplay 30
execute as @e[scores={PowerupDisplay=..0}] if entity @e[scores={capturePoint=1}] as @e[type=player,team=Blue,tag=onCapturePoint] run tp @s 12 64 -66 0 0
execute as @e[scores={PowerupDisplay=..0}] if entity @e[scores={capturePoint=2}] as @e[type=player,team=Yellow,tag=onCapturePoint] run tp @s 12 64 66 -180 0
execute as @e[scores={PowerupDisplay=..0}] run tag @a add DelayActionbar
execute as @e[scores={PowerupDisplay=..0}] run function rr_powerups:items/rng
scoreboard players set @e[tag=Selection,scores={PowerupDisplay=..0}] PowerupDisplay 30

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
execute if entity @a[team=Blue,tag=onCapturePoint] unless entity @a[team=Yellow,tag=onCapturePoint] run tag @e[tag=captureMiddle] remove contested

execute if entity @a[team=Yellow,tag=onCapturePoint] unless entity @a[team=Blue,tag=onCapturePoint] run scoreboard players add @e[tag=captureMiddle] captureYellow 1
execute if entity @a[team=Yellow,tag=onCapturePoint] unless entity @a[team=Blue,tag=onCapturePoint] run tag @e[tag=captureMiddle] remove contested

scoreboard players set @e[tag=captureMiddle,tag=!contested,scores={captureBlue=100..}] capturePoint 1
scoreboard players set @e[tag=captureMiddle,tag=!contested,scores={captureYellow=100..}] capturePoint 2

execute if entity @a[team=Yellow,tag=onCapturePoint] if entity @a[team=Blue,tag=onCapturePoint] run tag @e[tag=captureMiddle] add contested
scoreboard players set @e[tag=contested] capturePoint 0
scoreboard players remove @e[tag=contested] captureYellow 1
scoreboard players remove @e[tag=contested] captureBlue 1

execute as @e[tag=captureMiddle] unless entity @a[tag=onCapturePoint] run scoreboard players set @s capturePoint 0
execute as @e[tag=captureMiddle] unless entity @a[team=Blue,tag=onCapturePoint] run scoreboard players remove @s captureBlue 1
execute as @e[tag=captureMiddle] unless entity @a[team=Yellow,tag=onCapturePoint] run scoreboard players remove @s captureYellow 1
execute as @e[tag=captureMiddle,scores={captureYellow=..99,captureBlue=..99}] run scoreboard players set @s capturePoint 0

execute as @e[tag=captureMiddle] at @s run function rr_powerups:everytick/powerup_platform

#max scores and min scores
scoreboard players set @e[tag=captureMiddle,scores={captureYellow=..0}] captureYellow 0
scoreboard players set @e[tag=captureMiddle,scores={captureYellow=100..}] captureYellow 100
scoreboard players set @e[tag=captureMiddle,scores={captureBlue=..0}] captureBlue 0
scoreboard players set @e[tag=captureMiddle,scores={captureBlue=100..}] captureBlue 100

#bossbar
bossbar set rr_powerups:capture_progress style progress
bossbar set rr_powerups:capture_progress style progress
bossbar set rr_powerups:capture_progress players @a[team=!Lobby]

execute as @e[tag=captureMiddle] if score @s captureBlue >= @s captureYellow store result bossbar rr_powerups:capture_progress value run scoreboard players get @s captureBlue
execute as @e[tag=captureMiddle] if score @s captureBlue >= @s captureYellow run bossbar set rr_powerups:capture_progress color blue
execute as @e[tag=captureMiddle] if score @s captureYellow >= @s captureBlue store result bossbar rr_powerups:capture_progress value run scoreboard players get @s captureYellow
execute as @e[tag=captureMiddle] if score @s captureYellow >= @s captureBlue run bossbar set rr_powerups:capture_progress color yellow
execute as @e[tag=captureMiddle] if score @s captureBlue matches ..0 if score @s captureYellow matches ..0 run bossbar set rr_powerups:capture_progress color white

execute as @e[tag=captureMiddle,limit=1] if score @s capturePoint matches 0 if score @s captureBlue >= @s captureYellow if score @s captureBlue matches 1.. run bossbar set rr_powerups:capture_progress name [{"text":"Capture Progress","color":"blue","bold":"true"}]
execute as @e[tag=captureMiddle,limit=1] if score @s capturePoint matches 0 if score @s captureYellow >= @s captureBlue if score @s captureYellow matches 1.. run bossbar set rr_powerups:capture_progress name [{"text":"Capture Progress","color":"yellow","bold":"true"}]
execute as @e[tag=captureMiddle,limit=1] if score @s capturePoint matches 0 if score @s captureBlue matches ..0 if score @s captureYellow matches ..0 run bossbar set rr_powerups:capture_progress name [{"text":"Capture Progress","color":"white","bold":"true"}]

execute as @e[tag=captureMiddle,limit=1] if score @s capturePoint matches 1 run bossbar set rr_powerups:capture_progress name [{"text":"Blue Captured!","color":"blue","bold":"true"}]
execute as @e[tag=captureMiddle,limit=1] if score @s capturePoint matches 2 run bossbar set rr_powerups:capture_progress name [{"text":"Yellow Captured!","color":"yellow","bold":"true"}]

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
execute as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_everytick:auto_riptide

#actionbar
execute if entity @e[tag=captureMiddle,scores={capturePoint=1}] run title @a[team=Blue,tag=!DelayActionbar] actionbar ["",{"text":"A new powerup will be given out in ","color":"blue","bold":"true"},{"score":{"name":"@e[tag=Selection]","objective":"PowerupDisplay"},"color":"aqua","bold":"true"},{"text":" seconds!","color":"blue","bold":"true"}]
execute if entity @e[tag=captureMiddle,scores={capturePoint=2}] run title @a[team=Yellow,tag=!DelayActionbar] actionbar ["",{"text":"A new powerup will be given out in ","color":"yellow","bold":"true"},{"score":{"name":"@e[tag=Selection]","objective":"PowerupDisplay"},"color":"gold","bold":"true"},{"text":" seconds!","color":"yellow","bold":"true"}]

#barricades autokill
execute as @e[tag=BlueBarricade] at @s unless block ~ ~ ~ blue_stained_glass run kill @s
execute as @e[tag=YellowBarricade] at @s unless block ~ ~ ~ yellow_stained_glass run kill @s