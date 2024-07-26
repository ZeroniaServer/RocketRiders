#leave midgame
execute if entity @s[tag=!SMActive] run function game:leavemidgame

#spawnables
function rr_powerups:everytick/spawnables

#crystal pads
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureYellow=1..}] run function rr_powerups:everytick/crystalpadblue
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=1..}] run function rr_powerups:everytick/crystalpadyellow

#Short-ranged ambient sound for crystals
scoreboard players add @e[x=0,type=end_crystal,tag=PUCrystal] CmdData 1
execute as @e[x=0,type=end_crystal,tag=PUCrystal,scores={CmdData=5}] at @s run playsound minecraft:block.beacon.ambient master @a[x=0] ~ ~ ~ 0.45 1.4
scoreboard players reset @e[x=0,type=end_crystal,tag=PUCrystal,scores={CmdData=20..}] CmdData
execute unless entity @e[x=0,type=end_crystal,tag=PUCrystal] run stopsound @a[x=0] master minecraft:block.beacon.ambient


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
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function items:minutemix

#powerup RNG
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={capturePoint=1..}] run scoreboard players add @s powerupcount 1
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={capturePoint=0}] run scoreboard players set @s powerupcount 0
execute if entity @s[scores={powerupcount=20}] run scoreboard players remove @s PowerupDisplay 1
execute if entity @s[scores={powerupcount=20}] run scoreboard players reset @s powerupcount
execute if entity @e[x=0,type=marker,scores={capturePoint=0,captureBlue=0,captureYellow=0}] run scoreboard players set @s PowerupDisplay 12
execute if entity @s[scores={PowerupDisplay=..0}] run function rr_powerups:items/rng
scoreboard players set @s[scores={PowerupDisplay=..0}] PowerupDisplay 12

#tracking for lockdown achievement
execute as @e[x=0,type=marker,tag=captureMiddle,scores={capturePoint=1,bCapturedTime=..1200}] run scoreboard players add @s bCapturedTime 1
execute as @e[x=0,type=marker,tag=captureMiddle,scores={capturePoint=2,yCapturedTime=..1200}] run scoreboard players add @s yCapturedTime 1
execute as @e[x=0,type=marker,tag=captureMiddle,scores={capturePoint=0}] run scoreboard players set @s bCapturedTime 0
execute as @e[x=0,type=marker,tag=captureMiddle,scores={capturePoint=0}] run scoreboard players set @s yCapturedTime 0

#capture the point (+ optional gamemode stuff)
tag @a[x=0,tag=onCapturePoint] remove onCapturePoint
execute as @e[x=0,type=marker,tag=captureMiddle] at @s as @e[type=player,team=Blue,distance=..7.1] at @s if entity @s[y=54,dy=1] run tag @s add onCapturePoint
execute as @e[x=0,type=marker,tag=captureMiddle] at @s as @e[type=player,team=Yellow,distance=..7.1] at @s if entity @s[y=54,dy=1] run tag @s add onCapturePoint
#hotfix to prevent players from falling through the platform if they break the blocks beneath them
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] at @s as @e[type=player,tag=onCapturePoint,distance=..5.5] at @s if entity @s[y=53,dy=0.5] if block ~ ~-1 ~ air run tp @s ~ ~0.1 ~
execute as @e[x=0,type=player,tag=onCapturePoint] at @s unless entity @s[y=54,dy=1] unless entity @e[type=marker,tag=captureMiddle,tag=!BrokenPlatform,distance=..7.1,limit=1] run tag @s remove onCapturePoint

execute if entity @a[x=0,team=Blue,tag=onCapturePoint] unless entity @a[x=0,team=Yellow,tag=onCapturePoint] run scoreboard players add @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={captureYellow=0},tag=!contested] captureBlue 2
execute if entity @a[x=0,team=Blue,tag=onCapturePoint] unless entity @a[x=0,team=Yellow,tag=onCapturePoint] run tag @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] remove contested

execute if entity @a[x=0,team=Yellow,tag=onCapturePoint] unless entity @a[x=0,team=Blue,tag=onCapturePoint] run scoreboard players add @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,scores={captureBlue=0},tag=!contested] captureYellow 2
execute if entity @a[x=0,team=Yellow,tag=onCapturePoint] unless entity @a[x=0,team=Blue,tag=onCapturePoint] run tag @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] remove contested

execute unless entity @a[x=0,tag=onCapturePoint] run tag @e[x=0,type=marker,tag=captureMiddle] remove contested

scoreboard players set @e[x=0,type=marker,tag=captureMiddle,tag=!contested,scores={captureBlue=99..}] capturePoint 1
scoreboard players set @e[x=0,type=marker,tag=captureMiddle,tag=!contested,scores={captureYellow=99..}] capturePoint 2

execute if entity @a[x=0,team=Yellow,tag=onCapturePoint] if entity @a[x=0,team=Blue,tag=onCapturePoint] if entity @e[x=0,type=marker,tag=captureMiddle,tag=!contested] run function rr_powerups:items/tetrisreset
execute if entity @a[x=0,team=Yellow,tag=onCapturePoint] if entity @a[x=0,team=Blue,tag=onCapturePoint] run tag @e[x=0,type=marker,tag=captureMiddle] add contested
scoreboard players remove @e[x=0,type=marker,tag=contested] captureBlue 1
scoreboard players remove @e[x=0,type=marker,tag=contested] captureYellow 1

execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,tag=!contested,scores={captureBlue=1..}] if score @s captureBlue >= @s captureYellow run function rr_powerups:game/fancyblue
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,tag=!contested,scores={captureYellow=1..}] if score @s captureYellow >= @s captureBlue run function rr_powerups:game/fancyyellow
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform,tag=contested] run function rr_powerups:game/fancycontested

execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=99..}] if entity @a[x=0,team=Yellow,tag=onCapturePoint] run scoreboard players remove @s captureBlue 1
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureYellow=99..}] if entity @a[x=0,team=Blue,tag=onCapturePoint] run scoreboard players remove @s captureYellow 1
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=1..99}] unless entity @a[x=0,team=Blue,tag=onCapturePoint] run scoreboard players remove @s captureBlue 1
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureYellow=1..99}] unless entity @a[x=0,team=Yellow,tag=onCapturePoint] run scoreboard players remove @s captureYellow 1
execute as @e[x=0,type=marker,tag=captureMiddle,scores={captureYellow=..0,captureBlue=..0}] run scoreboard players set @s capturePoint 0

#powerup platform design
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] at @s run function rr_powerups:everytick/powerup_platform

#max scores and min scores
scoreboard players set @e[x=0,type=marker,tag=captureMiddle,scores={captureYellow=..0}] captureYellow 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle,scores={captureYellow=100..}] captureYellow 100
scoreboard players set @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=..0}] captureBlue 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle,scores={captureBlue=100..}] captureBlue 100

#Deplete powerup platform hp
function rr_powerups:everytick/platformdeplete

#bossbar
bossbar set rr_powerups:capture_progress style progress
execute if score @s gametime matches 1.. run bossbar set rr_powerups:capture_progress players @a[x=0,team=!Lobby]

execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] if score @s captureBlue >= @s captureYellow store result bossbar rr_powerups:capture_progress value run scoreboard players get @s captureBlue
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!contested,tag=!BrokenPlatform] if score @s captureBlue > @s captureYellow run bossbar set rr_powerups:capture_progress color blue
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] if score @s captureYellow >= @s captureBlue store result bossbar rr_powerups:capture_progress value run scoreboard players get @s captureYellow
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!contested,tag=!BrokenPlatform] if score @s captureYellow > @s captureBlue run bossbar set rr_powerups:capture_progress color yellow
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!contested,tag=!BrokenPlatform] if score @s captureBlue matches ..0 if score @s captureYellow matches ..0 run bossbar set rr_powerups:capture_progress color white
execute as @e[x=0,type=marker,tag=captureMiddle,tag=contested,tag=!BrokenPlatform] run bossbar set rr_powerups:capture_progress color red

execute as @e[x=0,type=marker,tag=captureMiddle,tag=!contested,tag=!BrokenPlatform,limit=1] if score @s capturePoint matches 0 if score @s captureBlue >= @s captureYellow if score @s captureBlue matches 1.. run bossbar set rr_powerups:capture_progress name [{"text":"Blue Capturing...","color":"blue","bold":true}]
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!contested,tag=!BrokenPlatform,limit=1] if score @s capturePoint matches 0 if score @s captureYellow >= @s captureBlue if score @s captureYellow matches 1.. run bossbar set rr_powerups:capture_progress name [{"text":"Yellow Capturing...","color":"yellow","bold":true}]
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!contested,tag=!BrokenPlatform,limit=1] if score @s capturePoint matches 0 if score @s captureBlue matches ..0 if score @s captureYellow matches ..0 run bossbar set rr_powerups:capture_progress name [{"text":"Capture Progress","color":"white","bold":true}]
execute as @e[x=0,type=marker,tag=captureMiddle,tag=contested,tag=!BrokenPlatform] run bossbar set rr_powerups:capture_progress name [{"text":"Contested!","color":"dark_red","bold":true}]

execute as @e[x=0,type=marker,tag=captureMiddle,tag=!contested,tag=!BrokenPlatform,limit=1] if score @s capturePoint matches 1 run bossbar set rr_powerups:capture_progress name [{"text":"Blue Captured!","color":"blue","bold":true}]
execute as @e[x=0,type=marker,tag=captureMiddle,tag=!contested,tag=!BrokenPlatform,limit=1] if score @s capturePoint matches 2 run bossbar set rr_powerups:capture_progress name [{"text":"Yellow Captured!","color":"yellow","bold":true}]

function rr_powerups:everytick/powerups

#actionbar
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={capturePoint=1}] if entity @s[scores={PowerupDisplay=2..}] as @a[x=0,team=Blue,tag=!DelayActionbar] run title @s actionbar ["",{"text":"A new Powerup will be given out in ","color":"light_purple"},{"score":{"name":"@e[x=0,type=armor_stand,tag=Selection,limit=1]","objective":"PowerupDisplay"},"color":"dark_purple","bold":true},{"text":" seconds!","color":"light_purple"}]
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={capturePoint=1}] if entity @s[scores={PowerupDisplay=..1}] as @a[x=0,team=Blue,tag=!DelayActionbar] run title @s actionbar ["",{"text":"A new Powerup will be given out in ","color":"light_purple"},{"score":{"name":"@e[x=0,type=armor_stand,tag=Selection,limit=1]","objective":"PowerupDisplay"},"color":"dark_purple","bold":true},{"text":" second!","color":"light_purple"}]
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={capturePoint=2}] if entity @s[scores={PowerupDisplay=2..}] as @a[x=0,team=Yellow,tag=!DelayActionbar] run title @s actionbar ["",{"text":"A new Powerup will be given out in ","color":"dark_purple"},{"score":{"name":"@e[x=0,type=armor_stand,tag=Selection,limit=1]","objective":"PowerupDisplay"},"color":"light_purple","bold":true},{"text":" seconds!","color":"dark_purple"}]
execute if entity @e[x=0,type=marker,tag=captureMiddle,scores={capturePoint=2}] if entity @s[scores={PowerupDisplay=..1}] as @a[x=0,team=Yellow,tag=!DelayActionbar] run title @s actionbar ["",{"text":"A new Powerup will be given out in ","color":"dark_purple"},{"score":{"name":"@e[x=0,type=armor_stand,tag=Selection,limit=1]","objective":"PowerupDisplay"},"color":"light_purple","bold":true},{"text":" second!","color":"dark_purple"}]

#win
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 74 nether_portal unless block 13 38 -74 nether_portal run function game:winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 -74 nether_portal run function game:winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 74 nether_portal unless block 11 38 -74 nether_portal run function game:winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 74 nether_portal unless block 11 38 -74 nether_portal run function game:winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon,tag=DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run function game:winbothcheck

execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!DoublePortal] unless block 13 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!DoublePortal] unless block 11 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal run function game:winblue

execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=!DoublePortal] unless block 11 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=!DoublePortal] unless block 13 38 -74 nether_portal run function game:winyellow
execute if entity @s[tag=!BothWon,tag=!YellowWon,tag=DoublePortal] unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run function game:winyellow