##Allows players to forfeit the game by dropping their Shooting Sabers and confirming in chat
execute unless predicate rr:is_cubekrowd run scoreboard players enable @a[x=0,predicate=custom:team/any_playing_team] LeaveMidgame
execute unless predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/blue,scores={dropBow=1..}] [{"text":"Are you sure you want to forfeit the match? ","color":"red"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger LeaveMidgame set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to leave the match"}}}]
execute unless predicate rr:is_cubekrowd run tellraw @a[x=0,predicate=custom:team/yellow,scores={dropBow=1..}] [{"text":"Are you sure you want to forfeit the match? ","color":"red"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger LeaveMidgame set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to leave the match"}}}]
execute unless predicate rr:is_cubekrowd if entity @s[tag=!noYZELO] run tellraw @a[x=0,scores={dropBow=1..}] {"text":"Note: you will lose XP!","color":"dark_red","italic":true}
execute unless predicate rr:is_cubekrowd run scoreboard players set @a[x=0,scores={dropBow=1..}] dropBow 0
execute unless predicate rr:is_cubekrowd as @a[x=0,predicate=custom:team/blue,scores={LeaveMidgame=1}] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" forfeited the match!","color":"red"}]
execute unless predicate rr:is_cubekrowd as @a[x=0,predicate=custom:team/blue,scores={LeaveMidgame=1}] run tag @s add Forfeiter
execute unless predicate rr:is_cubekrowd as @a[x=0,predicate=custom:team/yellow,scores={LeaveMidgame=1}] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" forfeited the match!","color":"red"}]
execute unless predicate rr:is_cubekrowd as @a[x=0,predicate=custom:team/yellow,scores={LeaveMidgame=1}] run tag @s add Forfeiter
execute as @a[x=0,predicate=custom:team/blue,tag=LeaveTeams] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" forfeited the match!","color":"red"}]
execute as @a[x=0,predicate=custom:team/blue,tag=LeaveTeams] run tag @s add Forfeiter
execute as @a[x=0,predicate=custom:team/blue,tag=LeaveTeams] run tag @s remove InRanked
execute as @a[x=0,predicate=custom:team/yellow,tag=LeaveTeams] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" forfeited the match!","color":"red"}]
execute as @a[x=0,predicate=custom:team/yellow,tag=LeaveTeams] run tag @s add Forfeiter
execute as @a[x=0,predicate=custom:team/yellow,tag=LeaveTeams] run tag @s remove InRanked
execute if entity @a[x=0,tag=Forfeiter] run tag @s add TimeOut
execute if entity @a[x=0,tag=Forfeiter] run scoreboard players set @s ForfeitTimeout 1200
execute as @a[x=0,tag=Forfeiter] run function custom:leave
execute if entity @a[x=0,tag=Forfeiter] run function everytick:leave_game