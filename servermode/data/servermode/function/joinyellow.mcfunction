##Utility function for joining Yellow team
scoreboard players reset @s joinYellow
tag @s[predicate=!custom:team/yellow] add JoinYellow
execute if entity @s[predicate=custom:team/yellow] run return run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Cannot Join Team!"},"\n",{color:"gray",text:"You're already on this team!"}]
execute unless predicate game:game_rules/disable_team_balancing/on run function servermode:joinwarn
execute if entity @s[tag=JoinYellow,predicate=custom:team/blue] run function custom:player/team/switch_team