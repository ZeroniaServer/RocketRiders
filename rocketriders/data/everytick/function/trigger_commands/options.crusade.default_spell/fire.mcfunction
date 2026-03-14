execute unless score @s default_spell matches 1.. run return run tellraw @s {color:"red",text:"Your default spell is already Fire."}

tellraw @s [{color:"green",text:"You will now receive "},{bold:true,color:"gold",text:"Fire"}," spells in Crusade Mode."]
scoreboard players reset @s default_spell
function custom:player_action/playerdata/save
