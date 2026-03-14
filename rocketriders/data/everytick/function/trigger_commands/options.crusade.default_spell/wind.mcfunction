execute if score @s default_spell matches 3 run return run tellraw @s {color:"red",text:"Your default spell is already Wind."}

tellraw @s [{color:"green",text:"You will now receive "},{bold:true,color:"aqua",text:"Wind"}," spells in Crusade Mode."]
scoreboard players set @s default_spell 3
function custom:player_action/playerdata/save
