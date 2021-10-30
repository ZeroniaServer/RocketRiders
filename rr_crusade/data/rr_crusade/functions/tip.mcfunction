#################################################
## TIP: Gives newer players useful information ##
#################################################

#Timer for tips (only active when game is ongoing)
scoreboard players add @e[type=armor_stand,tag=Selection,tag=GameStarted] ShowTip 1
scoreboard players reset @e[type=armor_stand,tag=Selection,tag=!GameStarted] ShowTip

#Chooses a random tip (20 possible)
execute as @e[type=armor_stand,tag=Selection,tag=!Tip1,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip1"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip2,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip2"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip3,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip3"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip4,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip4"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip5,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip5"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip6,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip6"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip7,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip7"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip8,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip8"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip9,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip9"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip10,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip10"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip11,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip11"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip12,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip12"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip13,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip13"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip14,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip14"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip15,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip15"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip16,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip16"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip17,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip17"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip18,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip18"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip19,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip19"]}
execute as @e[type=armor_stand,tag=Selection,tag=!Tip20,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip20"]}
tag @e[type=marker,tag=HandyTip,limit=1,sort=random] add SelectedTip

#Announces selected tip to newer players
execute as @e[type=marker,tag=SelectedTip,tag=Tip1] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Defusing missiles by breaking certain slime blocks and TNT is recommended. Try to learn how to defuse all missiles!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip1] run tag @e[type=armor_stand,tag=Selection] add Tip1

execute as @e[type=marker,tag=SelectedTip,tag=Tip2] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Most Utility items can be used to stop incoming missiles.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip2] run tag @e[type=armor_stand,tag=Selection] add Tip2

execute as @e[type=marker,tag=SelectedTip,tag=Tip3] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can counter a Canopy by shooting it with Arrows, Fireballs or Nova Rockets, which either explode the Canopy or set it ablaze!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip3] run tag @e[type=armor_stand,tag=Selection] add Tip3

execute as @e[type=marker,tag=SelectedTip,tag=Tip4] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Obsidian Shields will break after the glass pane in the middle is broken 3 times.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip4] run tag @e[type=armor_stand,tag=Selection] add Tip4

execute as @e[type=marker,tag=SelectedTip,tag=Tip5] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can use the water from the Splash to prevent TNT from blowing up blocks, cancel fall damage, or put out fire.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip5] run tag @e[type=armor_stand,tag=Selection] add Tip5

execute as @e[type=marker,tag=SelectedTip,tag=Tip6] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Crusade Mode, players can choose between 3 kits which each receive different weapons, armor, and items. Their next selected kit is given upon respawning.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip6] run tag @e[type=armor_stand,tag=Selection] add Tip6

execute as @e[type=marker,tag=SelectedTip,tag=Tip7] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Crusade Mode, both enemy crystals A and B must be destroyed to unlock the portal behind the enemy base.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip7] run tag @e[type=armor_stand,tag=Selection] add Tip7

execute as @e[type=marker,tag=SelectedTip,tag=Tip8] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Crusade Mode, a platform generates in the middle of the arena. Players can fight here or use the platform to launch missiles at crystals.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip8] run tag @e[type=armor_stand,tag=Selection] add Tip8

execute as @e[type=marker,tag=SelectedTip,tag=Tip9] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Crusade Mode, the glass beneath the middle platform regenerates over time.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip9] run tag @e[type=armor_stand,tag=Selection] add Tip9

execute as @e[type=marker,tag=SelectedTip,tag=Tip10] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Crusade Mode, Item Stacking is on by default, meaning you can hold multiple of any missile/utility at a time!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip10] run tag @e[type=armor_stand,tag=Selection] add Tip10

execute as @e[type=marker,tag=SelectedTip,tag=Tip11] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Items have their category (such as Normal, Lightning, Heavy or Utility) in front of their names. Be careful with what you spawn at what time.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip11] run tag @e[type=armor_stand,tag=Selection] add Tip11

execute as @e[type=marker,tag=SelectedTip,tag=Tip12] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Lightning Speed missiles are way faster than other missiles. Great for rush tactics!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip12] run tag @e[type=armor_stand,tag=Selection] add Tip12

execute as @e[type=marker,tag=SelectedTip,tag=Tip13] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"A Canopy will break itself after 20 seconds. Once the log is broken, the leaves randomly decay.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip13] run tag @e[type=armor_stand,tag=Selection] add Tip13

execute as @e[type=marker,tag=SelectedTip,tag=Tip14] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Throwing a Splash on top of a Canopy will water it, extending its duration by 10 seconds!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip14] run tag @e[type=armor_stand,tag=Selection] add Tip14

execute as @e[type=marker,tag=SelectedTip,tag=Tip15] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"A Vortex can identify and drift towards enemy players in a close radius. Rule of thumb: stand clear!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip15] run tag @e[type=armor_stand,tag=Selection] add Tip15

execute as @e[type=marker,tag=SelectedTip,tag=Tip16] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"A Vortex blows up when enemies get near it, missiles pass through it, or it gets shot by arrows. It can also chain react with another Vortex or TNT explosion.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip16] run tag @e[type=armor_stand,tag=Selection] add Tip16

execute as @e[type=marker,tag=SelectedTip,tag=Tip17] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Crusade Mode, you can easily destroy enemy crystals by sending missles at the glass.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip17] run tag @e[type=armor_stand,tag=Selection] add Tip17

execute as @e[type=marker,tag=SelectedTip,tag=Tip18] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Crusade Mode, the bossbars at the top of the screen show the health of both teams' crystals. Once one team's bossbar is depleted, their portal is exposed!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip18] run tag @e[type=armor_stand,tag=Selection] add Tip18

execute as @e[type=marker,tag=SelectedTip,tag=Tip19] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Crusade Mode, both the Vortex and the ICBM can be obtained! Although they may look similar, the ICBM (short for \"intercontinental ballistic missile\") can be used to deal instant explosive damage upon contact.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip19] run tag @e[type=armor_stand,tag=Selection] add Tip19

execute as @e[type=marker,tag=SelectedTip,tag=Tip20] as @a[tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Crusade Mode, choosing a different kit makes you lose all of your existing items. Be smart about when you want to change kits!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip20] run tag @e[type=armor_stand,tag=Selection] add Tip20

#Opt out message (disabled on servers)
scoreboard players add @a GamesPlayed 0
execute if entity @s[tag=!SMActive] run scoreboard players enable @a[scores={GamesPlayed=..9}] disableTips
execute if entity @s[tag=!SMActive] as @e[type=marker,tag=SelectedTip] as @a[tag=!hideTips] run tellraw @s ["",{"text":"Click ","color":"#888888","italic":true},{"text":"[HERE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger disableTips set 1"}},{"text":" to opt out of these messages.","color":"#888888","italic":true}]
execute as @a[scores={disableTips=1..}] run tellraw @s [{"text":"You will no longer receive tips.","color":"red"}]
execute as @a[scores={disableTips=1..}] run tag @s add hideTips
scoreboard players set @a disableTips 0

#Kills all tip markers and resets timer
kill @e[type=marker,tag=HandyTip]
scoreboard players reset @e[type=armor_stand,tag=Selection,scores={ShowTip=900..}] ShowTip

#Tetris resetting (makes sure all tips are individually given before they're repeated)
execute as @e[type=armor_stand,tag=Selection,tag=Tip1,tag=Tip2,tag=Tip3,tag=Tip4,tag=Tip5,tag=Tip6,tag=Tip7,tag=Tip8,tag=Tip9,tag=Tip10,tag=Tip11,tag=Tip12,tag=Tip13,tag=Tip14,tag=Tip15,tag=Tip16,tag=Tip17,tag=Tip18,tag=Tip19,tag=Tip20] run function game:tipreset