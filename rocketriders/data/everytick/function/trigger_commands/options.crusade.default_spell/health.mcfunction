execute if score @s default_spell matches 1 run return run tellraw @s {color:"red",text:"Your default spell is already Health."}

tellraw @s [{color:"green",text:"You will now receive "},{bold:true,color:"dark_green",text:"Health"}," spells in Crusade Mode."]
scoreboard players set @s default_spell 1
function custom:player_action/playerdata/save
