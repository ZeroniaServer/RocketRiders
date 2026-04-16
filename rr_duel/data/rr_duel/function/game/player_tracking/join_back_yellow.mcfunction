function custom:player/team/join_yellow
execute in minecraft:overworld run tp @s 12.5 64.0 66.5 180 0

function custom:player/reset_inventory
function custom:player/update_armor

tellraw @s [{color:"red",italic:true,text:"You were added back to "},{score:{name:"#yellow",objective:"text.team_name"}}," to finish the 1v1 Duel match."]
