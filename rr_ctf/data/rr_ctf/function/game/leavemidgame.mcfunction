##Allows players to leave the game by dropping their Pickaxes and confirming in chat
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run scoreboard players enable @s LeaveMidgame
execute as @a[x=0,team=!Blue,team=!Yellow] run trigger LeaveMidgame set -1
tellraw @a[x=0,team=Blue,scores={dropPickaxe=1..}] [{"text":"Are you sure you want to leave the match? ","color":"dark_aqua"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger LeaveMidgame set 1"}}]
tellraw @a[x=0,team=Yellow,scores={dropPickaxe=1..}] [{"text":"Are you sure you want to leave the match? ","color":"yellow"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger LeaveMidgame set 1"}}]
scoreboard players set @a[x=0,scores={dropPickaxe=1..}] dropPickaxe 0
execute as @a[x=0,team=Blue,scores={LeaveMidgame=1}] run tellraw @a[x=0] [{"selector":"@s"},{"text":" left the match!","color":"dark_aqua"}]
scoreboard players set @a[x=0,team=Blue,scores={LeaveMidgame=1}] LeaveGame 1
execute as @a[x=0,team=Yellow,scores={LeaveMidgame=1}] run tellraw @a[x=0] [{"selector":"@s"},{"text":" left the match!","color":"yellow"}]
scoreboard players set @a[x=0,team=Yellow,scores={LeaveMidgame=1}] LeaveGame 1