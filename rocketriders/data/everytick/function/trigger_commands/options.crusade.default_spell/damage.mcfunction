execute if score @s default_spell matches 2 run return run tellraw @s {color:"red",text:"Your default spell is already Damage."}

tellraw @s [{color:"green",text:"You will now receive "},{bold:true,color:"dark_gray",text:"Damage"}," spells in Crusade Mode."]
scoreboard players set @s default_spell 2
function custom:player_action/playerdata/save
