##Allows players to leave the game by dropping their Shooting Sabers and confirming in chat
execute as @a[team=Blue] run scoreboard players enable @s LeaveMidgame
tellraw @a[team=Blue,scores={dropBow=1..}] [{"text":"Are you sure you want to leave the match? ","color":"red"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
scoreboard players set @a[scores={dropBow=1..}] dropBow 0
execute as @a[team=Blue,scores={LeaveMidgame=1}] run tellraw @a [{"selector":"@s","color":"dark_red"},{"text":" left the match!","color":"red"}]
scoreboard players set @a[team=Blue,scores={LeaveMidgame=1}] LeaveGame 1