dialog clear @s

execute unless predicate custom:on_blue_or_yellow_or_spectator_team run return run tellraw @s {color:"red",text:"You are already not in a match"}

# Leave
tag @s add LeaveTeams
