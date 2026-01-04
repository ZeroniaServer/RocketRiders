function custom:team/join_yellow
execute in minecraft:overworld run tp @s 12.5 64.0 66.5 180 0

clear @s *
function custom:reset_inventory
function custom:update_armor

tellraw @s {color:"red",italic:true,text:"You were added back to Yellow to finish the 1v1 Duel match."}
