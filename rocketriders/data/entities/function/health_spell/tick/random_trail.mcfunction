execute store result storage rocketriders:main health_spell.yaw int 1 run random value -180..179
execute store result storage rocketriders:main health_spell.pitch int 1 run random value 30..90
function entities:health_spell/tick/random_trail_get_target with storage rocketriders:main health_spell
