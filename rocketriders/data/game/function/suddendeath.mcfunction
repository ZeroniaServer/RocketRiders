####################################
## SUDDENDEATH: What events occur ##
## when the game results in a tie ##
####################################

##Begins timer
execute if entity @s[scores={SDtime=20..}] run scoreboard players reset @s SDtime
scoreboard players add @s SDtime 1
execute if entity @s[scores={SDtime=1}] as @a[x=0] run stopsound @s master minecraft:ui.toast.challenge_complete
execute if entity @s[scores={SDtime=1}] as @a[x=0] run stopsound @s master minecraft:entity.wither.spawn

##Resets outcome of previous game
scoreboard players reset @s endtimer
execute if entity @s[scores={SDtime=1..15}] run tag @a[x=0] remove Winner
execute if entity @s[scores={SDtime=1..15}] run tag @a[x=0] remove Loser
execute if entity @s[scores={SDtime=1..15}] run kill @e[x=0,type=tnt]
execute if entity @s[scores={SDtime=1..15}] if predicate game:modifiers/punchable_tnt/on run kill @e[x=0,predicate=entities:type/punchable_tnt]
execute if entity @s[scores={SDtime=1..15}] run kill @e[x=0,type=tnt_minecart]
execute if entity @s[scores={SDtime=1..15}] run kill @e[x=0,type=creeper]

##Preparing for Sudden Death
execute if entity @s[scores={SDtime=1}] run title @a[x=0,predicate=custom:team/blue] actionbar [""]
execute if entity @s[scores={SDtime=1}] run title @a[x=0,predicate=custom:team/yellow] actionbar [""]
execute if entity @s[scores={SDtime=1..}] run tag @s add EditedSettings
execute if entity @s[scores={SDtime=1..}] run function game:uncancelpads
execute if entity @s[scores={SDtime=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player_action/forget_all_canopies
execute if entity @s[scores={SDtime=1..2}] run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute if entity @s[scores={SDtime=1..2}] run tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
execute if entity @s[scores={SDtime=1},tag=!NoFall] run gamerule fallDamage true
execute if entity @s[scores={SDtime=1}] run effect clear @a[x=0] resistance
execute if entity @s[scores={SDtime=1}] run effect clear @a[x=0] weakness
execute if entity @s[scores={SDtime=1}] run effect clear @a[x=0] regeneration
execute if entity @s[scores={SDtime=1}] run clear @a[x=0,predicate=custom:team/any_playing_team] *[custom_data~{id:"celebratory_fireworks"}]
execute if entity @s[scores={SDtime=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:return_thrown_items
execute if entity @s[scores={SDtime=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_inventory
execute if entity @s[scores={SDtime=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor
execute if entity @s[scores={SDtime=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function items:give_main_item
execute if entity @s[scores={SDtime=1}] run effect give @a[x=0,predicate=custom:team/any_arena_team] blindness 1 100 true
execute if entity @s[scores={SDtime=4}] run effect clear @a[x=0,predicate=custom:team/any_arena_team] blindness
execute if entity @s[scores={SDtime=1}] run scoreboard players reset $match_over global
execute if entity @s[scores={SDtime=1}] run function achievements:scoresreset
execute if entity @s[scores={SDtime=2}] run gamemode survival @a[x=0,predicate=custom:team/blue]
execute if entity @s[scores={SDtime=2}] run gamemode survival @a[x=0,predicate=custom:team/yellow]
execute if entity @s[scores={SDtime=1}] run scoreboard players set $match_in_play global 1
execute if entity @s[scores={SDtime=1}] run worldborder warning distance 1000000
execute if entity @s[scores={SDtime=1}] as @e[x=0,type=fireball,tag=endFireball] run function game:fixfireball
execute if entity @s[scores={SDtime=1}] as @e[x=0,type=dragon_fireball,tag=endFireball] run function game:fixfireball
execute if entity @s[scores={SDtime=1}] run tag @s remove BlueWon
execute if entity @s[scores={SDtime=1}] run tag @s remove YellowWon
execute if entity @s[scores={SDtime=1}] run tag @s remove BothWon
#For Premature Celebration achievement
execute if predicate rr:has_achievements if entity @s[scores={SDtime=1},tag=BlueWonFirst] run advancement grant @a[x=0,predicate=custom:team/blue] only achievements:rr_challenges/premature
execute if entity @s[scores={SDtime=1},tag=BlueWonFirst] as @a[x=0,predicate=custom:team/blue] run function custom:update_armor
execute if entity @s[scores={SDtime=1},tag=BlueWonFirst] run item replace entity @a[x=0,predicate=custom:team/yellow] armor.head with air
execute if entity @s[scores={SDtime=1}] run tag @s remove BlueWonFirst
execute if predicate rr:has_achievements if entity @s[scores={SDtime=1},tag=YellowWonFirst] run advancement grant @a[x=0,predicate=custom:team/yellow] only achievements:rr_challenges/premature
execute if entity @s[scores={SDtime=1},tag=YellowWonFirst] as @a[x=0,predicate=custom:team/yellow] run function custom:update_armor
execute if entity @s[scores={SDtime=1},tag=YellowWonFirst] run item replace entity @a[x=0,predicate=custom:team/blue] armor.head with air
execute if entity @s[scores={SDtime=1}] run tag @s remove YellowWonFirst
#Halves the Item Delay (more intense gameplay)
scoreboard players operation @s[scores={SDtime=1,MaxItemTime=3..}] MaxItemTime /= $2 constant
scoreboard players set @s[scores={SDtime=1,MaxItemTime=..1}] MaxItemTime 2
execute if entity @s[scores={SDtime=1}] run scoreboard players set @s RandomItem -3
execute if entity @s[scores={SDtime=1}] run scoreboard players operation @s RandomItem += @s MaxItemTime
execute if entity @s[scores={SDtime=1}] run scoreboard players set @s[tag=Minute] RandomItem 1197
execute if entity @s[scores={SDtime=10}] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 100 1.3

##Places back portals
execute if predicate game:blue_portal_revealed run function game:place_portal/blue
execute if predicate game:yellow_portal_revealed run function game:place_portal/yellow

##Animated titles
execute if entity @s[scores={SDtime=1}] unless score $skiptitles CmdData matches 1 run title @a[x=0] title ["",{"text":"It's a Tie!","color":"gray","bold":true}]
execute if entity @s[scores={SDtime=1..5}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"","bold":true,"color":"red"},{"text":"SUDDEN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=6}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"S","bold":true,"color":"red"},{"text":"UDDEN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=7}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"SU","bold":true,"color":"red"},{"text":"DDEN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=8}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"SUD","bold":true,"color":"red"},{"text":"DEN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=9}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"SUDD","bold":true,"color":"red"},{"text":"EN DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=10}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"SUDDE","bold":true,"color":"red"},{"text":"N DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=11}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"SUDDEN","bold":true,"color":"red"},{"text":" DEATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=12}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"SUDDEN D","bold":true,"color":"red"},{"text":"EATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=13}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"SUDDEN DE","bold":true,"color":"red"},{"text":"ATH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=14}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"SUDDEN DEA","bold":true,"color":"red"},{"text":"TH","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=15}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"SUDDEN DEAT","bold":true,"color":"red"},{"text":"H","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=16..}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"SUDDEN DEATH","bold":true,"color":"red"}]

##Resets timer
execute if entity @s[scores={SDtime=20..}] run tag @s remove SuddenDeath