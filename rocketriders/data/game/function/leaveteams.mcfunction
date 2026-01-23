##Handles players leaving teams
tag @a[x=0,tag=LeaveTeams,predicate=custom:team/yellow] add LeavingYellow
execute as @a[x=0,tag=LeavingYellow] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" left the yellow team!","color":"yellow"}]
tag @a[x=0,tag=LeaveTeams,predicate=custom:team/blue] add LeavingBlue
execute unless predicate game:gamemode_components/one_team unless predicate game:gamemode_components/red_for_blue as @a[x=0,tag=LeavingBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"blue"},{"text":" left the blue team!","color":"dark_aqua"}]
execute unless predicate game:gamemode_components/one_team if predicate game:gamemode_components/red_for_blue as @a[x=0,tag=LeavingBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"dark_red"},{"text":" left the blue team!","color":"red"}]
execute if predicate game:gamemode_components/one_team unless predicate game:gamemode_components/red_for_blue as @a[x=0,tag=LeavingBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"blue"},{"text":" left the match!","color":"dark_aqua"}]
execute if predicate game:gamemode_components/one_team if predicate game:gamemode_components/red_for_blue as @a[x=0,tag=LeavingBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"dark_red"},{"text":" left the match!","color":"red"}]
tag @a[x=0,tag=LeaveTeams,predicate=custom:team/spectator] add LeavingSpec
execute as @a[x=0,tag=LeavingSpec] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" is no longer spectating the match!","color":"gray"}]
execute as @a[x=0,tag=LeavingSpec] run tp @s @s
tag @a[x=0,tag=LeaveTeams,predicate=custom:team/lobby] add WasInLobby
tag @a[x=0,tag=LeaveTeams] remove doing_facade_parkour
execute as @a[x=0,tag=LeaveTeams] run function custom:team/join_lobby
execute if entity @a[limit=1,x=0,tag=LeaveTeams] run function everytick:team_count
title @a[x=0,tag=LeaveTeams] actionbar [""]
title @a[x=0,tag=LeaveTeams] title [""]
title @a[x=0,tag=LeaveTeams] subtitle [""]
tp @a[x=0,tag=LeavingYellow] -78 204 92 45 0
tp @a[x=0,tag=LeavingBlue] -78 204 64 135 0
tp @a[x=0,tag=LeavingSpec] -43 212 78 90 0
execute as @a[x=0,tag=!WasInLobby,tag=LeaveTeams] run function custom:reset_inventory
effect clear @a[x=0,tag=!WasInLobby,tag=LeaveTeams]
effect give @a[x=0,tag=!WasInLobby,tag=LeaveTeams] instant_health 1 100 true
effect give @a[x=0,tag=!WasInLobby,tag=LeaveTeams] resistance infinite 100 true
effect give @a[x=0,tag=!WasInLobby,tag=LeaveTeams] night_vision infinite 100 true
gamemode adventure @a[x=0,tag=!WasInLobby,tag=LeaveTeams,gamemode=!adventure]
tag @a[x=0,tag=!WasInLobby,tag=LeaveTeams] remove cursorItem
execute as @a[x=0,tag=!WasInLobby,tag=LeaveTeams,predicate=custom:is_on_fire] at @s run function game:putoutfire
execute as @a[x=0,tag=LeaveTeams,tag=!WasInLobby] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
tag @a[x=0] remove LeaveTeams
tag @a[x=0] remove LeavingYellow
tag @a[x=0] remove LeavingBlue
tag @a[x=0] remove LeavingSpec
tag @a[x=0] remove WasInLobby