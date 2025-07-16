execute if score @s entity.age matches 0..5 run function entities:shield/tick/deployment_animation

execute if score @s entity.age matches 5 run kill @s
