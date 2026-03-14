execute if score @s start_as_crusade_kit matches 2 run return run tellraw @s {color:"red",text:"Your starting kit in Crusade Mode is already the Archer."}

tellraw @s [{color:"green",text:"You will now start as an "},{bold:true,color:"red",text:"Archer"}," in Crusade Mode."]
scoreboard players set @s start_as_crusade_kit 2
function custom:player_action/playerdata/save
