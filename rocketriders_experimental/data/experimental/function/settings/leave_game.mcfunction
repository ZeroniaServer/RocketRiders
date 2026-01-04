dialog clear @s

execute unless predicate custom:team/any_arena_team run return run tellraw @s {color:"red",text:"You are already not in a match"}

# Leave
tag @s add LeaveTeams
