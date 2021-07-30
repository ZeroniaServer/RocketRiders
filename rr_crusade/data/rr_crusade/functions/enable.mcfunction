tag @e[type=armor_stand,tag=Selection] remove switchGamemodes
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:lockdecos
tag @e[type=armor_stand,tag=Selection] add portalDecosOff
tag @e[type=armor_stand,tag=Selection] add tyingOff
tag @e[type=armor_stand,tag=Selection] add HardcoreOff
tag @e[type=armor_stand,tag=Selection] add noPortal
tag @e[type=armor_stand,tag=Selection] add customPrevention
tag @e[type=armor_stand,tag=Selection] add crusadeEnabled