execute at @s run tp @s ~ ~-0.25 ~
execute if score @s entity.speed matches 100.. at @s run function custom:__impl__/projectile_motion_step/step
return 1
