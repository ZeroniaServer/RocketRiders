execute if entity @s[tag=hideTips] run return run tellraw @s {color:"red",text:"You have already disabled in-game tips."}

tellraw @s [{color:"green",text:"In-game tips are now "},{bold:true,color:"red",text:"Off"},"."]
tag @s add hideTips
function custom:player_action/playerdata/save
