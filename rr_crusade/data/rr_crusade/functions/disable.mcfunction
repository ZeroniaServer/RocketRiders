tag @e[type=armor_stand,tag=Selection] remove crusadeEnabled
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:unlockdecos
kill @e[tag=crusadeWall]
tag @e[type=armor_stand,tag=Selection] remove noSabers
tag @e[type=armor_stand,tag=Selection] remove portalDecosOff
tag @e[type=armor_stand,tag=Selection] remove tyingOff
tag @e[type=armor_stand,tag=Selection] remove HardcoreOff
tag @e[type=armor_stand,tag=Selection] remove noPortal
tag @e[type=armor_stand,tag=Selection] remove customPrevention
tag @e[type=armor_stand,tag=Selection] remove featheredOff
tag @e[type=armor_stand,tag=Selection] remove arrowLimit
tag @e[type=armor_stand,tag=Selection,tag=stackingWasOff] remove doStacking
tag @e[type=armor_stand,tag=Selection] remove stackingWasOff
tag @e[type=armor_stand,tag=Selection] remove stackingOn
tag @e[type=armor_stand,tag=Selection] remove customSaberMsg
tag @e[type=armor_stand,tag=Selection] remove customArrowPickup
tag @e[type=armor_stand,tag=Selection] remove MoleratOff
tag @e[type=armor_stand,tag=Selection,tag=MoleratWasOn] add Molerat
tag @e[type=armor_stand,tag=Selection,tag=MoleratWasOn] remove MoleratWasOn
tag @e[type=armor_stand,tag=Selection] remove SurpriseEggOff
tag @e[type=armor_stand,tag=Selection,tag=SurpriseEggWasOn] add SurpriseEgg
tag @e[type=armor_stand,tag=Selection] remove SurpriseEggWasOn
tag @e[type=armor_stand,tag=Selection] remove ICBMoverride
execute as @a run trigger crusadechange set 0
tag @e[type=armor_stand,tag=Selection] add switchGamemodes