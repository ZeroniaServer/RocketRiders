execute if entity @s[distance=0..1] run tp @s ^ ^ ^0.5
execute if entity @s[distance=1..2] run tp @s ^ ^ ^1.5

execute positioned as @s run function entities:nova_rocket/actions/firework_collision
# TODO: assign joint kill credit
execute positioned as @s run function custom:explosion {power:6,modifiers:{name:"a Nova Rocket collision",nbt:{data:{explosion:{origin:[I;0,0,0,0]}}}}}

scoreboard players set $collision var 1
tag @s add nova_rocket.killed
execute on passengers run kill @s[predicate=entities:type/nova_rocket]
kill @s
