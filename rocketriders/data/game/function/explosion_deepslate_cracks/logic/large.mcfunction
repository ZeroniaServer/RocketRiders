kill @s

function custom:execute_through_sphere_biased_radius_8 {p:0.025,run:"execute if block ~ ~ ~ #custom:explosion_crackable_deepslate_blocks unless block ~ ~ ~ cobbled_deepslate run setblock ~ ~ ~ cracked_deepslate_bricks"}
function custom:execute_through_sphere_biased_radius_8 {p:0.01,run:"execute if block ~ ~ ~ #custom:explosion_crackable_deepslate_blocks run setblock ~ ~ ~ cobbled_deepslate"}
