##Enables all item categories
tag @s[tag=!normalLocked,tag=!normalWasOn] add rngNormal
execute as @s[tag=!normalLocked,tag=!normalWasOn] run function arenaclear:enablenormal
tag @s[tag=!lightningLocked,tag=!lightningWasOn] add rngLightning
execute as @s[tag=!lightningLocked,tag=!lightningWasOn] run function arenaclear:enablelightning
tag @s[tag=!heavyLocked,tag=!heavyWasOn] add rngHeavy
execute as @s[tag=!heavyLocked,tag=!heavyWasOn] run function arenaclear:enableheavy
tag @s[tag=!utilLocked,tag=!utilWasOn] add rngUtil
execute as @s[tag=!utilLocked,tag=!utilWasOn] run function arenaclear:enableutil