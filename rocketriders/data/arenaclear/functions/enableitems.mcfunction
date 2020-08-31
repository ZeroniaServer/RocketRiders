##Enables all item categories
tag @s[tag=!normalLocked] add rngNormal
execute as @s[tag=!normalLocked] run function arenaclear:enablenormal
tag @s[tag=!lightningLocked] add rngLightning
execute as @s[tag=!lightningLocked] run function arenaclear:enablelightning
tag @s[tag=!heavyLocked] add rngHeavy
execute as @s[tag=!heavyLocked] run function arenaclear:enableheavy
tag @s[tag=!utilLocked] add rngUtil
execute as @s[tag=!utilLocked] run function arenaclear:enableutil