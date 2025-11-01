# arguments: sin, cos

execute on vehicle run tag @s add vortex_arm.this
$execute on origin at @s[tag=!vortex.is_drifting] if dimension minecraft:overworld on vehicle positioned as @s rotated 0 -90 run tp @e[limit=1,x=0,tag=vortex_arm.this] ^$(sin) ^$(cos) ^-0.1 ~ ~
$execute on origin at @s[tag=vortex.is_drifting] if dimension minecraft:overworld on vehicle positioned as @s rotated as @s positioned ^$(sin) ^$(cos) ^ run tp @e[limit=1,x=0,tag=vortex_arm.this] ^$(sin) ^$(cos) ^-0.1 ~ ~
execute on vehicle run tag @s remove vortex_arm.this
