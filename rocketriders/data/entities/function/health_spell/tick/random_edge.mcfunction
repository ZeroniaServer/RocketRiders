# arguments: random_radius_scaled_max

$execute store result score $random_radius_scaled var store result storage rocketriders:main health_spell.random_radius float 0.01 run random value 0..$(random_radius_scaled_max)
$execute if score $random_radius_scaled var matches 0..200 store result storage rocketriders:main health_spell.random_radius float 0.01 run random value 0..$(random_radius_scaled_max)

execute store result storage rocketriders:main health_spell.yaw int 1 run random value -180..179
execute store result storage rocketriders:main health_spell.pitch int 1 run random value -90..89
function entities:health_spell/tick/random_edge_spawn with storage rocketriders:main health_spell

function entities:health_spell/tick/random_edge_spawn_perimeter with storage rocketriders:main health_spell

execute store result storage rocketriders:main health_spell.yaw int 1 run random value -180..179
execute store result storage rocketriders:main health_spell.pitch int 1 run random value -50..50
execute if predicate {condition:"minecraft:random_chance",chance:0.1} run function entities:health_spell/tick/random_edge_inside with storage rocketriders:main health_spell
