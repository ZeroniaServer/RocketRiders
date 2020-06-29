tag @e[tag=Selection] remove ctfEnabled
tag @e[tag=Selection] remove ResidersOff
tag @e[tag=Selection] remove customPrevention
tag @e[tag=Selection] add switchGamemodes
execute if entity @e[tag=ctfMiddle,limit=1] run kill @e[tag=ctfMiddle,limit=1]