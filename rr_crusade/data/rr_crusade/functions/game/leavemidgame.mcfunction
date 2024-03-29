##Allows players to leave the game by dropping their Shooting Sabers and confirming in chat
execute as @a unless entity @s[team=!Blue,team=!Yellow] run scoreboard players enable @s LeaveMidgame

#Bow
tellraw @a[team=Blue,scores={dropBow=1..}] [{"text":"Are you sure you want to leave the match? ","color":"blue"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
tellraw @a[team=Yellow,scores={dropBow=1..}] [{"text":"Are you sure you want to leave the match? ","color":"gold"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
scoreboard players set @a[scores={dropBow=1..}] dropBow 0

#Sword
tellraw @a[team=Blue,scores={dropSword=1..}] [{"text":"Are you sure you want to leave the match? ","color":"blue"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
tellraw @a[team=Yellow,scores={dropSword=1..}] [{"text":"Are you sure you want to leave the match? ","color":"gold"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
scoreboard players set @a[scores={dropSword=1..}] dropSword 0

#Rod
tellraw @a[team=Blue,scores={dropRod=1..}] [{"text":"Are you sure you want to leave the match? ","color":"blue"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
tellraw @a[team=Yellow,scores={dropRod=1..}] [{"text":"Are you sure you want to leave the match? ","color":"gold"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
scoreboard players set @a[scores={dropRod=1..}] dropRod 0

execute as @a[team=Blue,scores={LeaveMidgame=1}] run tellraw @a [{"selector":"@s"},{"text":" left the match!","color":"aqua"}]
scoreboard players set @a[team=Blue,scores={LeaveMidgame=1}] LeaveGame 1
execute as @a[team=Yellow,scores={LeaveMidgame=1}] run tellraw @a [{"selector":"@s"},{"text":" left the match!","color":"yellow"}]
scoreboard players set @a[team=Yellow,scores={LeaveMidgame=1}] LeaveGame 1