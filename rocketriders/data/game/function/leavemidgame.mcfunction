##Allows players to leave the game by dropping their Shooting Sabers and confirming in chat
execute as @a[x=0,predicate=custom:team/any_playing_team] run scoreboard players enable @s LeaveMidgame
tellraw @a[x=0,predicate=custom:team/blue,scores={dropBow=1..}] [{"text":"Are you sure you want to leave the match? ","color":"dark_aqua"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger LeaveMidgame set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to leave the match"}}}]
tellraw @a[x=0,predicate=custom:team/yellow,scores={dropBow=1..}] [{"text":"Are you sure you want to leave the match? ","color":"yellow"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger LeaveMidgame set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to leave the match"}}}]
scoreboard players set @a[x=0,scores={dropBow=1..}] dropBow 0
execute as @a[x=0,predicate=custom:team/blue,scores={LeaveMidgame=1}] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" left the match!","color":"dark_aqua"}]
scoreboard players set @a[x=0,predicate=custom:team/blue,scores={LeaveMidgame=1}] LeaveGame 1
execute as @a[x=0,predicate=custom:team/yellow,scores={LeaveMidgame=1}] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" left the match!","color":"yellow"}]
scoreboard players set @a[x=0,predicate=custom:team/yellow,scores={LeaveMidgame=1}] LeaveGame 1