##Utility function for joining Blue team
scoreboard players reset @s joinBlue
tag @s[predicate=!custom:team/blue] add JoinBlue
execute if entity @s[predicate=custom:team/blue] run return run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Cannot Join Team!"},"\n",{color:"gray",text:"You're already on this team!"}]
execute unless predicate game:game_rules/disable_team_balancing/on run function servermode:joinwarn
execute if entity @s[tag=JoinBlue,predicate=custom:team/yellow] run function custom:team/switch_team
tag @s[predicate=custom:team/yellow] remove JoinBlue