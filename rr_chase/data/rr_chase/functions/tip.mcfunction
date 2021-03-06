#################################################
## TIP: Gives newer players useful information ##
#################################################

#Timer for tips (only active when game is ongoing)
scoreboard players add @e[tag=Selection,tag=GameStarted,type=armor_stand] ShowTip 1
scoreboard players reset @e[tag=Selection,tag=!GameStarted,type=armor_stand] ShowTip

#Chooses a random tip (20 possible)
execute as @e[tag=Selection,tag=!Tip1,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip1"]}
execute as @e[tag=Selection,tag=!Tip2,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip2"]}
execute as @e[tag=Selection,tag=!Tip3,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip3"]}
execute as @e[tag=Selection,tag=!Tip4,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip4"]}
execute as @e[tag=Selection,tag=!Tip5,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip5"]}
execute as @e[tag=Selection,tag=!Tip6,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip6"]}
execute as @e[tag=Selection,tag=!Tip7,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip7"]}
execute as @e[tag=Selection,tag=!Tip8,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip8"]}
execute as @e[tag=Selection,tag=!Tip9,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip9"]}
execute as @e[tag=Selection,tag=!Tip10,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip10"]}
execute as @e[tag=Selection,tag=!Tip11,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip11"]}
execute as @e[tag=Selection,tag=!Tip12,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip12"]}
execute as @e[tag=Selection,tag=!Tip13,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip13"]}
execute as @e[tag=Selection,tag=!Tip14,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip14"]}
execute as @e[tag=Selection,tag=!Tip15,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip15"]}
execute as @e[tag=Selection,tag=!Tip16,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip16"]}
execute as @e[tag=Selection,tag=!Tip17,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip17"]}
execute as @e[tag=Selection,tag=!Tip18,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip18"]}
execute as @e[tag=Selection,tag=!Tip19,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip19"]}
execute as @e[tag=Selection,tag=!Tip20,scores={ShowTip=900},type=armor_stand] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip20"]}
tag @e[tag=HandyTip,limit=1,sort=random,type=marker] add SelectedTip

#Announces selected tip to newer players
execute as @e[tag=SelectedTip,tag=Tip1,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Defusing missiles by breaking certain slime blocks and TNT is recommended. Try to learn how to defuse all missiles!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip1,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip1

execute as @e[tag=SelectedTip,tag=Tip2,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Most Utility items can be used to stop missiles.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip2,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip2

execute as @e[tag=SelectedTip,tag=Tip3,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can counter a Canopy by shooting it with Arrows, Fireballs or Nova Rockets, which either explode the Canopy or set it ablaze!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip3,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip3

execute as @e[tag=SelectedTip,tag=Tip4,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Obsidian Shields will break after the glass pane in the middle is broken 3 times.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip4,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip4

execute as @e[tag=SelectedTip,tag=Tip5,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can use the water from the Splash to prevent TNT from blowing up blocks, cancel fall damage, or put out fire.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip5,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip5

execute as @e[tag=SelectedTip,tag=Tip6,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can use your Shooting Saber as a melee weapon too!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip6,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip6

execute as @e[tag=SelectedTip,tag=Tip7,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Chase Mode, there is no Yellow team. The Finish Flag is located on top of Yellow base and surrounded by obsidian stairs.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip7,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip7

execute as @e[tag=SelectedTip,tag=Tip8,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Chase Mode is one of few gamemodes in Rocket Riders without portals.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip8,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip8

execute as @e[tag=SelectedTip,tag=Tip9,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Fire Nova Rockets at enemies to launch them into the air!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip9,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip9

execute as @e[tag=SelectedTip,tag=Tip10,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"The leaves in a Canopy will burn when shot by flame arrows or disintegrate when shot by Fireballs.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip10,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip10

execute as @e[tag=SelectedTip,tag=Tip11,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Items have their category (such as Normal, Lightning, Heavy or Utility) in front of their names. Be careful with what you spawn at what time.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip11,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip11

execute as @e[tag=SelectedTip,tag=Tip12,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Lightning Speed missiles are way faster than other missiles. Great for rush tactics!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip12,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip12

execute as @e[tag=SelectedTip,tag=Tip13,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"A Canopy will break itself after 20 seconds. Once the log is broken, the leaves randomly decay.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip13,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip13

execute as @e[tag=SelectedTip,tag=Tip14,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Throwing a Splash on top of a Canopy will water it, extending its duration by 10 seconds!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip14,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip14

execute as @e[tag=SelectedTip,tag=Tip15,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"A Vortex can identify and drift towards enemy players in a close radius. Rule of thumb: stand clear!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip15,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip15

execute as @e[tag=SelectedTip,tag=Tip16,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"A Vortex blows up when enemies get near it, missiles pass through it, or it gets shot by arrows or Nova Rockets. It can also chain-react with nearby Vortex explosions.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip16,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip16

execute as @e[tag=SelectedTip,tag=Tip17,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Obsidian Shields are launched very similarly to Fireballs and place themselves wherever they hit or after 1.5 seconds of flight.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip17,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip17

execute as @e[tag=SelectedTip,tag=Tip18,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Certain missiles are able to bust through Shields, but Obsidian Shields stop them all! (Unless they blow up first, anyway...)","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip18,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip18

execute as @e[tag=SelectedTip,tag=Tip19,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Chase Mode is the only free-for-all gamemode in Rocket Riders. Whoever makes it to the Finish Flag first wins!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip19,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip19

execute as @e[tag=SelectedTip,tag=Tip20,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Chase Mode, you can use items like the Nova Rocket and the Vortex to sabotage your teammates!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip20,type=marker] run tag @e[tag=Selection,type=armor_stand] add Tip20

#Opt out message (disabled on servers)
scoreboard players add @a GamesPlayed 0
execute as @s[tag=!SMActive] run scoreboard players enable @a[scores={GamesPlayed=..9}] disableTips
execute as @s[tag=!SMActive] as @e[tag=SelectedTip,type=marker] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"Click ","color":"#888888","italic":true},{"text":"[HERE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger disableTips set 1"}},{"text":" to opt out of these messages.","color":"#888888","italic":true}]
execute as @a[scores={disableTips=1..}] run tellraw @s [{"text":"You will no longer receive tips.","color":"red"}]
execute as @a[scores={disableTips=1..}] run scoreboard players set @s GamesPlayed 10
scoreboard players set @a disableTips 0

#Kills all tip AECs and resets timer
kill @e[tag=HandyTip,type=marker]
scoreboard players reset @e[tag=Selection,scores={ShowTip=900..},type=armor_stand] ShowTip

#Tetris resetting (makes sure all tips are individually given before they're repeated)
tag @e[tag=Selection,tag=Tip1,tag=Tip2,tag=Tip3,tag=Tip4,tag=Tip5,tag=Tip6,tag=Tip7,tag=Tip8,tag=Tip9,tag=Tip10,tag=Tip11,tag=Tip12,tag=Tip13,tag=Tip14,tag=Tip15,tag=Tip16,tag=Tip17,tag=Tip18,tag=Tip19,tag=Tip20,type=armor_stand] add GivenAllTips
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
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip13
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip14
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip15
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip16
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip17
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip18
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip19
tag @e[tag=GivenAllTips,type=armor_stand] remove Tip20
tag @e[tag=GivenAllTips,type=armor_stand] remove GivenAllTips