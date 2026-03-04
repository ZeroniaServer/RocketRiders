function custom:team/join_blue
execute in minecraft:overworld run tp @s 12.5 64.9 -65.5 0 0

function custom:reset_inventory
function custom:update_armor

tellraw @s [{color:"red",italic:true,text:"You were added back to "},{score:{name:"#blue",objective:"text.team_name"}}," to finish the 1v1 Duel match."]
