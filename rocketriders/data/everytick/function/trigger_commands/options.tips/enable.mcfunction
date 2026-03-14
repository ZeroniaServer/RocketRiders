execute unless entity @s[tag=hideTips] run return run tellraw @s {color:"red",text:"You have already enabled in-game tips."}

tellraw @s [{color:"green",text:"In-game tips are now "},{bold:true,color:"dark_green",text:"On"},"."]
tag @s remove hideTips
function custom:player_action/playerdata/save
