tag @e[tag=Selection] remove powerupsEnabled
tag @e[tag=Selection] remove ResidersOff
tag @e[tag=Selection] remove customPrevention
tag @e[tag=Selection] add switchGamemodes
execute if entity @e[tag=captureMiddle,limit=1] run kill @e[tag=captureMiddle,limit=1]