execute unless entity @s[tag=hideParkourTips] run return run tellraw @s {color:"red",text:"You have already enabled parkour instructions."}

tellraw @s [{color:"green",text:"Parkour instructions are now "},{bold:true,color:"dark_green",text:"On"},"."]
tag @s remove hideParkourTips
function custom:player_action/playerdata/save
