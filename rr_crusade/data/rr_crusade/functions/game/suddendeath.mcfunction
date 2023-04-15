####################################
## SUDDENDEATH: What events occur ##
## when the game results in a tie ##
####################################

##Begins timer
execute if entity @s[scores={SDtime=20..}] run scoreboard players reset @s SDtime
scoreboard players add @s SDtime 1
execute if entity @s[scores={SDtime=1}] as @a[predicate=custom:indimension] run stopsound @s master minecraft:ui.toast.challenge_complete
execute if entity @s[scores={SDtime=1}] as @a[predicate=custom:indimension] run stopsound @s master minecraft:entity.wither.spawn

##Resets outcome of previous game
scoreboard players reset @s endtimer
execute if entity @s[scores={SDtime=1..15}] run tag @a[predicate=custom:indimension] remove Winner
execute if entity @s[scores={SDtime=1..15}] run tag @a[predicate=custom:indimension] remove Loser
execute if entity @s[scores={SDtime=1..15}] run kill @e[type=tnt]
execute if entity @s[scores={SDtime=1..15}] run kill @e[type=tnt_minecart]
execute if entity @s[scores={SDtime=1..15}] run kill @e[type=creeper]

##Preparing for Sudden Death
execute if entity @s[scores={SDtime=1}] run title @a[predicate=custom:indimension,team=Blue] actionbar [""]
execute if entity @s[scores={SDtime=1}] run title @a[predicate=custom:indimension,team=Yellow] actionbar [""]
execute if entity @s[scores={SDtime=1..}] run tag @s add EditedSettings
execute if entity @s[scores={SDtime=1..}] run function game:uncancelpads
execute if entity @s[scores={SDtime=1..2}] at @s run tp @a[predicate=custom:indimension,team=Blue] 12 64 -66 0 0
execute if entity @s[scores={SDtime=1..2}] at @s run tp @a[predicate=custom:indimension,team=Yellow] 12 64 66 180 0
execute if entity @s[scores={SDtime=1}] run scoreboard players reset @e[type=marker,tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUID
execute if entity @s[scores={SDtime=1}] run scoreboard players reset @e[type=marker,tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUID
execute if entity @s[scores={SDtime=1}] at @s run scoreboard players set 2 MaxItemSec 2
execute if entity @s[scores={SDtime=1},tag=!NoFall] run gamerule fallDamage true
execute if entity @s[scores={SDtime=1}] at @s run item replace entity @a[predicate=custom:indimension] armor.head with air
execute if entity @s[scores={SDtime=1}] at @s run clear @a[predicate=custom:indimension] firework_rocket
execute if entity @s[scores={SDtime=1}] at @s run effect clear @a[predicate=custom:indimension] resistance
execute if entity @s[scores={SDtime=1}] at @s run effect clear @a[predicate=custom:indimension] weakness
execute if entity @s[scores={SDtime=1}] at @s run effect clear @a[predicate=custom:indimension] regeneration

execute if entity @s[scores={SDtime=1}] run tag @a[predicate=custom:indimension,scores={crusadekit=1}] add kitknight
execute if entity @s[scores={SDtime=1}] run tag @a[predicate=custom:indimension,scores={crusadekit=2}] add kitarcher
execute if entity @s[scores={SDtime=1}] run tag @a[predicate=custom:indimension,scores={crusadekit=3}] add kitmage
execute if entity @s[scores={SDtime=1}] run scoreboard players reset @a[predicate=custom:indimension] crusadekit
execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={SDtime=1}] as @a[predicate=custom:indimension,tag=kitknight] run function rr_crusade:items/kit/give/knight
execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={SDtime=1}] as @a[predicate=custom:indimension,tag=kitarcher] run function rr_crusade:items/kit/give/archer
execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={SDtime=1}] as @a[predicate=custom:indimension,tag=kitmage] run function rr_crusade:items/kit/give/mage
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={SDtime=1}] as @a[predicate=custom:indimension,tag=kitknight] run function servermode:kitcrusade/knight
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={SDtime=1}] as @a[predicate=custom:indimension,tag=kitarcher] run function servermode:kitcrusade/archer
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={SDtime=1}] as @a[predicate=custom:indimension,tag=kitmage] run function servermode:kitcrusade/mage
execute if entity @s[scores={SDtime=1}] run tag @a[predicate=custom:indimension] remove kitknight
execute if entity @s[scores={SDtime=1}] run tag @a[predicate=custom:indimension] remove kitarcher
execute if entity @s[scores={SDtime=1}] run tag @a[predicate=custom:indimension] remove kitmage

execute if entity @s[scores={SDtime=1}] at @s run effect give @a[predicate=custom:indimension] blindness 1 100 true
execute if entity @s[scores={SDtime=4}] at @s run effect clear @a[predicate=custom:indimension] blindness
execute if entity @s[scores={SDtime=1}] at @s run tag @s remove GameEnd
execute if entity @s[scores={SDtime=1}] run function achievements:scoresreset
execute if entity @s[scores={SDtime=2}] run gamemode survival @a[predicate=custom:indimension,team=Blue]
execute if entity @s[scores={SDtime=2}] run gamemode survival @a[predicate=custom:indimension,team=Yellow]
execute if entity @s[scores={SDtime=1}] run tag @s add GameStarted
execute if entity @s[scores={SDtime=1}] run worldborder warning distance 1000000
#Fix endgame fireballs
execute if entity @s[scores={SDtime=1}] as @e[type=fireball,tag=endFireball] run scoreboard players add @s endFireball 1
execute if entity @s[scores={SDtime=1}] as @e[type=fireball,tag=endFireball] at @s run summon fireball ~ ~ ~ {Tags:["endFireball2"],ExplosionPower:0,Motion:[0.0,0.0,0.0],power:[0.0,0.0,0.0]}
execute if entity @s[scores={SDtime=1}] as @e[type=fireball,tag=endFireball2] at @s run data modify entity @s Item set from entity @e[type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Item
execute if entity @s[scores={SDtime=1}] as @e[type=fireball,tag=endFireball2] at @s run data modify entity @s Tags set from entity @e[type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Tags
execute if entity @s[scores={SDtime=1}] run kill @e[type=fireball,scores={endFireball=1}]
execute if entity @s[scores={SDtime=1}] as @e[type=fireball,tag=endFireball,tag=!obfireball] run data merge entity @s {ExplosionPower:1}
execute if entity @s[scores={SDtime=1}] run tag @e[type=fireball] remove endFireball
execute if entity @s[scores={SDtime=1}] run kill @e[type=area_effect_cloud,tag=endFireballAEC]
execute if entity @s[scores={SDtime=1}] run tag @s remove BlueWon
execute if entity @s[scores={SDtime=1}] run tag @s remove YellowWon
execute if entity @s[scores={SDtime=1}] run tag @s remove BothWon
#For Premature Celebration achievement
execute if entity @s[scores={SDtime=1,servermode=0},tag=!realms,tag=!SMCustom,tag=BlueWonFirst] run advancement grant @a[predicate=custom:indimension,team=Blue] only achievements:rr_challenges/premature
execute if entity @s[scores={SDtime=1}] run tag @s remove BlueWonFirst
execute if entity @s[scores={SDtime=1,servermode=0},tag=!realms,tag=!SMCustom,tag=YellowWonFirst] run advancement grant @a[predicate=custom:indimension,team=Yellow] only achievements:rr_challenges/premature
execute if entity @s[scores={SDtime=1}] run tag @s remove YellowWonFirst
#Halves the Item Delay (more intense gameplay)
scoreboard players operation @s[scores={SDtime=1,MaxItemTime=3..}] MaxItemTime /= 2 MaxItemSec
scoreboard players set @s[scores={SDtime=1,MaxItemTime=..1}] MaxItemTime 2
execute if entity @s[scores={SDtime=1}] run scoreboard players set @s RandomItem -3
execute if entity @s[scores={SDtime=1}] run scoreboard players operation @s RandomItem += @s MaxItemTime
execute if entity @s[scores={SDtime=1}] run scoreboard players set @s[tag=Minute] RandomItem 1197
execute if entity @s[scores={SDtime=10}] as @a[predicate=custom:indimension,team=!Lobby] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 100 1.3

##Places back portals
execute if score $YellowShield crusadehp matches -1000..0 run fill 21 44 67 21 56 67 minecraft:obsidian
execute if score $YellowShield crusadehp matches -1000..0 run fill 21 56 67 3 56 67 minecraft:obsidian
execute if score $YellowShield crusadehp matches -1000..0 run fill 3 44 67 3 56 67 minecraft:obsidian
execute if score $YellowShield crusadehp matches -1000..0 run fill 3 44 67 21 44 67 minecraft:obsidian
execute if score $YellowShield crusadehp matches -1000..0 run fill 20 55 67 4 45 67 minecraft:nether_portal

execute if score $BlueShield crusadehp matches -1000..0 run fill 21 44 -67 21 56 -67 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 21 56 -67 3 56 -67 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 3 56 -67 3 44 -67 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 3 44 -67 21 44 -67 minecraft:obsidian
execute if score $BlueShield crusadehp matches -1000..0 run fill 4 45 -67 20 55 -67 nether_portal

##Animated titles
execute if entity @s[scores={SDtime=1}] run title @a[predicate=custom:indimension] title ["",{"text":"It's a Tie!","color":"gray","bold":true}]
execute if entity @s[scores={SDtime=1..5}] run title @a[predicate=custom:indimension] subtitle ["",{"text":"","bold":true,"color":"red"},{"text":"SUDDEN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=6}] run title @a[predicate=custom:indimension] subtitle ["",{"text":"S","bold":true,"color":"red"},{"text":"UDDEN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=7}] run title @a[predicate=custom:indimension] subtitle ["",{"text":"SU","bold":true,"color":"red"},{"text":"DDEN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=8}] run title @a[predicate=custom:indimension] subtitle ["",{"text":"SUD","bold":true,"color":"red"},{"text":"DEN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=9}] run title @a[predicate=custom:indimension] subtitle ["",{"text":"SUDD","bold":true,"color":"red"},{"text":"EN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=10}] run title @a[predicate=custom:indimension] subtitle ["",{"text":"SUDDE","bold":true,"color":"red"},{"text":"N DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=11}] run title @a[predicate=custom:indimension] subtitle ["",{"text":"SUDDEN","bold":true,"color":"red"},{"text":" DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=12}] run title @a[predicate=custom:indimension] subtitle ["",{"text":"SUDDEN D","bold":true,"color":"red"},{"text":"EATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=13}] run title @a[predicate=custom:indimension] subtitle ["",{"text":"SUDDEN DE","bold":true,"color":"red"},{"text":"ATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=14}] run title @a[predicate=custom:indimension] subtitle ["",{"text":"SUDDEN DEA","bold":true,"color":"red"},{"text":"TH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=15}] run title @a[predicate=custom:indimension] subtitle ["",{"text":"SUDDEN DEAT","bold":true,"color":"red"},{"text":"H","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=16..}] run title @a[predicate=custom:indimension] subtitle ["",{"text":"SUDDEN DEATH","bold":true,"color":"red"}]

##Resets timer
execute if entity @s[scores={SDtime=20..}] run tag @s remove SuddenDeath
execute if entity @s[scores={SDtime=20..}] run scoreboard players reset 2 MaxItemSec