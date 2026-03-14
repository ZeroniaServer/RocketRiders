execute if score @s start_as_crusade_kit matches 3 run return run tellraw @s {color:"red",text:"Your starting kit in Crusade Mode is already the Mage."}

tellraw @s [{color:"green",text:"You will now start as an "},{bold:true,color:"dark_purple",text:"Mage"}," in Crusade Mode."]
scoreboard players set @s start_as_crusade_kit 3
function custom:player_action/playerdata/save
