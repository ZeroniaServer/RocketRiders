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
execute as @e[type=marker,tag=SelectedTip,tag=Tip1] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Defusing missiles by breaking certain slime blocks and TNT is recommended. Try to learn how to defuse all missiles!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip1] run tag @e[type=armor_stand,tag=Selection] add Tip1

execute as @e[type=marker,tag=SelectedTip,tag=Tip2] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Most Utility items can be used to stop incoming missiles.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip2] run tag @e[type=armor_stand,tag=Selection] add Tip2

execute as @e[type=marker,tag=SelectedTip,tag=Tip3] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"The Hypersonic is the fastest missile in Rocket Riders, traveling at 4.4 blocks per second. Difficult to ride but really quick to travel!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip3] run tag @e[type=armor_stand,tag=Selection] add Tip3

execute as @e[type=marker,tag=SelectedTip,tag=Tip4] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Obsidian Shields will break after the glass pane in the middle is broken 3 times.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip4] run tag @e[type=armor_stand,tag=Selection] add Tip4

execute as @e[type=marker,tag=SelectedTip,tag=Tip5] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Swap Mode, players on the light team receive faster missiles and punchable utilities.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip5] run tag @e[type=armor_stand,tag=Selection] add Tip5

execute as @e[type=marker,tag=SelectedTip,tag=Tip6] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can use your Shooting Saber as a melee weapon too!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip6] run tag @e[type=armor_stand,tag=Selection] add Tip6

execute as @e[type=marker,tag=SelectedTip,tag=Tip7] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Swap Mode, players on the dark team receive heavier missiles and throwable utilities.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip7] run tag @e[type=armor_stand,tag=Selection] add Tip7

execute as @e[type=marker,tag=SelectedTip,tag=Tip8] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Swap Mode, base colors swap every minute. The color of your base (light or dark) will determine what kinds of items you get.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip8] run tag @e[type=armor_stand,tag=Selection] add Tip8

execute if entity @s[tag=!SMActive] as @e[type=marker,tag=SelectedTip,tag=Tip9] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"There are four Special missiles which you can play with in Swap Mode. Use them all to earn the Veteran achievement!","color":"gray"}]
execute if entity @s[tag=SMActive] as @e[type=marker,tag=SelectedTip,tag=Tip9] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"There are four Special missiles which you can play with in Swap Mode!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip9] run tag @e[type=armor_stand,tag=Selection] add Tip9

execute if entity @s[tag=doTying,tag=!tyingOff] as @e[type=marker,tag=SelectedTip,tag=Tip10] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"If both teams' portals break within 5 seconds, a tie occurs and a Sudden Death period begins. During Sudden Death, base colors swap twice as fast!","color":"gray"}]
execute unless entity @s[tag=doTying,tag=!tyingOff] as @e[type=marker,tag=SelectedTip,tag=Tip10] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Make sure to break any TNT in or around your base, or else your portal could be at risk of exploding!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip10] run tag @e[type=armor_stand,tag=Selection] add Tip10

execute as @e[type=marker,tag=SelectedTip,tag=Tip11] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Items have their category (such as Special, Lightning, Heavy or Utility) in front of their names. Be careful with what you spawn at what time.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip11] run tag @e[type=armor_stand,tag=Selection] add Tip11

execute as @e[type=marker,tag=SelectedTip,tag=Tip12] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Lightning Speed missiles are way faster than other missiles. Great for rush tactics!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip12] run tag @e[type=armor_stand,tag=Selection] add Tip12

execute as @e[type=marker,tag=SelectedTip,tag=Tip13] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"The Cluster Fireball is a Swap Mode exclusive item. Once you hit a Cluster Fireball, it creates four others that travel alongside it like a cluster.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip13] run tag @e[type=armor_stand,tag=Selection] add Tip13

execute as @e[type=marker,tag=SelectedTip,tag=Tip14] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"The ICBM (short for \"intercontinental ballistic missile\") is a Swap Mode exclusive item. Wherever the egg hits, mass destruction is sure to come.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip14] run tag @e[type=armor_stand,tag=Selection] add Tip14

execute as @e[type=marker,tag=SelectedTip,tag=Tip15] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Swap Mode is probably the most overpowered mode in Rocket Riders. Use the special items to your advantage!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip15] run tag @e[type=armor_stand,tag=Selection] add Tip15

execute as @e[type=marker,tag=SelectedTip,tag=Tip16] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Swap Mode is the only gamemode in Rocket Riders where each team receives different items. Use your items to counter your enemies when they least expect it!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip16] run tag @e[type=armor_stand,tag=Selection] add Tip16

execute as @e[type=marker,tag=SelectedTip,tag=Tip17] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"The Duplex is an exclusive missile in Swap Mode with the unique ability of exploding twice via TNT minecarts in the front.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip17] run tag @e[type=armor_stand,tag=Selection] add Tip17

execute as @e[type=marker,tag=SelectedTip,tag=Tip18] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"The Bullet and the Broadsword are exclusive missiles in Swap Mode with a lot of trigger TNT!","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip18] run tag @e[type=armor_stand,tag=Selection] add Tip18

execute as @e[type=marker,tag=SelectedTip,tag=Tip19] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Obsidian Shields are launched very similarly to Cluster Fireballs and place themselves wherever they hit or after 1.5 seconds of flight.","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip19] run tag @e[type=armor_stand,tag=Selection] add Tip19

execute as @e[type=marker,tag=SelectedTip,tag=Tip20] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Certain missiles are able to bust through Shields, but Obsidian Shields stop them all! (Unless they blow up first, anyway...)","color":"gray"}]
execute as @e[type=marker,tag=SelectedTip,tag=Tip20] run tag @e[type=armor_stand,tag=Selection] add Tip20

#Opt out message (disabled on servers)
scoreboard players add @a GamesPlayed 0
execute if entity @s[tag=!SMActive] run scoreboard players enable @a[scores={GamesPlayed=..9}] disableTips
execute if entity @s[tag=!SMActive] as @e[type=marker,tag=SelectedTip] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"Click ","color":"#888888","italic":true},{"text":"[HERE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger disableTips set 1"}},{"text":" to opt out of these messages.","color":"#888888","italic":true}]
execute as @a[scores={disableTips=1..}] run tellraw @s [{"text":"You will no longer receive tips.","color":"red"}]
execute as @a[scores={disableTips=1..}] run scoreboard players set @s GamesPlayed 10
scoreboard players set @a disableTips 0

#Kills all tip markers and resets timer
kill @e[type=marker,tag=HandyTip]
scoreboard players reset @e[type=armor_stand,tag=Selection,scores={ShowTip=900..}] ShowTip

#Tetris resetting (makes sure all tips are individually given before they're repeated)
tag @e[type=armor_stand,tag=Selection,tag=Tip1,tag=Tip2,tag=Tip3,tag=Tip4,tag=Tip5,tag=Tip6,tag=Tip7,tag=Tip8,tag=Tip9,tag=Tip10,tag=Tip11,tag=Tip12,tag=Tip13,tag=Tip14,tag=Tip15,tag=Tip16,tag=Tip17,tag=Tip18,tag=Tip19,tag=Tip20] add GivenAllTips
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip1
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip2
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip3
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip4
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip5
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip6
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip7
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip8
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip9
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip10
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip11
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip12
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip13
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip14
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip15
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip16
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip17
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip18
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip19
tag @e[type=armor_stand,tag=GivenAllTips] remove Tip20
tag @e[type=armor_stand,tag=GivenAllTips] remove GivenAllTips