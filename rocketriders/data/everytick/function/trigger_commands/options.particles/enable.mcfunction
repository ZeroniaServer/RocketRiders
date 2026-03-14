execute unless entity @s[tag=hideParticles] run return run tellraw @s {color:"red",text:"You have already enabled particles in Rocket Riders gameplay elements."}

tellraw @s [{color:"green",text:"Particles in Rocket Riders gameplay elements are now "},{bold:true,color:"dark_green",text:"On"},"."]
tag @s remove hideParticles
function custom:player_action/playerdata/save
