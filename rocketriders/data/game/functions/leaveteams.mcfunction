##Handles players leaving teams
tag @a[predicate=custom:indimension,tag=LeaveTeams,team=Yellow] add LeavingYellow
execute as @a[predicate=custom:indimension,tag=LeavingYellow] run tellraw @a[predicate=custom:indimension] ["",{"selector":"@s"},{"text":" left the yellow team!","color":"yellow"}]
tag @a[predicate=custom:indimension,tag=LeaveTeams,team=Blue] add LeavingBlue
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=chaseEnabled] as @a[predicate=custom:indimension,tag=LeavingBlue] run tellraw @a[predicate=custom:indimension] ["",{"selector":"@s"},{"text":" left the blue team!","color":"aqua"}]
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=chaseEnabled] as @a[predicate=custom:indimension,tag=LeavingBlue] run tellraw @a[predicate=custom:indimension] ["",{"selector":"@s","color":"dark_red"},{"text":" left the game!","color":"red"}]
tag @a[predicate=custom:indimension,tag=LeaveTeams,team=Spectator] add LeavingSpec
execute as @a[predicate=custom:indimension,tag=LeavingSpec] run tellraw @a[predicate=custom:indimension] ["",{"selector":"@s"},{"text":" is no longer spectating the game!","color":"gray"}]
execute as @a[predicate=custom:indimension,tag=LeavingSpec] run tp @s @s
tag @a[predicate=custom:indimension,tag=LeaveTeams,team=Lobby] add WasInLobby
team join Lobby @a[predicate=custom:indimension,tag=LeaveTeams]
tp @a[predicate=custom:indimension,tag=LeavingYellow] -78 204 92 45 0
tp @a[predicate=custom:indimension,tag=LeavingBlue] -78 204 64 135 0
tp @a[predicate=custom:indimension,tag=LeavingSpec] -43 212 78 90 0
clear @a[predicate=custom:indimension,tag=!WasInLobby,tag=LeaveTeams]
effect clear @a[predicate=custom:indimension,tag=!WasInLobby,tag=LeaveTeams]
effect give @a[predicate=custom:indimension,tag=!WasInLobby,tag=LeaveTeams] regeneration 1 255 true
effect give @a[predicate=custom:indimension,tag=!WasInLobby,tag=LeaveTeams] resistance infinite 255 true
effect give @a[predicate=custom:indimension,tag=!WasInLobby,tag=LeaveTeams] night_vision infinite 255 true
gamemode adventure @a[predicate=custom:indimension,tag=!WasInLobby,tag=LeaveTeams,gamemode=!adventure]
tag @a[predicate=custom:indimension,tag=!WasInLobby,tag=LeaveTeams] remove cursorItem
execute as @a[predicate=custom:indimension,tag=!WasInLobby,tag=LeaveTeams,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[predicate=custom:indimension,tag=LeaveTeams,tag=!WasInLobby] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
tag @a[predicate=custom:indimension] remove LeaveTeams
tag @a[predicate=custom:indimension] remove LeavingYellow
tag @a[predicate=custom:indimension] remove LeavingBlue
tag @a[predicate=custom:indimension] remove LeavingSpec
tag @a[predicate=custom:indimension] remove WasInLobby