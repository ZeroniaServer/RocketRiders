##Handles players leaving teams
tag @a[x=0,tag=LeaveTeams,team=Yellow] add LeavingYellow
execute as @a[x=0,tag=LeavingYellow] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" left the yellow team!","color":"yellow"}]
tag @a[x=0,tag=LeaveTeams,team=Blue] add LeavingBlue
execute unless entity @e[x=0,type=armor_stand,tag=chaseEnabled] as @a[x=0,tag=LeavingBlue] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" left the blue team!","color":"aqua"}]
execute if entity @e[x=0,type=armor_stand,tag=chaseEnabled] as @a[x=0,tag=LeavingBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"dark_red"},{"text":" left the game!","color":"red"}]
tag @a[x=0,tag=LeaveTeams,team=Spectator] add LeavingSpec
execute as @a[x=0,tag=LeavingSpec] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" is no longer spectating the game!","color":"gray"}]
execute as @a[x=0,tag=LeavingSpec] run tp @s @s
tag @a[x=0,tag=LeaveTeams,team=Lobby] add WasInLobby
team join Lobby @a[x=0,tag=LeaveTeams]
tp @a[x=0,tag=LeavingYellow] -78 204 92 45 0
tp @a[x=0,tag=LeavingBlue] -78 204 64 135 0
tp @a[x=0,tag=LeavingSpec] -43 212 78 90 0
clear @a[x=0,tag=!WasInLobby,tag=LeaveTeams]
effect clear @a[x=0,tag=!WasInLobby,tag=LeaveTeams]
effect give @a[x=0,tag=!WasInLobby,tag=LeaveTeams] regeneration 1 255 true
effect give @a[x=0,tag=!WasInLobby,tag=LeaveTeams] resistance infinite 255 true
effect give @a[x=0,tag=!WasInLobby,tag=LeaveTeams] night_vision infinite 255 true
gamemode adventure @a[x=0,tag=!WasInLobby,tag=LeaveTeams,gamemode=!adventure]
tag @a[x=0,tag=!WasInLobby,tag=LeaveTeams] remove cursorItem
execute as @a[x=0,tag=!WasInLobby,tag=LeaveTeams,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[x=0,tag=LeaveTeams,tag=!WasInLobby] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
tag @a[x=0] remove LeaveTeams
tag @a[x=0] remove LeavingYellow
tag @a[x=0] remove LeavingBlue
tag @a[x=0] remove LeavingSpec
tag @a[x=0] remove WasInLobby