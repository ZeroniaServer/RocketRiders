execute if score @s entity.age matches 0..2 run function entities:type/shield/tick/deployment_animation

execute if score @s entity.age matches 2 run kill @s
