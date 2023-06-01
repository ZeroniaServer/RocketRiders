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
execute if entity @s[scores={SDtime=1..15}] run kill @e[predicate=custom:indimension,type=tnt]
execute if entity @s[scores={SDtime=1..15}] run kill @e[predicate=custom:indimension,type=tnt_minecart]
execute if entity @s[scores={SDtime=1..15}] run kill @e[predicate=custom:indimension,type=creeper]

##Preparing for Sudden Death
execute if entity @s[scores={SDtime=1}] run title @a[predicate=custom:indimension,team=Blue] actionbar [""]
execute if entity @s[scores={SDtime=1}] run title @a[predicate=custom:indimension,team=Yellow] actionbar [""]
execute if entity @s[scores={SDtime=1..}] run tag @s add EditedSettings
execute if entity @s[scores={SDtime=1..}] run function game:uncancelpads
execute if entity @s[scores={SDtime=1..2}] at @s run tp @a[predicate=custom:indimension,team=Blue] 12 64 -66 0 0
execute if entity @s[scores={SDtime=1..2}] at @s run tp @a[predicate=custom:indimension,team=Yellow] 12 64 66 180 0
execute if entity @s[scores={SDtime=1}] run scoreboard players reset @e[predicate=custom:indimension,type=marker,tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUID
execute if entity @s[scores={SDtime=1}] run scoreboard players reset @e[predicate=custom:indimension,type=marker,tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUID
execute if entity @s[scores={SDtime=1}] at @s run scoreboard players set 2 MaxItemSec 2
execute if entity @s[scores={SDtime=1},tag=!NoFall] run gamerule fallDamage true
execute if entity @s[scores={SDtime=1}] at @s run item replace entity @a[predicate=custom:indimension] armor.head with air
execute if entity @s[scores={SDtime=1}] at @s run clear @a[predicate=custom:indimension] firework_rocket
execute if entity @s[scores={SDtime=1}] at @s run effect clear @a[predicate=custom:indimension] resistance
execute if entity @s[scores={SDtime=1}] at @s run effect clear @a[predicate=custom:indimension] weakness
execute if entity @s[scores={SDtime=1}] at @s run effect clear @a[predicate=custom:indimension] regeneration
execute if entity @s[scores={SDtime=1},tag=!noSabers] as @e[predicate=custom:indimension,type=item,nbt={Item:{id:"minecraft:bow"}}] run function items:killendweapon
execute if entity @s[scores={SDtime=1},tag=BlueWonFirst,tag=!noSabers] run clear @a[predicate=custom:indimension,team=Yellow] bow
execute if entity @s[scores={SDtime=1},tag=BlueWonFirst,tag=!noSabers] as @a[predicate=custom:indimension,team=Yellow] run function game:saberyellow
execute if entity @s[scores={SDtime=1},tag=YellowWonFirst,tag=!noSabers] run clear @a[predicate=custom:indimension,team=Blue] bow
execute if entity @s[scores={SDtime=1},tag=YellowWonFirst,tag=!noSabers] as @a[predicate=custom:indimension,team=Blue] run function game:saberblue
execute if entity @s[scores={SDtime=1}] at @s run effect give @a[predicate=custom:indimension] blindness 1 100 true
execute if entity @s[scores={SDtime=4}] at @s run effect clear @a[predicate=custom:indimension] blindness
execute if entity @s[scores={SDtime=1}] at @s run tag @s remove GameEnd
execute if entity @s[scores={SDtime=1}] run function achievements:scoresreset
execute if entity @s[scores={SDtime=2}] run gamemode survival @a[predicate=custom:indimension,team=Blue]
execute if entity @s[scores={SDtime=2}] run gamemode survival @a[predicate=custom:indimension,team=Yellow]
execute if entity @s[scores={SDtime=1}] run tag @s add GameStarted
execute if entity @s[scores={SDtime=1}] run worldborder warning distance 1000000
#Fix endgame fireballs
execute if entity @s[tag=!fireballOverride,scores={SDtime=1}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball,tag=!specialEndFireball] run scoreboard players add @s endFireball 1
execute if entity @s[tag=!fireballOverride,scores={SDtime=1}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball,tag=!specialEndFireball] at @s run summon fireball ~ ~ ~ {Tags:["endFireball2"],ExplosionPower:0,Motion:[0.0,0.0,0.0],power:[0.0,0.0,0.0]}
execute if entity @s[tag=!fireballOverride,scores={SDtime=1}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball2] at @s run data modify entity @s Owner set from entity @e[predicate=custom:indimension,type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Owner
execute if entity @s[tag=!fireballOverride,scores={SDtime=1}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball2] at @s run data modify entity @s Item set from entity @e[predicate=custom:indimension,type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Item
execute if entity @s[tag=!fireballOverride,scores={SDtime=1}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball2] at @s run data modify entity @s Tags set from entity @e[predicate=custom:indimension,type=fireball,scores={endFireball=1},limit=1,sort=nearest,distance=..1] Tags
execute if entity @s[tag=!fireballOverride,scores={SDtime=1}] run kill @e[predicate=custom:indimension,type=fireball,tag=!specialEndFireball,scores={endFireball=1}]
execute if entity @s[tag=!fireballOverride,scores={SDtime=1}] as @e[predicate=custom:indimension,type=fireball,tag=endFireball,tag=!specialEndFireball,tag=!obfireball] run data merge entity @s {ExplosionPower:1}
execute if entity @s[tag=!fireballOverride,scores={SDtime=1}] run tag @e[predicate=custom:indimension,type=fireball,tag=!specialEndFireball] remove endFireball
execute if entity @s[tag=!fireballOverride,scores={SDtime=1}] run tag @e[predicate=custom:indimension,type=fireball,tag=!specialEndFireball] remove endFireball2
execute if entity @s[tag=!fireballOverride,scores={SDtime=1}] run kill @e[predicate=custom:indimension,type=area_effect_cloud,tag=endFireballAEC,tag=!specialEndFireball]
execute if entity @s[scores={SDtime=1}] run tag @s remove BlueWon
execute if entity @s[scores={SDtime=1}] run tag @s remove YellowWon
execute if entity @s[scores={SDtime=1}] run tag @s remove BothWon
#For Premature Celebration achievement
execute if entity @s[scores={SDtime=1,servermode=0},tag=!realms,tag=!SMCustom,tag=BlueWonFirst] run advancement grant @a[predicate=custom:indimension,team=Blue] only achievements:rr_challenges/premature
execute if entity @s[scores={SDtime=1},tag=BlueWonFirst] run item replace entity @a[predicate=custom:indimension,team=Blue] armor.chest with leather_chestplate{Trim:{material:"minecraft:quartz",pattern:"minecraft:vex"},display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:255,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @s[scores={SDtime=1},tag=BlueWonFirst] run item replace entity @a[predicate=custom:indimension,team=Yellow] armor.head with air
execute if entity @s[scores={SDtime=1}] run tag @s remove BlueWonFirst
execute if entity @s[scores={SDtime=1,servermode=0},tag=!realms,tag=!SMCustom,tag=YellowWonFirst] run advancement grant @a[predicate=custom:indimension,team=Yellow] only achievements:rr_challenges/premature
execute if entity @s[scores={SDtime=1},tag=YellowWonFirst] run item replace entity @a[predicate=custom:indimension,team=Yellow] armor.chest with leather_chestplate{Trim:{material:"minecraft:netherite",pattern:"minecraft:spire"},display:{Name:'[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:255,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @s[scores={SDtime=1},tag=YellowWonFirst] run item replace entity @a[predicate=custom:indimension,team=Blue] armor.head with air
execute if entity @s[scores={SDtime=1}] run tag @s remove YellowWonFirst
#Halves the Item Delay (more intense gameplay)
scoreboard players operation @s[scores={SDtime=1,MaxItemTime=3..}] MaxItemTime /= 2 MaxItemSec
scoreboard players set @s[scores={SDtime=1,MaxItemTime=..1}] MaxItemTime 2
execute if entity @s[scores={SDtime=1}] run scoreboard players set @s RandomItem -3
execute if entity @s[scores={SDtime=1}] run scoreboard players operation @s RandomItem += @s MaxItemTime
execute if entity @s[scores={SDtime=1}] run scoreboard players set @s[tag=Minute] RandomItem 1197
execute if entity @s[scores={SDtime=10}] as @a[predicate=custom:indimension,team=!Lobby] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 100 1.3

##Places back portals
execute unless entity @s[tag=noPortal] run function arenaclear:placeportals

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