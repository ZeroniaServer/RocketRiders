####################################
## SUDDENDEATH: What events occur ##
## when the game results in a tie ##
####################################

##Begins timer
execute if entity @s[scores={SDtime=20..}] run scoreboard players reset @s SDtime
scoreboard players add @s SDtime 1
execute if entity @s[scores={SDtime=1}] as @a run stopsound @s master minecraft:ui.toast.challenge_complete
execute if entity @s[scores={SDtime=1}] as @a run stopsound @s master minecraft:entity.wither.spawn

##Resets outcome of previous game
scoreboard players reset @s endtimer
execute if entity @s[scores={SDtime=1..15}] run tag @a remove Winner
execute if entity @s[scores={SDtime=1..15}] run tag @a remove Loser
execute if entity @s[scores={SDtime=1..15}] run kill @e[type=tnt]
execute if entity @s[scores={SDtime=1..15}] run kill @e[type=tnt_minecart]
execute if entity @s[scores={SDtime=1..15}] run kill @e[type=creeper]

##Preparing for Sudden Death
execute if entity @s[scores={SDtime=1..}] run tag @s add EditedSettings
execute if entity @s[scores={SDtime=1..}] run function game:uncancelpads
execute if entity @s[scores={SDtime=1..2}] at @s run tp @a[team=Blue] 12 64 -66 0 0
execute if entity @s[scores={SDtime=1..2}] at @s run tp @a[team=Yellow] 12 64 66 180 0
execute if entity @s[scores={SDtime=1}] run scoreboard players reset @e[type=marker,tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUID
execute if entity @s[scores={SDtime=1}] run scoreboard players reset @e[type=marker,tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUID
execute if entity @s[scores={SDtime=1}] at @s run scoreboard players set 2 MaxItemSec 2
execute if entity @s[scores={SDtime=1},tag=!NoFall] run gamerule fallDamage true
execute if entity @s[scores={SDtime=1}] at @s run item replace entity @a armor.head with air
execute if entity @s[scores={SDtime=1}] at @s run clear @a firework_rocket
execute if entity @s[scores={SDtime=1}] at @s run effect clear @a resistance
execute if entity @s[scores={SDtime=1}] at @s run effect clear @a weakness
execute if entity @s[scores={SDtime=1}] at @s run effect clear @a regeneration
execute if entity @s[scores={SDtime=1},tag=BlueWonFirst] run clear @a[team=Yellow] bow
execute if entity @s[scores={SDtime=1},tag=BlueWonFirst,tag=!noSabers] as @a[team=Yellow] run function game:saberyellow
execute if entity @s[scores={SDtime=1},tag=YellowWonFirst] run clear @a[team=Blue] bow
execute if entity @s[scores={SDtime=1},tag=YellowWonFirst,tag=!noSabers] as @a[team=Blue] run function game:saberblue
execute if entity @s[scores={SDtime=1}] at @s run effect give @a blindness 1 100 true
execute if entity @s[scores={SDtime=4}] at @s run effect clear @a blindness
execute if entity @s[scores={SDtime=1}] at @s run tag @s remove GameEnd
execute if entity @s[scores={SDtime=1}] run function achievements:scoresreset
execute if entity @s[scores={SDtime=2}] run gamemode survival @a[team=Blue]
execute if entity @s[scores={SDtime=2}] run gamemode survival @a[team=Yellow]
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
#For Premature Celebration achievement
execute if entity @s[scores={SDtime=1,servermode=0},tag=!realms,tag=!SMCustom,tag=BlueWonFirst] run advancement grant @a[team=Blue] only achievements:rr_challenges/premature
execute if entity @s[scores={SDtime=1},tag=BlueWonFirst] run item replace entity @a[team=Blue] armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @s[scores={SDtime=1},tag=BlueWonFirst] run item replace entity @a[team=Yellow] armor.head with air
execute if entity @s[scores={SDtime=1}] run tag @s remove BlueWonFirst
execute if entity @s[scores={SDtime=1,servermode=0},tag=!realms,tag=!SMCustom,tag=YellowWonFirst] run advancement grant @a[team=Yellow] only achievements:rr_challenges/premature
execute if entity @s[scores={SDtime=1},tag=YellowWonFirst] run item replace entity @a[team=Yellow] armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @s[scores={SDtime=1},tag=YellowWonFirst] run item replace entity @a[team=Blue] armor.head with air
execute if entity @s[scores={SDtime=1}] run tag @s remove YellowWonFirst
#Halves the Item Delay (more intense gameplay)
scoreboard players operation @s[scores={SDtime=1,MaxItemTime=3..}] MaxItemTime /= 2 MaxItemSec
scoreboard players set @s[scores={SDtime=1,MaxItemTime=..1}] MaxItemTime 2
execute if entity @s[scores={SDtime=1}] run scoreboard players set @s RandomItem -3
execute if entity @s[scores={SDtime=1}] run scoreboard players operation @s RandomItem += @s MaxItemTime
execute if entity @s[scores={SDtime=1}] run scoreboard players set @s[tag=Minute] RandomItem 1197
execute if entity @s[scores={SDtime=10}] as @a[team=!Lobby] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 100 1.3

##Places back portals
fill -10 58 74 34 58 74 minecraft:obsidian replace #custom:basereplace
fill 34 58 74 34 37 74 minecraft:obsidian replace #custom:basereplace
fill 34 37 74 -10 37 74 minecraft:obsidian replace #custom:basereplace
fill 12 37 74 12 58 74 minecraft:obsidian replace #custom:basereplace
fill -10 37 74 -10 58 74 minecraft:obsidian replace #custom:basereplace
fill 34 58 -74 -10 58 -74 minecraft:obsidian replace #custom:basereplace
fill -10 58 -74 -10 37 -74 minecraft:obsidian replace #custom:basereplace
fill -10 37 -74 34 37 -74 minecraft:obsidian replace #custom:basereplace
fill 12 37 -74 12 58 -74 minecraft:obsidian replace #custom:basereplace
fill 34 37 -74 34 58 -74 minecraft:obsidian replace #custom:basereplace
fill -9 38 -74 11 57 -74 minecraft:nether_portal
fill 13 38 -74 33 57 -74 minecraft:nether_portal
fill -9 38 74 11 57 74 minecraft:nether_portal
fill 13 57 74 33 38 74 minecraft:nether_portal

##Animated titles
execute if entity @s[scores={SDtime=1}] run title @a title ["",{"text":"It's a Tie!","color":"gray","bold":true}]
execute if entity @s[scores={SDtime=1..5}] run title @a subtitle ["",{"text":"","bold":true,"color":"red"},{"text":"SUDDEN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=6}] run title @a subtitle ["",{"text":"S","bold":true,"color":"red"},{"text":"UDDEN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=7}] run title @a subtitle ["",{"text":"SU","bold":true,"color":"red"},{"text":"DDEN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=8}] run title @a subtitle ["",{"text":"SUD","bold":true,"color":"red"},{"text":"DEN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=9}] run title @a subtitle ["",{"text":"SUDD","bold":true,"color":"red"},{"text":"EN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=10}] run title @a subtitle ["",{"text":"SUDDE","bold":true,"color":"red"},{"text":"N DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=11}] run title @a subtitle ["",{"text":"SUDDEN","bold":true,"color":"red"},{"text":" DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=12}] run title @a subtitle ["",{"text":"SUDDEN D","bold":true,"color":"red"},{"text":"EATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=13}] run title @a subtitle ["",{"text":"SUDDEN DE","bold":true,"color":"red"},{"text":"ATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=14}] run title @a subtitle ["",{"text":"SUDDEN DEA","bold":true,"color":"red"},{"text":"TH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=15}] run title @a subtitle ["",{"text":"SUDDEN DEAT","bold":true,"color":"red"},{"text":"H","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=16..}] run title @a subtitle ["",{"text":"SUDDEN DEATH","bold":true,"color":"red"}]

##Resets timer
execute if entity @s[scores={SDtime=20..}] run tag @s remove SuddenDeath
execute if entity @s[scores={SDtime=20..}] run scoreboard players reset 2 MaxItemSec