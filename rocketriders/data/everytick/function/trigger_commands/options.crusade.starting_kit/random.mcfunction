execute unless score @s start_as_crusade_kit matches 1.. run return run tellraw @s {color:"red",text:"Your starting kit in Crusade Mode is already randomized."}

tellraw @s {color:"green",text:"You will now start as a random kit in Crusade Mode."}
scoreboard players reset @s start_as_crusade_kit
function custom:player_action/playerdata/save
