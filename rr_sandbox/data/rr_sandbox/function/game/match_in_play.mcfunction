#leave midgame
scoreboard players enable @a[x=0] LeaveMidgame
tellraw @a[x=0,predicate=custom:team/blue,scores={dropBook=1..}] [{"text":"Are you sure you want to leave the match? ","color":"dark_aqua"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger LeaveMidgame set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to leave the match"}}}]
tellraw @a[x=0,predicate=custom:team/yellow,scores={dropBook=1..}] [{"text":"Are you sure you want to leave the match? ","color":"yellow"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger LeaveMidgame set 1"},"hover_event":{"action":"show_text","value":{"color":"green","text":"Click to leave the match"}}}]
scoreboard players set @a[x=0,scores={dropBook=1..}] dropBook 0
execute as @a[x=0,predicate=custom:team/blue,scores={LeaveMidgame=1}] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" left the match!","color":"dark_aqua"}]
scoreboard players set @a[x=0,predicate=custom:team/blue,scores={LeaveMidgame=1}] LeaveGame 1
execute as @a[x=0,predicate=custom:team/yellow,scores={LeaveMidgame=1}] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" left the match!","color":"yellow"}]
scoreboard players set @a[x=0,predicate=custom:team/yellow,scores={LeaveMidgame=1}] LeaveGame 1
tellraw @s[predicate=!custom:team/any_playing_team,scores={LeaveMidgame=1}] [{"text":"You are not in a match anymore.","color":"green"}]

#spawnables
function rr_powerups:everytick/spawnables
function everytick:cluster
execute as @a[x=0,predicate=custom:team/any_playing_team,scores={useWand=1..}] run function rr_crusade:game/usewand

#nomicon
scoreboard players enable @a[x=0,predicate=custom:can_use_nomicon] nomicon
scoreboard players reset @a[predicate=!custom:indimension] nomicon
scoreboard players reset @a[x=0,predicate=!custom:can_use_nomicon] nomicon
execute as @a[x=0,predicate=custom:can_use_nomicon,scores={nomicon=1..}] run function rr_sandbox:game/nomicon

#win
execute if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon] if function game:check/blue_portal_broken if function game:check/yellow_portal_broken run function rr_sandbox:game/winbothcheck
execute if entity @s[tag=!BothWon,tag=!BlueWon] if function game:check/yellow_portal_broken run function rr_sandbox:game/winblue
execute if entity @s[tag=!BothWon,tag=!YellowWon] if function game:check/blue_portal_broken run function rr_sandbox:game/winyellow
