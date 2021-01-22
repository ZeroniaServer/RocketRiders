##Allows players to forfeit the game by dropping their Shooting Sabers and confirming in chat
execute as @s[tag=!SMActive] as @a unless entity @s[team=!Blue,team=!Yellow] run scoreboard players enable @s LeaveMidgame
execute as @s[tag=!SMActive] run tellraw @a[team=Blue,scores={dropBow=1..}] [{"text":"Are you sure you want to forfeit the match?","color":"red"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
execute as @s[tag=!SMActive] run tellraw @a[team=Yellow,scores={dropBow=1..}] [{"text":"Are you sure you want to forfeit the match? ","color":"red"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
execute as @s[tag=!SMActive] if entity @s[tag=!noYZELO] run tellraw @a[scores={dropBow=1..}] {"text":"Note: you will lose XP!","color":"dark_red","italic":"true"}
execute as @s[tag=!SMActive] run scoreboard players set @a[scores={dropBow=1..}] dropBow 0
execute as @s[tag=!SMActive] as @a[team=Blue,scores={LeaveMidgame=1}] run tellraw @a [{"selector":"@s"},{"text":" forfeited the match!","color":"aqua"}]
execute as @s[tag=!SMActive] as @a[team=Blue,scores={LeaveMidgame=1}] run tag @s add Forfeiter
execute as @s[tag=!SMActive] as @a[team=Yellow,scores={LeaveMidgame=1}] run tellraw @a [{"selector":"@s"},{"text":" forfeited the match!","color":"yellow"}]
execute as @s[tag=!SMActive] as @a[team=Yellow,scores={LeaveMidgame=1}] run tag @s add Forfeiter
execute as @a[team=Blue,tag=LeaveTeams] run tellraw @a [{"selector":"@s"},{"text":" forfeited the match!","color":"aqua"}]
execute as @a[team=Blue,tag=LeaveTeams] run tag @s add Forfeiter
execute as @a[team=Yellow,tag=LeaveTeams] run tellraw @a [{"selector":"@s"},{"text":" forfeited the match!","color":"yellow"}]
execute as @a[team=Yellow,tag=LeaveTeams] run tag @s add Forfeiter

execute if entity @a[tag=Forfeiter] run tag @s add TimeOut
execute if entity @a[tag=Forfeiter] run scoreboard players set @s ForfeitTimeout 1200
execute as @a[tag=Forfeiter] run function custom:leave
execute if entity @a[tag=Forfeiter] run function everytick:leave_game