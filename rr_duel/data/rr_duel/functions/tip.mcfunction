#################################################
## TIP: Gives newer players useful information ##
#################################################

#Timer for tips (only active when game is ongoing)
scoreboard players add @e[tag=Selection,tag=GameStarted,type=armor_stand] ShowTip 1
scoreboard players reset @e[tag=Selection,tag=!GameStarted,type=armor_stand] ShowTip

#Chooses a random tip (20 possible)
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
execute as @e[tag=Selection,tag=!Tip13,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip13"]}
execute as @e[tag=Selection,tag=!Tip14,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip14"]}
execute as @e[tag=Selection,tag=!Tip15,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip15"]}
execute as @e[tag=Selection,tag=!Tip16,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip16"]}
execute as @e[tag=Selection,tag=!Tip17,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip17"]}
execute as @e[tag=Selection,tag=!Tip18,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip18"]}
execute as @e[tag=Selection,tag=!Tip19,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip19"]}
execute as @e[tag=Selection,tag=!Tip20,scores={ShowTip=900},type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["HandyTip","Tip20"]}
tag @e[tag=HandyTip,limit=1,sort=random,type=area_effect_cloud] add SelectedTip

#Announces selected tip to newer players
execute as @e[tag=SelectedTip,tag=Tip1,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Defusing missiles by breaking certain slime blocks and TNT is recommended. Try to learn how to defuse all missiles!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip1,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip1

execute as @e[tag=SelectedTip,tag=Tip2,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Most Utility items can be used to stop incoming missiles.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip2,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip2

execute as @e[tag=SelectedTip,tag=Tip3,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In 1v1 Duel Mode, the player who wins two out of three rounds wins the game.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip3,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip3

execute as @e[tag=SelectedTip,tag=Tip4,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Obsidian Shields will break after the glass pane in the middle is broken 3 times.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip4,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip4

execute as @e[tag=SelectedTip,tag=Tip5,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can use the water from the Splash to prevent TNT from blowing up blocks, cancel fall damage, or put out fire.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip5,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip5

execute as @e[tag=SelectedTip,tag=Tip6,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can use your Shooting Saber as a melee weapon too!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip6,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip6

execute as @e[tag=SelectedTip,tag=Tip7,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Fire Nova Rockets at enemies to launch them into the air!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip7,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip7

execute as @e[tag=SelectedTip,tag=Tip8,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"If two enemy Nova Rockets collide, they burst into an explosion of green particles.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip8,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip8

execute as @e[tag=SelectedTip,tag=Tip9,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Make sure to break any TNT in or around your base, or else your portal could be at risk of exploding!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip9,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip9

execute as @e[tag=SelectedTip,tag=Tip10,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Competitive item settings are generated in every round of 1v1 Duel Mode.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip10,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip10

execute as @e[tag=SelectedTip,tag=Tip11,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Items have their category (such as Normal, Lightning, Heavy or Utility) in front of their names. Be careful with what you spawn at what time.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip11,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip11

execute as @e[tag=SelectedTip,tag=Tip12,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Lightning Speed missiles are way faster than other missiles. Great for rush tactics!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip12,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip12

execute as @e[tag=SelectedTip,tag=Tip13,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"If a player leaves during a 1v1 Duel match, a one-minute timeout begins, after which the game ends in defeat for that player.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip13,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip13

execute as @e[tag=SelectedTip,tag=Tip14,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"If a player forfeits during a 1v1 Duel, the victory goes to the remaining player.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip14,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip14

execute as @e[tag=SelectedTip,tag=Tip15,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"A Vortex can identify and drift towards enemy players in a close radius. Rule of thumb: stand clear!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip15,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip15

execute as @e[tag=SelectedTip,tag=Tip16,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"A Vortex blows up when enemies get near it, missiles pass through it, or it gets shot by arrows or Nova Rockets. It can also chain-react with nearby Vortex explosions.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip16,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip16

execute as @e[tag=SelectedTip,tag=Tip17,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"As the name implies, 1v1 Duel Mode only allows one player on each team. If you're not in the game, feel free to spectate!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip17,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip17

execute as @s[tag=!noYZELO] as @e[tag=SelectedTip,tag=Tip18,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Winning a 1v1 Duel gives you XP, and the more XP you earn, the higher your rank gets. Each rank comes with its own boots!","color":"gray"}]
execute as @s[tag=noYZELO] as @e[tag=SelectedTip,tag=Tip18,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You might not get a reward for winning a 1v1 Duel, but you do get bragging rights!","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip18,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip18

execute as @e[tag=SelectedTip,tag=Tip19,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Obsidian Shields are launched very similarly to Fireballs and place themselves wherever they hit or after 1.5 seconds of flight.","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip19,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip19

execute as @e[tag=SelectedTip,tag=Tip20,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Certain missiles are able to bust through Shields, but Obsidian Shields stop them all! (Unless they blow up first, anyway...)","color":"gray"}]
execute as @e[tag=SelectedTip,tag=Tip20,type=area_effect_cloud] run tag @e[tag=Selection,type=armor_stand] add Tip20

#Opt out message (disabled on servers)
scoreboard players add @a GamesPlayed 0
execute as @s[tag=!SMActive] run scoreboard players enable @a[scores={GamesPlayed=..9}] disableTips
execute as @s[tag=!SMActive] as @e[tag=SelectedTip,type=area_effect_cloud] as @a unless entity @s[scores={GamesPlayed=10..}] run tellraw @s ["",{"text":"Click ","color":"#888888","italic":"true"},{"text":"[HERE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger disableTips set 1"}},{"text":" to opt out of these messages.","color":"#888888","italic":"true"}]
execute as @a[scores={disableTips=1..}] run tellraw @s [{"text":"You will no longer receive tips.","color":"red"}]
execute as @a[scores={disableTips=1..}] run scoreboard players set @s GamesPlayed 10
scoreboard players set @a disableTips 0

#Kills all tip AECs and resets timer
kill @e[tag=HandyTip,type=area_effect_cloud]
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