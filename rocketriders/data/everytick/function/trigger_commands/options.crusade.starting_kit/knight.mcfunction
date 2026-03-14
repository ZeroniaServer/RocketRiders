execute if score @s start_as_crusade_kit matches 1 run return run tellraw @s {color:"red",text:"Your starting kit in Crusade Mode is already the Knight."}

tellraw @s [{color:"green",text:"You will now start as a "},{bold:true,color:"dark_green",text:"Knight"}," in Crusade Mode."]
scoreboard players set @s start_as_crusade_kit 1
function custom:player_action/playerdata/save
