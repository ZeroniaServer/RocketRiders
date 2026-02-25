function entities:type/rot/init/face

execute if block ~ ~ ~ #custom:piston[facing=west] run tag @s add rot.face.is_piston_face
execute if block ~ ~ ~ #custom:piston[facing=west,extended=true] run data modify entity @s transformation.translation[2] set value 0.25
