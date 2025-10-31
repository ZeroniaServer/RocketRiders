##Utility function for joining Yellow team
scoreboard players reset @s joinYellow
tag @s[predicate=!custom:team/yellow] add JoinYellow
execute if entity @s[predicate=custom:team/yellow] run return run tellraw @s [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Cannot Join Team!","color":"red","bold":true},"\n",{"text":"You're already on this team!","color":"gray"}]
execute unless predicate game:game_rules/disable_team_balancing/on run function servermode:joinwarn
