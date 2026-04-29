#################################################
## TIP: Gives newer players useful information ##
#################################################

#Timer for tips (only active when game is ongoing)
execute if predicate game:show_tips run scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] ShowTip 1
execute unless predicate game:show_tips run scoreboard players reset @e[x=0,type=armor_stand,tag=Selection,limit=1] ShowTip

#Chooses a random tip (20 possible)
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip1,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip1"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip2,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip2"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip3,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip3"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip4,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip4"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip5,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip5"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip6,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip6"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip7,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip7"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip8,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip8"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip9,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip9"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip10,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip10"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip11,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip11"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip12,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip12"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip13,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip13"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip14,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip14"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip15,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip15"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip16,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip16"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip17,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip17"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip18,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip18"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip19,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip19"]}
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!Tip20,scores={ShowTip=900}] run summon marker ~ ~ ~ {Tags:["HandyTip","Tip20"]}
tag @e[x=0,type=marker,tag=HandyTip,limit=1,sort=random] add SelectedTip

#Announces selected tip to newer players
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip1,limit=1] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Defusing missiles by breaking certain slime blocks and TNT is recommended. Try to learn how to defuse all missiles!","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip1,limit=1] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip1

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip2,limit=1] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Most Utility items can be used to stop incoming missiles.","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip2,limit=1] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip2

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip3,limit=1] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can counter a Canopy by shooting it with Arrows, Fireballs or Nova Rockets, which either explode the Canopy or set it ablaze!","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip3,limit=1] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip3

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip4,limit=1] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Obsidian Shields will break after the glass pane in the middle is broken 3 times.","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip4,limit=1] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip4

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip5,limit=1] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can use the water from the Splash to prevent TNT from blowing up blocks, cancel fall damage, or put out fire.","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip5,limit=1] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip5

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip6,limit=1] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can drop arrows to share them with your teammates!","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip6,limit=1] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip6

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip7,limit=1] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Capturing the Powerup Platform in Powerups Mode will give your team special items every 12 seconds.","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip7,limit=1] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip7

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip8,limit=1] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"If the enemy team has control of the Powerup Platform, your team gets a Crystal Crafter. Stand on top to send an End Crystal to the Platform!","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip8,limit=1] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip8

execute if predicate game:achievements_can_be_awarded as @e[x=0,type=marker,tag=SelectedTip,tag=Tip9] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"There are four Special missiles which you can obtain by controlling the Powerup Platform. Use them all to earn the Veteran achievement!","color":"gray"}]
execute unless predicate game:achievements_can_be_awarded as @e[x=0,type=marker,tag=SelectedTip,tag=Tip9] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"There are four Special missiles which you can obtain by controlling the Powerup Platform! See if you can get them all!","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip9,limit=1] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip9

execute store result score $temporary_tie_window_length_value var run function game:config/get_tie_window_length
execute if predicate game:game_rules/tie_window_length/non_zero as @e[x=0,type=marker,tag=SelectedTip,tag=Tip10] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},[{color:"gray",text:"If both teams' portals break within the tie window ("},{score:{name:"$temporary_tie_window_length_value",objective:"var"}}," seconds), a tie occurs and a tiebreaker period begins. Whoever wins that wins the match!"]]
execute unless predicate game:game_rules/tie_window_length/non_zero as @e[x=0,type=marker,tag=SelectedTip,tag=Tip10] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Make sure to break any TNT in or around your base, or else your portal could be at risk of exploding!","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip10] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip10

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip11] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"A Canopy will break itself after 20 seconds. Once the log is broken, the leaves randomly decay.","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip11] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip11

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip12] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Throwing a Splash on top of a Canopy will water it, extending its duration by 10 seconds!","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip12] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip12

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip13] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"A Vortex can identify and drift towards enemy players in a close radius. Rule of thumb: stand clear!","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip13] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip13

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip14] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"A Vortex blows up when enemies get near it, missiles pass through it, or it gets shot by projectiles. It can also chain-react with nearby Vortex explosions.","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip14] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip14

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip15] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Powerups Mode, you may obtain a Stinging Shield. Click the honeycomb to deploy it, and shoot/break the TNT in the middle to release the bees!","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip15] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip15

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip16] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"In Powerups Mode, you may obtain a Lava Splash. It functions exactly like a normal Splash, but places lava instead... watch out!","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip16] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip16

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip17] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Once you capture the Powerup Platform, it will stay captured even if no one's on it until the enemy team steps on top or the Platform breaks.","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip17] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip17

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip18] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"If both teams are on the Powerup Platform, the Platform turns red and becomes contested. Whoever remains on top gains control of the Platform.","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip18] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip18

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip19] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"You can destroy any unwanted items by putting them into your crafting slots. With more inventory space comes more items!","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip19] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip19

execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip20] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"TIP!","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"The Powerup Platform slowly breaks over time. When an End Crystal is placed on the Platform, this process is sped up significantly.","color":"gray"}]
execute as @e[x=0,type=marker,tag=SelectedTip,tag=Tip20] run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add Tip20

#Opt out message
execute as @e[x=0,type=marker,tag=SelectedTip] as @a[x=0,tag=!hideTips] run tellraw @s ["",{"text":"Click ","color":"#888888","italic":true},{"text":"[HERE]","color":"green","click_event":{"action":"run_command","command":"/trigger toggle_ingame_tips set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to stop seeing tips"}}},{"text":" to opt out of these messages.","color":"#888888","italic":true}]

#Kills all tip markers and resets timer
kill @e[x=0,type=marker,tag=HandyTip]
scoreboard players reset @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={ShowTip=900..}] ShowTip

#Tetris resetting (makes sure all tips are individually given before they're repeated)
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Tip1,tag=Tip2,tag=Tip3,tag=Tip4,tag=Tip5,tag=Tip6,tag=Tip7,tag=Tip8,tag=Tip9,tag=Tip10,tag=Tip11,tag=Tip12,tag=Tip13,tag=Tip14,tag=Tip15,tag=Tip16,tag=Tip17,tag=Tip18,tag=Tip19,tag=Tip20] run function game:tipreset