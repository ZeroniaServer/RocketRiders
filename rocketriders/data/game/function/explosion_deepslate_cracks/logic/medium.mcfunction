kill @s

function custom:execute_through_sphere_biased_radius_5 {p:0.1,run:"execute if block ~ ~ ~ #custom:explosion_crackable_deepslate_blocks unless block ~ ~ ~ cobbled_deepslate run setblock ~ ~ ~ cracked_deepslate_bricks"}
function custom:execute_through_sphere_biased_radius_5 {p:0.03,run:"execute if block ~ ~ ~ #custom:explosion_crackable_deepslate_blocks run setblock ~ ~ ~ cobbled_deepslate"}
