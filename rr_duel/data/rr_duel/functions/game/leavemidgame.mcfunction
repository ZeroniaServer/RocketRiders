##Allows players to forfeit the game by dropping their Shooting Sabers and confirming in chat
execute as @a unless entity @s[team=!Blue,team=!Yellow] run scoreboard players enable @s LeaveMidgame
tellraw @a[team=Blue,scores={dropBow=1..}] [{"text":"Are you sure you want to forfeit the match?","color":"red"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
tellraw @a[team=Yellow,scores={dropBow=1..}] [{"text":"Are you sure you want to forfeit the match? ","color":"red"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
execute if entity @s[tag=!noYZELO] run tellraw @a[scores={dropBow=1..}] {"text":"Note: you will lose XP!","color":"dark_red","italic":"true"}
scoreboard players set @a[scores={dropBow=1..}] dropBow 0
execute as @a[team=Blue,scores={LeaveMidgame=1}] run tellraw @a [{"selector":"@s"},{"text":" forfeited the match!","color":"aqua"}]
execute if entity @a[team=Blue,scores={LeaveMidgame=1}] run tag @s add TimeOut
execute if entity @a[team=Blue,scores={LeaveMidgame=1}] run scoreboard players set @s ForfeitTimeout 1200
execute as @a[team=Blue,scores={LeaveMidgame=1}] run tag @s add Forfeiter
execute as @a[team=Blue,scores={LeaveMidgame=1}] run function custom:leave
execute as @a[team=Yellow,scores={LeaveMidgame=1}] run tellraw @a [{"selector":"@s"},{"text":" forfeited the match!","color":"yellow"}]
execute if entity @a[team=Yellow,scores={LeaveMidgame=1}] run tag @s add TimeOut
execute if entity @a[team=Yellow,scores={LeaveMidgame=1}] run scoreboard players set @s ForfeitTimeout 1200
execute as @a[team=Yellow,scores={LeaveMidgame=1}] run tag @s add Forfeiter
execute as @a[team=Yellow,scores={LeaveMidgame=1}] run function custom:leave

#forcewin
execute as @s[scores={ForfeitTimeout=1200..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run scoreboard players set Blue: RoundsWon 2
execute as @s[scores={ForfeitTimeout=1200..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run function rr_duel:game/winblue
execute as @s[scores={ForfeitTimeout=1200..}] unless entity @a[team=Blue] if entity @a[team=Yellow] run scoreboard players set Yellow: RoundsWon 2
execute as @s[scores={ForfeitTimeout=1200..}] unless entity @a[team=Blue] if entity @a[team=Yellow] run function rr_duel:game/winyellow