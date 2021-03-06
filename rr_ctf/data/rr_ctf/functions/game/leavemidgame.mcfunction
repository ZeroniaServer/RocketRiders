##Allows players to leave the game by dropping their Pickaxes and confirming in chat
execute as @a unless entity @s[team=!Blue,team=!Yellow] run scoreboard players enable @s LeaveMidgame
execute as @a[team=!Blue,team=!Yellow] run trigger LeaveMidgame set -1
tellraw @a[team=Blue,scores={dropPickaxe=1..}] [{"text":"Are you sure you want to leave the match? ","color":"blue"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
tellraw @a[team=Yellow,scores={dropPickaxe=1..}] [{"text":"Are you sure you want to leave the match? ","color":"gold"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
scoreboard players set @a[scores={dropPickaxe=1..}] dropPickaxe 0
execute as @a[team=Blue,scores={LeaveMidgame=1}] run tellraw @a [{"selector":"@s"},{"text":" left the match!","color":"aqua"}]
scoreboard players set @a[team=Blue,scores={LeaveMidgame=1}] LeaveGame 1
execute as @a[team=Yellow,scores={LeaveMidgame=1}] run tellraw @a [{"selector":"@s"},{"text":" left the match!","color":"yellow"}]
scoreboard players set @a[team=Yellow,scores={LeaveMidgame=1}] LeaveGame 1