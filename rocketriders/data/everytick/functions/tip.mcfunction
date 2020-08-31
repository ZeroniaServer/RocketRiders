#################################################
## TIP: Gives newer players useful information ##
#################################################

#Timer for tips (only active when game is ongoing)
scoreboard players add @e[tag=Selection,tag=GameStarted,type=armor_stand] ShowTip 1
scoreboard players reset @e[tag=Selection,tag=!GameStarted,type=armor_stand] ShowTip

#Chooses a random tip (12 possible)
execute as @e[tag=Selection,tag=!Tip1,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip1"]}
execute as @e[tag=Selection,tag=!Tip2,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip2"]}
execute as @e[tag=Selection,tag=!Tip3,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip3"]}
execute as @e[tag=Selection,tag=!Tip4,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip4"]}
execute as @e[tag=Selection,tag=!Tip5,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip5"]}
execute as @e[tag=Selection,tag=!Tip6,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip6"]}
execute as @e[tag=Selection,tag=!Tip7,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip7"]}
execute as @e[tag=Selection,tag=!Tip8,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip8"]}
execute as @e[tag=Selection,tag=!Tip9,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip9"]}
execute as @e[tag=Selection,tag=!Tip10,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip10"]}
execute as @e[tag=Selection,tag=!Tip11,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip11"]}
execute as @e[tag=Selection,tag=!Tip12,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip12"]}
tag @e[tag=HandyTip,limit=1,sort=random,type=area_effect_cloud] add SelectedTip

#Announces selected tip to newer players
execute as @e[tag=SelectedTip,tag=Tip1,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Defusing missiles by breaking slime blocks and TNT is recommended. Try to learn it for all missiles!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip1,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip1

execute as @e[tag=SelectedTip,tag=Tip2,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Most Utility items can be used to stop incoming missiles.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip2,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip2

execute as @e[tag=SelectedTip,tag=Tip3,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can counter a Canopy by shooting it with Arrows, Fireballs or Nova Rockets.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip3,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip3

execute as @e[tag=SelectedTip,tag=Tip4,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Obsidian Shields will break after the glass pane in the middle is broken 3 times.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip4,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip4

execute as @e[tag=SelectedTip,tag=Tip5,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can use the Splash to prevent TNT from blowing up blocks.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip5,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip5

execute as @e[tag=SelectedTip,tag=Tip6,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can use your Shooting Saber as a melee weapon too!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip6,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip6

execute as @e[tag=SelectedTip,tag=Tip7,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Capturing the Powerup Platform in Powerups Mode will give your team special items every 20 seconds.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip7,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip7

execute as @e[tag=SelectedTip,tag=Tip8,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Swap Mode, the colors of your base change every minute. The color of your base (light or dark) will determine what kind of items you get.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip8,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip8

execute as @e[tag=SelectedTip,tag=Tip9,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"There are four Special missiles which you can play with in Swap Mode and Powerups Mode. Use them all to earn the Veteran achievement!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip9,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip9

execute as @e[tag=SelectedTip,tag=Tip10,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Competetive item settings are generated in every match of 1v1 Duel Mode.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip10,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip10

execute as @e[tag=SelectedTip,tag=Tip11,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Items have their category (such as Normal, Lightning, Heavy or Utility) in front of their names. Be careful with what you spawn at what time.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip11,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip11

execute as @e[tag=SelectedTip,tag=Tip12,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Lightning speed missiles are way faster than regular missiles.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip12,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip12

#Opt out message
scoreboard players enable @a[scores={GamesPlayed=..9}] disableTips
execute as @e[tag=SelectedTip,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"Click ","color":"dark_gray","italic":"true"},{"text":"[HERE]","color":"dark_green","bold":"true","clickEvent":{"action":"run_command","value":"/trigger disableTips set 1"}},{"text":" to opt out of these messages.","color":"dark_gray","italic":"true"}]
execute as @a[scores={disableTips=1..}] run tellraw @s [{"text":"You will no longer receive tips.","color":"red"}]
execute as @a[scores={disableTips=1..}] run scoreboard players set @s GamesPlayed 10
scoreboard players set @a disableTips 0

#Kills all tip AECs and resets timer
kill @e[tag=HandyTip,type=area_effect_cloud]
scoreboard players reset @e[tag=Selection,scores={ShowTip=900..},type=armor_stand] ShowTip

#Tetris resetting (makes sure all tips are individually given before they're repeated)
tag @e[tag=Selection,tag=Tip1,tag=Tip2,tag=Tip3,tag=Tip4,tag=Tip5,tag=Tip6,tag=Tip7,tag=Tip8,tag=Tip9,tag=Tip10,tag=Tip11,tag=Tip12,type=armor_stand] add GivenAllTips
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip1
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip2
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip3
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip4
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip5
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip6
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip7
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip8
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip9
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip10
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip11
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip12
tag @e[tag=GivenAllTips,type=armor_stand] remove GivenAllTips