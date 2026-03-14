execute if entity @s[tag=do_hotbar_auto_fill] run return run tellraw @s {color:"red",text:"You have already enabled automatic hotbar filling."}

tellraw @s [{color:"green",text:"Automatic hotbar filling is now "},{bold:true,color:"dark_green",text:"On"},"."]
tag @s add do_hotbar_auto_fill
function custom:player_action/playerdata/save
