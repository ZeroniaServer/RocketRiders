dialog clear @s

execute unless predicate custom:on_blue_or_yellow_or_spectator_team run return run tellraw @s {color:"red",text:"You are already not in a match"}

# Leave
execute if predicate game:game_started if predicate custom:on_blue_or_yellow_team run return run trigger LeaveMidgame
execute if predicate game:game_started if entity @s[team=Spectator] run return run trigger leaveSpec
execute unless predicate game:game_started if predicate custom:on_blue_or_yellow_team if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=EditedSettings] run return run tag @s add LeaveTeams
