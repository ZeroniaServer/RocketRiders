tag @s add rngNormal
execute as @s[tag=!rngToma,tag=!rngBlade,tag=!rngAnt,tag=!rngCata,tag=!rngLift,tag=!rngSlash,tag=!rngNull,tag=!rngEguard,tag=!rngCitadel,tag=!rngGemi] run function arenaclear:enablenormal
tag @s add rngLightning
execute as @s[tag=!rngHur,tag=!rngThun] run function arenaclear:enablelightning
tag @s add rngHeavy
execute as @s[tag=!rngWar,tag=!rngJbuster,tag=!rngAux,tag=!rngRift] run function arenaclear:enableheavy