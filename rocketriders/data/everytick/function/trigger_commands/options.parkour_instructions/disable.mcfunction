execute if entity @s[tag=hideParkourTips] run return run tellraw @s {color:"red",text:"You have already disabled parkour instructions."}

tellraw @s [{color:"green",text:"Parkour instructions are now "},{bold:true,color:"red",text:"Off"},"."]
tag @s add hideParkourTips
function custom:player_action/playerdata/save
