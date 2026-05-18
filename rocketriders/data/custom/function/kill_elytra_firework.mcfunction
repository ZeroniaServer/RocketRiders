execute at @s on origin if entity @s[type=player,scores={LeaveGame=1..},predicate=custom:is_gliding,distance=..1] run return 1
execute at @s on origin if entity @s[type=player,tag=LeaveTeams,predicate=custom:is_gliding,distance=..1] run return 1
return fail