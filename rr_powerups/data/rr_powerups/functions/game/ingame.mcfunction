#leave midgame
function game:leavemidgame

#general
execute as @a unless entity @s[team=!Blue,team=!Yellow] if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] run function rr_powerups:items/antidupe
execute as @a unless entity @s[team=!Blue,team=!Yellow] if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run function rr_powerups:items/antiantidupe

#utility functions
execute if entity @a[scores={DrinkHoney=1..}] run tag @s add runbeeshields
execute if entity @e[tag=BeeShieldDisplay,type=armor_stand] run tag @s add runbeeshields
execute if entity @e[tag=animBshield,type=area_effect_cloud] run tag @s add runbeeshields
execute if entity @e[type=bee] run tag @s add runbeeshields
execute as @s[tag=runbeeshields] run function rr_powerups:everytick/bee_shield
tag @s remove runbeeshields

function rr_powerups:everytick/lava_splash
function rr_powerups:everytick/cancel_utility

#item RNG and spawnpoints
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players reset @s RandomItem
spawnpoint @a[team=Blue] 12 64 -66 0
spawnpoint @a[team=Yellow] 12 64 66 -180
execute if entity @s[tag=Minute] run function items:minutemix

#powerup RNG and spawnpoints
execute if entity @e[tag=captureMiddle,scores={capturePoint=1..},type=area_effect_cloud] run scoreboard players add @s powerupcount 1
execute if entity @e[tag=captureMiddle,scores={capturePoint=0},type=area_effect_cloud] run scoreboard players set @s powerupcount 0
execute as @s[scores={powerupcount=20}] run scoreboard players remove @s PowerupDisplay 1
execute as @s[scores={powerupcount=20}] run scoreboard players reset @s powerupcount
execute if entity @e[scores={capturePoint=0,captureBlue=0,captureYellow=0},type=area_effect_cloud] run scoreboard players set @s PowerupDisplay 20
# execute as @s[scores={PowerupDisplay=..0}] if entity @e[scores={capturePoint=1},type=area_effect_cloud] as @e[type=player,team=Blue,tag=onCapturePoint] run tp @s 12 64 -66 0 0
# execute as @s[scores={PowerupDisplay=..0}] if entity @e[scores={capturePoint=2},type=area_effect_cloud] as @e[type=player,team=Yellow,tag=onCapturePoint] run tp @s 12 64 66 -180 0
execute as @s[scores={PowerupDisplay=..0}] run tag @a add DelayActionbar
execute as @s[scores={PowerupDisplay=..0}] run function rr_powerups:items/rng
scoreboard players set @s[scores={PowerupDisplay=..0}] PowerupDisplay 20

#tracking for lockdown achievement
execute as @e[tag=captureMiddle,scores={capturePoint=1,bCapturedTime=..1200},type=area_effect_cloud] run scoreboard players add @s bCapturedTime 1
execute as @e[tag=captureMiddle,scores={capturePoint=2,yCapturedTime=..1200},type=area_effect_cloud] run scoreboard players add @s yCapturedTime 1
execute as @e[tag=captureMiddle,scores={capturePoint=0},type=area_effect_cloud] run scoreboard players set @s bCapturedTime 0
execute as @e[tag=captureMiddle,scores={capturePoint=0},type=area_effect_cloud] run scoreboard players set @s yCapturedTime 0

#win
execute if entity @s[tag=!BlueWon] unless block 13 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BlueWon] unless block 11 38 74 nether_portal run function game:winblue

execute if entity @s[tag=!YellowWon] unless block 11 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!YellowWon] unless block 13 38 -74 nether_portal run function game:winyellow

#capture the point (+ optional gamemode stuff)
tag @a[tag=onCapturePoint] remove onCapturePoint
execute as @e[tag=captureMiddle,type=area_effect_cloud] at @s as @e[type=player,team=Blue,distance=..7.1] at @s if entity @s[y=54,dy=1] run tag @s add onCapturePoint
execute as @e[tag=captureMiddle,type=area_effect_cloud] at @s as @e[type=player,team=Yellow,distance=..7.1] at @s if entity @s[y=54,dy=1] run tag @s add onCapturePoint
#hotfix to prevent players from falling through the platform if they break the blocks beneath them
execute as @e[tag=captureMiddle,type=area_effect_cloud] at @s as @e[type=player,tag=onCapturePoint,distance=..5.5] at @s if entity @s[y=53,dy=0.5] if block ~ ~-1 ~ air run tp @s ~ ~0.5 ~
execute as @e[type=player,tag=onCapturePoint] at @s unless entity @s[y=54,dy=1] unless entity @e[tag=captureMiddle,distance=..7.1,limit=1,type=area_effect_cloud] run tag @s remove onCapturePoint

execute if entity @a[team=Blue,tag=onCapturePoint] unless entity @a[team=Yellow,tag=onCapturePoint] run scoreboard players add @e[tag=captureMiddle,scores={captureYellow=0},tag=!contested,type=area_effect_cloud] captureBlue 1
execute if entity @a[team=Blue,tag=onCapturePoint] unless entity @a[team=Yellow,tag=onCapturePoint] run tag @e[tag=captureMiddle,type=area_effect_cloud] remove contested

execute if entity @a[team=Yellow,tag=onCapturePoint] unless entity @a[team=Blue,tag=onCapturePoint] run scoreboard players add @e[tag=captureMiddle,scores={captureBlue=0},tag=!contested,type=area_effect_cloud] captureYellow 1
execute if entity @a[team=Yellow,tag=onCapturePoint] unless entity @a[team=Blue,tag=onCapturePoint] run tag @e[tag=captureMiddle,type=area_effect_cloud] remove contested

execute unless entity @a[tag=onCapturePoint] run tag @e[tag=captureMiddle,type=area_effect_cloud] remove contested

scoreboard players set @e[tag=captureMiddle,tag=!contested,scores={captureBlue=100..},type=area_effect_cloud] capturePoint 1
scoreboard players set @e[tag=captureMiddle,tag=!contested,scores={captureYellow=100..},type=area_effect_cloud] capturePoint 2

execute if entity @a[team=Yellow,tag=onCapturePoint] if entity @a[team=Blue,tag=onCapturePoint] if entity @e[tag=captureMiddle,tag=!contested,type=area_effect_cloud] run function rr_powerups:items/tetrisreset
execute if entity @a[team=Yellow,tag=onCapturePoint] if entity @a[team=Blue,tag=onCapturePoint] run tag @e[tag=captureMiddle,type=area_effect_cloud] add contested
scoreboard players set @e[tag=contested,type=area_effect_cloud] capturePoint 0
scoreboard players remove @e[tag=contested,type=area_effect_cloud] captureBlue 1
scoreboard players remove @e[tag=contested,type=area_effect_cloud] captureYellow 1

execute as @e[tag=captureMiddle,tag=!contested,scores={captureBlue=1..},type=area_effect_cloud] if score @s captureBlue >= @s captureYellow run function rr_powerups:game/fancyblue
execute as @e[tag=captureMiddle,tag=!contested,scores={captureYellow=1..},type=area_effect_cloud] if score @s captureYellow >= @s captureBlue run function rr_powerups:game/fancyyellow
execute as @e[tag=captureMiddle,tag=contested,type=area_effect_cloud] run function rr_powerups:game/fancycontested

execute as @e[tag=captureMiddle,type=area_effect_cloud] unless entity @a[tag=onCapturePoint] run scoreboard players set @s capturePoint 0
execute as @e[tag=captureMiddle,type=area_effect_cloud] unless entity @a[team=Blue,tag=onCapturePoint] run scoreboard players remove @s captureBlue 1
execute as @e[tag=captureMiddle,type=area_effect_cloud] unless entity @a[team=Yellow,tag=onCapturePoint] run scoreboard players remove @s captureYellow 1
execute as @e[tag=captureMiddle,scores={captureYellow=..99,captureBlue=..99},type=area_effect_cloud] run scoreboard players set @s capturePoint 0

#powerup platform design
execute as @e[tag=captureMiddle,type=area_effect_cloud] at @s run function rr_powerups:everytick/powerup_platform

#max scores and min scores
scoreboard players set @e[tag=captureMiddle,scores={captureYellow=..0},type=area_effect_cloud] captureYellow 0
scoreboard players set @e[tag=captureMiddle,scores={captureYellow=100..},type=area_effect_cloud] captureYellow 100
scoreboard players set @e[tag=captureMiddle,scores={captureBlue=..0},type=area_effect_cloud] captureBlue 0
scoreboard players set @e[tag=captureMiddle,scores={captureBlue=100..},type=area_effect_cloud] captureBlue 100

#bossbar
bossbar set rr_powerups:capture_progress style progress
bossbar set rr_powerups:capture_progress style progress
bossbar set rr_powerups:capture_progress players @a[team=!Lobby]

execute as @e[tag=captureMiddle,type=area_effect_cloud] if score @s captureBlue >= @s captureYellow store result bossbar rr_powerups:capture_progress value run scoreboard players get @s captureBlue
execute as @e[tag=captureMiddle,tag=!contested,type=area_effect_cloud] if score @s captureBlue >= @s captureYellow run bossbar set rr_powerups:capture_progress color blue
execute as @e[tag=captureMiddle,type=area_effect_cloud] if score @s captureYellow >= @s captureBlue store result bossbar rr_powerups:capture_progress value run scoreboard players get @s captureYellow
execute as @e[tag=captureMiddle,tag=!contested,type=area_effect_cloud] if score @s captureYellow >= @s captureBlue run bossbar set rr_powerups:capture_progress color yellow
execute as @e[tag=captureMiddle,tag=!contested,type=area_effect_cloud] if score @s captureBlue matches ..0 if score @s captureYellow matches ..0 run bossbar set rr_powerups:capture_progress color white
execute as @e[tag=captureMiddle,tag=contested,type=area_effect_cloud] run bossbar set rr_powerups:capture_progress color red

execute as @e[tag=captureMiddle,tag=!contested,limit=1,type=area_effect_cloud] if score @s capturePoint matches 0 if score @s captureBlue >= @s captureYellow if score @s captureBlue matches 1.. run bossbar set rr_powerups:capture_progress name [{"text":"Blue Capturing...","color":"blue","bold":"true"}]
execute as @e[tag=captureMiddle,tag=!contested,limit=1,type=area_effect_cloud] if score @s capturePoint matches 0 if score @s captureYellow >= @s captureBlue if score @s captureYellow matches 1.. run bossbar set rr_powerups:capture_progress name [{"text":"Yellow Capturing...","color":"yellow","bold":"true"}]
execute as @e[tag=captureMiddle,tag=!contested,limit=1,type=area_effect_cloud] if score @s capturePoint matches 0 if score @s captureBlue matches ..0 if score @s captureYellow matches ..0 run bossbar set rr_powerups:capture_progress name [{"text":"Capture Progress","color":"white","bold":"true"}]
execute as @e[tag=captureMiddle,tag=contested,type=area_effect_cloud] run bossbar set rr_powerups:capture_progress name [{"text":"Contested!","color":"dark_red","bold":"true"}]

execute as @e[tag=captureMiddle,limit=1,type=area_effect_cloud] if score @s capturePoint matches 1 run bossbar set rr_powerups:capture_progress name [{"text":"Blue Captured!","color":"blue","bold":"true"}]
execute as @e[tag=captureMiddle,limit=1,type=area_effect_cloud] if score @s capturePoint matches 2 run bossbar set rr_powerups:capture_progress name [{"text":"Yellow Captured!","color":"yellow","bold":"true"}]

#broken elytra replacing
execute as @a[team=Blue,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{Damage:431}}]}] run tag @s add BreakEly
execute as @a[team=Yellow,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{Damage:431}}]}] run tag @s add BreakEly
execute as @a[team=Blue,tag=BreakEly] run replaceitem entity @s armor.chest leather_chestplate{HideFlags:7,Unbreakable:1,display:{color:1247871},Enchantments:[{id:binding_curse,lvl:1}]} 1
execute as @a[team=Yellow,tag=BreakEly] run replaceitem entity @s armor.chest leather_chestplate{HideFlags:7,Unbreakable:1,display:{color:16768000},Enchantments:[{id:binding_curse,lvl:1}]} 1
tag @a[tag=BreakEly] remove BreakEly

#broken trident clearing
clear @a[team=Blue,nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{Damage:250}}]}] trident 1
clear @a[team=Yellow,nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{Damage:250}}]}] trident 1

#trident auto riptide
execute as @a[nbt={SelectedItem:{id:"minecraft:trident"}}] unless entity @s[team=!Yellow,team=!Blue] run function rr_powerups:everytick/auto_riptide

#slap fish
execute as @a unless entity @s[team=!Yellow,team=!Blue] run function rr_powerups:everytick/slap_fish

#infinity saber
execute as @a[tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] if entity @s[nbt={SelectedItem:{id:"minecraft:bow"}},scores={death=0}] run enchant @s minecraft:infinity 1
execute as @a[tag=Infinity] if entity @s[team=!Yellow,team=!Blue] run tag @s remove Infinity
execute as @a[tag=Infinity,scores={death=1..}] unless entity @s[team=!Yellow,team=!Blue] run clear @s bow
execute as @a[tag=Infinity,scores={death=1..}] unless entity @s[team=!Yellow,team=!Blue] run tag @s remove Infinity
scoreboard players set @a[scores={death=1..}] death 0

#actionbar
execute if entity @e[tag=captureMiddle,scores={capturePoint=1},type=area_effect_cloud] if entity @s[scores={PowerupDisplay=2..}] run title @a[team=Blue,tag=!DelayActionbar] actionbar ["",{"text":"A new Powerup will be given out in ","color":"blue","bold":"true"},{"score":{"name":"@e[tag=Selection,type=armor_stand,limit=1]","objective":"PowerupDisplay"},"color":"aqua","bold":"true"},{"text":" seconds!","color":"blue","bold":"true"}]
execute if entity @e[tag=captureMiddle,scores={capturePoint=1},type=area_effect_cloud] if entity @s[scores={PowerupDisplay=..1}] run title @a[team=Blue,tag=!DelayActionbar] actionbar ["",{"text":"A new Powerup will be given out in ","color":"blue","bold":"true"},{"score":{"name":"@e[tag=Selection,type=armor_stand,limit=1]","objective":"PowerupDisplay"},"color":"aqua","bold":"true"},{"text":" second!","color":"blue","bold":"true"}]
execute if entity @e[tag=captureMiddle,scores={capturePoint=2},type=area_effect_cloud] if entity @s[scores={PowerupDisplay=2..}] run title @a[team=Yellow,tag=!DelayActionbar] actionbar ["",{"text":"A new Powerup will be given out in ","color":"yellow","bold":"true"},{"score":{"name":"@e[tag=Selection,type=armor_stand,limit=1]","objective":"PowerupDisplay"},"color":"gold","bold":"true"},{"text":" seconds!","color":"yellow","bold":"true"}]
execute if entity @e[tag=captureMiddle,scores={capturePoint=2},type=area_effect_cloud] if entity @s[scores={PowerupDisplay=..1}] run title @a[team=Yellow,tag=!DelayActionbar] actionbar ["",{"text":"A new Powerup will be given out in ","color":"yellow","bold":"true"},{"score":{"name":"@e[tag=Selection,type=armor_stand,limit=1]","objective":"PowerupDisplay"},"color":"gold","bold":"true"},{"text":" second!","color":"yellow","bold":"true"}]

#custom prevention message
execute if entity @s[tag=customPrevention] as @a[tag=MissiMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of portals or the Powerup Platform.","color":"red"}]
execute if entity @s[tag=customPrevention] run tag @a[tag=MissiMSG] remove MissiMSG