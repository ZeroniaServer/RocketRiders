## Set up data
data modify entity @s data.rot set value {brain:{},awake:{}}
scoreboard players set @s entity.age 0

# Face a random direction, so that the random spreading is not biased when the rot cap is reached.
execute store result score $rotation var run random value 1..6
execute if score $rotation var matches 1 run rotate @s 0 0
execute if score $rotation var matches 2 run rotate @s 90 0
execute if score $rotation var matches 3 run rotate @s 180 0
execute if score $rotation var matches 4 run rotate @s -90 0
execute if score $rotation var matches 5 run rotate @s 0 -90
execute if score $rotation var matches 6 run rotate @s 0 90

## Spawn behaviour
execute align xyz run tp @s ~0.5 ~0.5 ~0.5

## Summon faces
tag @s add rot.awake_brain
execute positioned as @s rotated 0 0 summon text_display run function entities:type/rot/init/face
execute positioned as @s rotated 90 0 summon text_display run function entities:type/rot/init/face
execute positioned as @s rotated 180 0 summon text_display run function entities:type/rot/init/face
execute positioned as @s rotated -90 0 summon text_display run function entities:type/rot/init/face
execute positioned as @s rotated 0 -90 summon text_display run function entities:type/rot/init/face
execute positioned as @s rotated 0 90 summon text_display run function entities:type/rot/init/face
tag @s remove rot.awake_brain
