tag @e[type=armor_stand,tag=Selection] remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:lockdecos
execute unless entity @e[type=marker,tag=crusadeWall,limit=1] run summon marker 12.5 54.0 0.0 {Tags:["crusadeWall"]}
tag @e[type=armor_stand,tag=Selection] add noSabers
tag @e[type=armor_stand,tag=Selection] add portalDecosOff
tag @e[type=armor_stand,tag=Selection] add tyingOff
tag @e[type=armor_stand,tag=Selection] add HardcoreOff
tag @e[type=armor_stand,tag=Selection] add noPortal
tag @e[type=armor_stand,tag=Selection] add customPrevention
tag @e[type=armor_stand,tag=Selection] add featheredOff
tag @e[type=armor_stand,tag=Selection,tag=!doStacking] add stackingWasOff
tag @e[type=armor_stand,tag=Selection] add doStacking
tag @e[type=armor_stand,tag=Selection] add stackingOn
tag @e[type=armor_stand,tag=Selection] add customSaberMsg
tag @e[type=armor_stand,tag=Selection] add customArrowPickup
tag @e[type=armor_stand,tag=Selection] add crusadeEnabled