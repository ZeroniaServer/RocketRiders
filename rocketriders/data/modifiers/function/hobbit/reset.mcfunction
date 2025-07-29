attribute @s minecraft:scale modifier remove rocketriders:hobbit
attribute @s minecraft:camera_distance modifier remove rocketriders:hobbit
execute if items entity @s armor.head player_head[custom_data~{hobbit_head:true}] run item replace entity @s armor.head with air
tag @s remove hobbit
