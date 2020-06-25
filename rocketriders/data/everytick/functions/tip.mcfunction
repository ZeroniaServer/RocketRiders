#################################################
## TIP: Gives newer players useful information ##
#################################################

#Timer for tips (only active when game is ongoing)
scoreboard players add @e[tag=Selection,tag=GameStarted] ShowTip 1
scoreboard players reset @e[tag=Selection,tag=!GameStarted] ShowTip

#Chooses a random tip (12 possible)
execute as @e[tag=Selection,tag=!Tip1,scores={ShowTip=900}] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip1"]}
execute as @e[tag=Selection,tag=!Tip2,scores={ShowTip=900}] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip2"]}
execute as @e[tag=Selection,tag=!Tip3,scores={ShowTip=900}] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip3"]}
execute as @e[tag=Selection,tag=!Tip4,scores={ShowTip=900}] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip4"]}
execute as @e[tag=Selection,tag=!Tip5,scores={ShowTip=900}] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip5"]}
execute as @e[tag=Selection,tag=!Tip6,scores={ShowTip=900}] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip6"]}
execute as @e[tag=Selection,tag=!Tip7,scores={ShowTip=900}] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip7"]}
execute as @e[tag=Selection,tag=!Tip8,scores={ShowTip=900}] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip8"]}
execute as @e[tag=Selection,tag=!Tip9,scores={ShowTip=900}] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip9"]}
execute as @e[tag=Selection,tag=!Tip10,scores={ShowTip=900}] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip10"]}
execute as @e[tag=Selection,tag=!Tip11,scores={ShowTip=900}] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip11"]}
execute as @e[tag=Selection,tag=!Tip12,scores={ShowTip=900}] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip12"]}
tag @e[tag=HandyTip,limit=1,sort=random] add SelectedTip

#Announces selected tip to newer players
execute as @e[tag=SelectedTip,tag=Tip1] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Defusing missiles by breaking slime blocks and TNT is recommended. Try to learn it for all missiles!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip1] run tag @e[tag=Selection] add Tip1

execute as @e[tag=SelectedTip,tag=Tip2] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Most utility items can be used to stop incoming missiles.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip2] run tag @e[tag=Selection] add Tip2

execute as @e[tag=SelectedTip,tag=Tip3] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can counter a Canopy by shooting it with Arrows, Fireballs or Nova Rockets.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip3] run tag @e[tag=Selection] add Tip3

execute as @e[tag=SelectedTip,tag=Tip4] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Obsidian Shields will break after the glass pane in the middle is broken 3 times.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip4] run tag @e[tag=Selection] add Tip4

execute as @e[tag=SelectedTip,tag=Tip5] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can use the Splash to prevent TNT from blowing up blocks.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip5] run tag @e[tag=Selection] add Tip5

execute as @e[tag=SelectedTip,tag=Tip6] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can use your bow as a melee weapon too!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip6] run tag @e[tag=Selection] add Tip6

execute as @e[tag=SelectedTip,tag=Tip7] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Capturing the platform in Powerups Mode will give your team special items every 20 seconds.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip7] run tag @e[tag=Selection] add Tip7

execute as @e[tag=SelectedTip,tag=Tip8] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Swap Mode, the colors of your base change every minute. The color of your base (light or dark) will determine what kind of items you get.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip8] run tag @e[tag=Selection] add Tip8

execute as @e[tag=SelectedTip,tag=Tip9] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Competetive item settings are generated in every round of 1v1 Duels.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip9] run tag @e[tag=Selection] add Tip9

execute as @e[tag=SelectedTip,tag=Tip10] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Competetive item settings are generated in every round of the 1v1 Duels gamemode.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip10] run tag @e[tag=Selection] add Tip10

execute as @e[tag=SelectedTip,tag=Tip11] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Items have their category (such as Normal, Lightning, Heavy or Utility) in front of their names. Be careful with what you spawn at what time.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip11] run tag @e[tag=Selection] add Tip11

execute as @e[tag=SelectedTip,tag=Tip12] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Lightning category missiles are way faster than regular missiles.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip12] run tag @e[tag=Selection] add Tip12

#Kills all tip AECs and resets timer
kill @e[tag=HandyTip]
scoreboard players reset @e[tag=Selection,scores={ShowTip=900..}] ShowTip

#Tetris resetting (makes sure all tips are individually given before they're repeated)
tag @e[tag=Selection,tag=Tip1,tag=Tip2,tag=Tip3,tag=Tip4,tag=Tip5,tag=Tip6,tag=Tip7,tag=Tip8,tag=Tip9,tag=Tip10,tag=Tip11,tag=Tip12] add GivenAllTips
tag @e[tag=GivenAllTips] remove Tip1
tag @e[tag=GivenAllTips] remove Tip2
tag @e[tag=GivenAllTips] remove Tip3
tag @e[tag=GivenAllTips] remove Tip4
tag @e[tag=GivenAllTips] remove Tip5
tag @e[tag=GivenAllTips] remove Tip6
tag @e[tag=GivenAllTips] remove Tip7
tag @e[tag=GivenAllTips] remove Tip8
tag @e[tag=GivenAllTips] remove Tip9
tag @e[tag=GivenAllTips] remove Tip10
tag @e[tag=GivenAllTips] remove Tip11
tag @e[tag=GivenAllTips] remove Tip12
tag @e[tag=GivenAllTips] remove GivenAllTips