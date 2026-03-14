execute unless entity @s[tag=do_hotbar_auto_fill] run return run tellraw @s {color:"red",text:"You have already disabled automatic hotbar filling."}

tellraw @s [{color:"green",text:"Automatic hotbar filling is now "},{bold:true,color:"red",text:"Off"},"."]
tag @s remove do_hotbar_auto_fill
function custom:player_action/playerdata/save
