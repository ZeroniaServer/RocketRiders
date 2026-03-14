execute if entity @s[tag=hideParticles] run return run tellraw @s {color:"red",text:"You have already disabled particles in Rocket Riders gameplay elements."}

tellraw @s [{color:"green",text:"Particles in Rocket Riders gameplay elements are now "},{bold:true,color:"red",text:"Off"},"."]
tag @s add hideParticles
function custom:player_action/playerdata/save
