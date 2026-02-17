#####################################
## SUDDENDEATH: What events occur  ##
## when the match results in a tie ##
#####################################

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

##Preparing for Tiebreaker
execute if entity @s[scores={SDtime=1}] run function game:set_phase/match.play
execute if entity @s[scores={SDtime=1}] run title @a[x=0,predicate=custom:team/blue] actionbar [""]
execute if entity @s[scores={SDtime=1}] run title @a[x=0,predicate=custom:team/yellow] actionbar [""]
execute if entity @s[scores={SDtime=1..}] run tag @s add EditedSettings
execute if entity @s[scores={SDtime=1..}] run function game:uncancelpads
execute if entity @s[scores={SDtime=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player_action/forget_all_canopies
execute if entity @s[scores={SDtime=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player_action/forget_nova_attach
execute if entity @s[scores={SDtime=1..2}] run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute if entity @s[scores={SDtime=1..2}] run tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
execute if entity @s[scores={SDtime=1}] unless predicate game:modifiers/no_fall_damage/on run function custom:game_rules/fall_damage/on
execute if entity @s[scores={SDtime=1}] run effect clear @a[x=0] resistance
execute if entity @s[scores={SDtime=1}] run effect clear @a[x=0] weakness
execute if entity @s[scores={SDtime=1}] run effect clear @a[x=0] regeneration
execute if entity @s[scores={SDtime=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor
execute if entity @s[scores={SDtime=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory
execute if entity @s[scores={SDtime=1}] run effect give @a[x=0,predicate=custom:team/any_arena_team] blindness 1 100 true
execute if entity @s[scores={SDtime=4}] run effect clear @a[x=0,predicate=custom:team/any_arena_team] blindness
execute if entity @s[scores={SDtime=1}] run function achievements:scoresreset
execute if entity @s[scores={SDtime=2}] run gamemode survival @a[x=0,predicate=custom:team/blue]
execute if entity @s[scores={SDtime=2}] run gamemode survival @a[x=0,predicate=custom:team/yellow]
execute if entity @s[scores={SDtime=1}] run worldborder warning distance 1000000
execute if entity @s[scores={SDtime=1}] as @e[x=0,type=#custom:large_fireballs] run function game:set_fireball_punchable
execute if entity @s[scores={SDtime=1}] run tag @s remove BlueWon
execute if entity @s[scores={SDtime=1}] run tag @s remove YellowWon
execute if entity @s[scores={SDtime=1}] run tag @s remove BothWon
#For Premature Celebration achievement
execute if predicate game:achievements_can_be_awarded if entity @s[scores={SDtime=1},tag=BlueWonFirst] run advancement grant @a[x=0,predicate=custom:team/blue] only achievements:rr_challenges/premature
execute if entity @s[scores={SDtime=1},tag=BlueWonFirst] as @a[x=0,predicate=custom:team/blue] run function custom:update_armor
execute if entity @s[scores={SDtime=1},tag=BlueWonFirst] run item replace entity @a[x=0,predicate=custom:team/yellow] armor.head with air
execute if entity @s[scores={SDtime=1}] run tag @s remove BlueWonFirst
execute if predicate game:achievements_can_be_awarded if entity @s[scores={SDtime=1},tag=YellowWonFirst] run advancement grant @a[x=0,predicate=custom:team/yellow] only achievements:rr_challenges/premature
execute if entity @s[scores={SDtime=1},tag=YellowWonFirst] as @a[x=0,predicate=custom:team/yellow] run function custom:update_armor
execute if entity @s[scores={SDtime=1},tag=YellowWonFirst] run item replace entity @a[x=0,predicate=custom:team/blue] armor.head with air
execute if entity @s[scores={SDtime=1}] run tag @s remove YellowWonFirst
#Halves the Item Delay (more intense gameplay)
scoreboard players operation @s[scores={SDtime=1,MaxItemTime=3..}] MaxItemTime /= $2 constant
scoreboard players set @s[scores={SDtime=1,MaxItemTime=..1}] MaxItemTime 2
execute if entity @s[scores={SDtime=1}] run scoreboard players set @s RandomItem -3
execute if entity @s[scores={SDtime=1}] run scoreboard players operation @s RandomItem += @s MaxItemTime
execute if entity @s[scores={SDtime=1}] if predicate game:modifiers/minute_mix/on run scoreboard players set @s RandomItem 1197
execute if entity @s[scores={SDtime=10}] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 100 1.3

##Places back portals
execute if predicate game:blue_portal_revealed run function game:place_portal/blue
execute if predicate game:yellow_portal_revealed run function game:place_portal/yellow

##Animated titles
execute if entity @s[scores={SDtime=1}] unless score $skiptitles CmdData matches 1 run title @a[x=0] title ["",{"text":"It's a Tie!","color":"gray","bold":true}]
execute if entity @s[scores={SDtime=1..5}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"","bold":true,"color":"red"},{"text":"TIEBREAKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=6}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"T","bold":true,"color":"red"},{"text":"IEBREAKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=7}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"TI","bold":true,"color":"red"},{"text":"EBREAKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=8}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"TIE","bold":true,"color":"red"},{"text":"BREAKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=9}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"TIEB","bold":true,"color":"red"},{"text":"REAKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=10}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"TIEBR","bold":true,"color":"red"},{"text":"EAKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=11}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"TIEBRE","bold":true,"color":"red"},{"text":"AKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=12}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"TIEBREA","bold":true,"color":"red"},{"text":"KER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=13}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"TIEBREAK","bold":true,"color":"red"},{"text":"ER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=14}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"TIEBREAKE","bold":true,"color":"red"},{"text":"R","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=15..}] unless score $skiptitles CmdData matches 1 run title @a[x=0] subtitle ["",{"text":"TIEBREAKER","bold":true,"color":"red"}]

##Resets timer
execute if entity @s[scores={SDtime=20..}] run tag @s remove SuddenDeath