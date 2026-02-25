function entities:type/rot/init/face

execute if block ~ ~ ~ #custom:piston[facing=east] run tag @s add rot.face.is_piston_face
execute if block ~ ~ ~ #custom:piston[facing=east,extended=true] run data modify entity @s transformation.translation[2] set value 0.25
