execute unless predicate game:game_started run return run tellraw @s {color:"red",text:"The game has not started yet."}
execute if predicate custom:on_blue_or_yellow_team run return run tellraw @s {color:"red",text:"You are already in a game."}
execute if score @e[limit=1,x=0,type=armor_stand,tag=Selection] bluesCount > @e[limit=1,x=0,type=armor_stand,tag=Selection] yellowsCount run return run tp @s -79.5 205.0 94.5
tp @s -79.5 205.0 62.5
