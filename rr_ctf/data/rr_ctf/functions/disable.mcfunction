tag @e[type=armor_stand,tag=Selection] remove ctfEnabled
tag @e[type=armor_stand,tag=Selection] remove ResidersOff
tag @e[type=armor_stand,tag=Selection,tag=ResidersWasOn] add Residers
tag @e[type=armor_stand,tag=Selection] remove ResidersWasOn
tag @e[type=armor_stand,tag=Selection] remove HardcoreOff
tag @e[type=armor_stand,tag=Selection,tag=HardcoreWasOn] add Hardcore
execute as @e[type=armor_stand,tag=Selection,tag=HardcoreWasOn] run function arenaclear:lockdecos
tag @e[type=armor_stand,tag=Selection] remove HardcoreWasOn
tag @e[type=armor_stand,tag=Selection,tag=DoublePortalWasOn] add DoublePortal
tag @e[type=armor_stand,tag=Selection] remove DoublePortalWasOn
# tag @e[type=armor_stand,tag=Selection,tag=WindDownWasOff] remove WindDown
# tag @e[type=armor_stand,tag=Selection] remove WindDownWasOff
# tag @e[type=armor_stand,tag=Selection] remove WindDownForce
# tag @e[type=armor_stand,tag=Selection,tag=MinuteWasOn] add Minute
# tag @e[type=armor_stand,tag=Selection] remove MinuteWasOn
tag @e[type=armor_stand,tag=Selection] remove tyingOff
tag @e[type=armor_stand,tag=Selection] remove fbPortalsOff
tag @e[type=armor_stand,tag=Selection] remove preventionOff
tag @e[type=armor_stand,tag=Selection] remove preventionSoft
tag @e[type=armor_stand,tag=Selection] remove portalDecosOff
tag @e[type=armor_stand,tag=Selection,tag=arrowsWasOn] add rngArrows
tag @e[type=armor_stand,tag=Selection] remove arrowsWasOn
tag @e[type=armor_stand,tag=Selection,tag=canopyWasOff] remove rngCanopy
tag @e[type=armor_stand,tag=Selection] remove canopyWasOff
tag @e[type=armor_stand,tag=Selection,tag=fireballWasOff] remove rngFireball
tag @e[type=armor_stand,tag=Selection] remove fireballWasOff
tag @e[type=armor_stand,tag=Selection,tag=utilWasOff] remove rngUtil
tag @e[type=armor_stand,tag=Selection] remove utilWasOff
tag @e[type=armor_stand,tag=Selection] remove customSaberMsg
tag @e[type=armor_stand,tag=Selection] remove noPortal
tag @e[type=armor_stand,tag=Selection] remove canopyStack
tag @e[type=armor_stand,tag=Selection] remove respawnFlag
tag @e[type=armor_stand,tag=Selection] remove customPrevention
tag @e[type=armor_stand,tag=Selection] remove customObsidian
tag @e[type=armor_stand,tag=Selection] add switchGamemodes