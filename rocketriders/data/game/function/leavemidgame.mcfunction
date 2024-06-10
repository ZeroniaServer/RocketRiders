##Allows players to leave the game by dropping their Shooting Sabers and confirming in chat
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run scoreboard players enable @s LeaveMidgame
tellraw @a[x=0,team=Blue,scores={dropBow=1..}] [{"text":"Are you sure you want to leave the match? ","color":"blue"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
tellraw @a[x=0,team=Yellow,scores={dropBow=1..}] [{"text":"Are you sure you want to leave the match? ","color":"gold"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
scoreboard players set @a[x=0,scores={dropBow=1..}] dropBow 0
execute as @a[x=0,team=Blue,scores={LeaveMidgame=1}] run tellraw @a[x=0] [{"selector":"@s"},{"text":" left the match!","color":"aqua"}]
scoreboard players set @a[x=0,team=Blue,scores={LeaveMidgame=1}] LeaveGame 1
execute as @a[x=0,team=Yellow,scores={LeaveMidgame=1}] run tellraw @a[x=0] [{"selector":"@s"},{"text":" left the match!","color":"yellow"}]
scoreboard players set @a[x=0,team=Yellow,scores={LeaveMidgame=1}] LeaveGame 1