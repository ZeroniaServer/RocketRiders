tag @e[tag=Selection,type=armor_stand] remove switchGamemodes
tag @e[tag=Selection,type=armor_stand] add ctfEnabled
tag @e[tag=Selection,type=armor_stand] add ResidersOff
tag @e[tag=Selection,type=armor_stand,tag=Residers] add ResidersWasOn
tag @e[tag=Selection,type=armor_stand] add HardcoreOff
tag @e[tag=Selection,type=armor_stand,tag=Hardcore] add HardcoreWasOn
# tag @e[tag=Selection,type=armor_stand,tag=!WindDown] add WindDownWasOff
# tag @e[tag=Selection,type=armor_stand] add WindDown
# tag @e[tag=Selection,type=armor_stand] add WindDownForce
# tag @e[tag=Selection,type=armor_stand,tag=Minute] add MinuteWasOn
tag @e[tag=Selection,type=armor_stand,tag=DoublePortal] add DoublePortalWasOn
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:unlockdecos
tag @e[tag=Selection,type=armor_stand] add tyingOff
tag @e[tag=Selection,type=armor_stand] add fbPortalsOff
tag @e[tag=Selection,type=armor_stand] add preventionOff
tag @e[tag=Selection,type=armor_stand] add preventionSoft
tag @e[tag=Selection,type=armor_stand] add portalDecosOff
tag @e[tag=Selection,type=armor_stand] add customSaberMsg
tag @e[tag=Selection,type=armor_stand] add noPortal
tag @e[tag=Selection,type=armor_stand] add canopyStack
tag @e[tag=Selection,type=armor_stand] add customPrevention
tag @e[tag=Selection,type=armor_stand] add customObsidian
tag @e[tag=Selection,type=armor_stand] add respawnFlag