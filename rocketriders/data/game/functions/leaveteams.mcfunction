##Handles players leaving teams

tag @a[tag=LeaveTeams,team=Yellow] add LeavingYellow
execute as @a[tag=LeavingYellow] run tellraw @a ["",{"selector":"@s"},{"text":" left the yellow team!","color":"yellow"}]
tag @a[tag=LeaveTeams,team=Blue] add LeavingBlue
execute as @a[tag=LeavingBlue] run tellraw @a ["",{"selector":"@s"},{"text":" left the blue team!","color":"aqua"}]
tag @a[tag=LeaveTeams,team=Spectator] add LeavingSpec
execute as @a[tag=LeavingSpec] run tellraw @a ["",{"selector":"@s"},{"text":" is no longer spectating the game!","color":"gray"}]
execute as @a[tag=LeavingSpec] run tp @s @s
tp @a[tag=LeavingYellow] -78 204 92 45 0
tp @a[tag=LeavingBlue] -78 204 64 135 0
tp @a[tag=LeavingSpec] -43 212 78 90 0
clear @a[team=!Lobby,tag=LeaveTeams]
tag @a[tag=LeaveTeams,team=Lobby] add WasInLobby
team join Lobby @a[tag=LeaveTeams]
gamemode adventure @a[tag=LeaveTeams,gamemode=!adventure]
execute as @a[tag=LeaveTeams,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[tag=LeaveTeams,tag=!WasInLobby] at @s run playsound entity.enderman.teleport player @s ~ ~ ~
tag @a remove LeaveTeams
tag @a remove LeavingYellow
tag @a remove LeavingBlue
tag @a remove LeavingSpec
tag @a remove WasInLobby